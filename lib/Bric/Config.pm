package Bric::Config;
################################################################################

=head1 NAME

Bric::Config - A class to hold configuration settings.

=head1 VERSION

$Revision: 1.33 $

=cut

our $VERSION = (qw$Revision: 1.33 $ )[-1];

=head1 DATE

$Date: 2002-02-19 23:53:38 $

=head1 SYNOPSIS

  # import all configuration constants
  use Bric::Config qw(:all);

  if (CONFIG_VARIABLE) { ... }

=head1 DESCRIPTION

Provides access to configuration variables set in conf/bricolage.conf.
See L<Bric::Admin|Bric::Admin> for the list of configuration variables
and their use.

=cut

#==============================================================================#
# Dependencies                         #
#======================================#

#--------------------------------------#
# Standard Dependencies
use strict;
use File::Spec::Functions qw(catdir);
use Apache::ConfigFile;

#--------------------------------------#
# Programatic Dependencies

#==============================================================================#
# Inheritance                          #
#======================================#

use base qw(Exporter);

our @EXPORT_OK = qw(DBD_PACKAGE
		    DBD_TYPE
		    DSN_STRING
		    DBI_USER
		    DBI_PASS
		    DBI_DEBUG
		    DBI_CALL_TRACE
		    MASON_COMP_ROOT
		    MASON_DATA_ROOT
		    MASON_ARGS_METHOD
		    FIELD_INDENT
		    SYS_USER
		    SYS_GROUP
		    SERVER_WINDOW_NAME
		    APACHE_BIN
		    APACHE_CONF
		    PID_FILE
                    LISTEN_PORT
		    NAME_VHOST
		    VHOST_SERVER_NAME
                    SSL_ENABLE
		    CHAR_SET
		    AUTH_TTL
		    AUTH_SECRET
		    QA_MODE
		    ADMIN_GRP_ID
		    PASSWD_LENGTH
		    LOGIN_LENGTH
		    ERROR_URI
		    ENABLE_DIST
		    DIST_ATTEMPTS
                    MEDIA_URI_ROOT
                    DEF_MEDIA_TYPE
		    MEDIA_FILE_ROOT
		    SMTP_SERVER
		    ALERT_FROM
		    ALERT_TO_METH
		    BURN_ROOT
		    STAGE_ROOT
		    PREVIEW_ROOT
		    BURN_COMP_ROOT
		    BURN_DATA_ROOT
		    BURN_ARGS_METHOD
                    TEMPLATE_BURN_PKG
		    INCLUDE_XML_WRITER
		    XML_WRITER_ARGS
		    ISO_8601_FORMAT
		    PREVIEW_LOCAL
		    PREVIEW_MASON
                    FULL_SEARCH
                    DEFAULT_FILENAME
                    DEFAULT_FILE_EXT
                    ENABLE_FTP_SERVER
                    FTP_PORT
                    FTP_ADDRESS
                    FTP_LOG
                    FTP_DEBUG
		   );

our %EXPORT_TAGS = (all       => \@EXPORT_OK,
		    dbi       => [qw(DBD_PACKAGE
				     DBD_TYPE
				     DSN_STRING
				     DBI_USER
				     DBI_PASS
				     DBI_DEBUG
				     DBI_CALL_TRACE)],
		    mason     => [qw(MASON_COMP_ROOT
				     MASON_DATA_ROOT
				     MASON_ARGS_METHOD)],
		    burn      => [qw(BURN_ROOT
				     STAGE_ROOT
				     PREVIEW_ROOT
				     BURN_COMP_ROOT
				     BURN_DATA_ROOT
				     TEMPLATE_BURN_PKG
				     DEFAULT_FILENAME
				     INCLUDE_XML_WRITER
				     XML_WRITER_ARGS
				     DEFAULT_FILE_EXT
				     BURN_ARGS_METHOD)],
                    oc        => [qw(DEFAULT_FILENAME
				     DEFAULT_FILE_EXT)],
		    sys_user  => [qw(SYS_USER
				     SYS_GROUP)],
		    auth      => [qw(AUTH_TTL
				     AUTH_SECRET)],
		    auth_len  => [qw(PASSWD_LENGTH
				     LOGIN_LENGTH)],
		    prev      => [qw(PREVIEW_LOCAL
				     STAGE_ROOT
				     PREVIEW_ROOT
				     MASON_COMP_ROOT
				     PREVIEW_MASON)],
		    dist      => [qw(ENABLE_DIST
				     DEF_MEDIA_TYPE
				     DIST_ATTEMPTS
				     PREVIEW_LOCAL)],
		    qa        => [qw(QA_MODE)],
		    err       => [qw(ERROR_URI)],
		    char      => [qw(CHAR_SET)],
		    ui        => [qw(FIELD_INDENT
				     SERVER_WINDOW_NAME)],
		    email     => [qw(SMTP_SERVER)],
		    admin     => [qw(ADMIN_GRP_ID)],
		    time      => [qw(ISO_8601_FORMAT)],
		    alert     => [qw(ALERT_FROM
				     ALERT_TO_METH)],
		    apachectl => [qw(APACHE_BIN
				     APACHE_CONF
				     PID_FILE
				     SSL_ENABLE)],
		    ssl       => [qw(SSL_ENABLE
				     LISTEN_PORT)],
		    conf      => [qw(SSL_ENABLE
				     LISTEN_PORT
				     ENABLE_DIST
				     NAME_VHOST
				     VHOST_SERVER_NAME
				     MASON_COMP_ROOT
				     PREVIEW_LOCAL
				     PREVIEW_MASON)],
		    media     => [qw(MEDIA_URI_ROOT
				     MEDIA_FILE_ROOT)],
                    search    => [qw(FULL_SEARCH)],
                    ftp       => [qw(ENABLE_FTP_SERVER
				     FTP_PORT
				     FTP_ADDRESS
				     FTP_LOG
				     FTP_DEBUG)],
		   );

#=============================================================================#
# Function Prototypes                  #
#======================================#

#==============================================================================#
# Constants                            #
#======================================#
{
    # We'll store the settings loaded from the configuration file here.
    my ($config, $aconf);

    BEGIN {
	# Load the configuration file, if it exists.
	my $conf_file = $ENV{BRICOLAGE_ROOT} || '/usr/local/bricolage';
	$conf_file = catdir($conf_file, 'conf', 'bricolage.conf');
	if (-e $conf_file) {
	    open CONF, $conf_file or die "Cannot open $conf_file: $!\n";
	    while (<CONF>) {
		# Get each configuration line into $conifig.
		chomp;                  # no newline
		s/#.*//;                # no comments
		s/^\s+//;               # no leading white
		s/\s+$//;               # no trailing white
		next unless length;     # anything left?
		my ($var, $value) = split(/\s*=\s*/, $_, 2);
		$config->{uc $var} = $value;
	    }
	    close CONF;

	    # Set the default VHOST_SERVER_NAME.
	    $config->{VHOST_SERVER_NAME} ||= '_default_';

	    # Set up the server window name (because Netscape is retarted!).
	    ($config->{SERVER_WINDOW_NAME} =
	     $config->{VHOST_SERVER_NAME} || '_default_') =~ s/\W+/_/g;

	}
	# Process boolean directives here. These default to 1.
	foreach (qw(ENABLE_DIST PREVIEW_LOCAL PREVIEW_MASON)) {
	    my $d = exists $config->{$_} ? lc($config->{$_}) : '1';
	    $config->{$_} = $d eq 'on' || $d eq 'yes' || $d eq '1' ? 1 : 0;
	}
	# While these default to 0.
	foreach (qw(PREVIEW_MASON FULL_SEARCH INCLUDE_XML_WRITER SSL_ENABLE)) {
	    my $d = exists $config->{$_} ? lc($config->{$_}) : '0';
	    $config->{$_} = $d eq 'on' || $d eq 'yes' || $d eq '1' ? 1 : 0;
	}

	# Set the Mason component root to its default here.
	$config->{MASON_COMP_ROOT} ||=
	  catdir($ENV{BRICOLAGE_ROOT} || '/usr/local/bricolage', 'comp');

	# Grab the Apache configuration file.
	$config->{APACHE_CONF} ||= '/usr/local/apache/conf/httpd.conf';
	$aconf = Apache::ConfigFile->new(file => $config->{APACHE_CONF},
					 ignore_case => 1);
    }

    # Apache Settings.
    use constant SERVER_WINDOW_NAME      => $config->{SERVER_WINDOW_NAME};

    use constant APACHE_BIN              => $config->{APACHE_BIN}
      || '/usr/local/apache/bin/httpd';
    use constant APACHE_CONF             => $config->{APACHE_CONF};

    use constant PID_FILE                => $aconf->pidfile
      || '/usr/local/apache/logs/httpd.pid';

    use constant LISTEN_PORT             => $config->{LISTEN_PORT} || 80;
    use constant NAME_VHOST              => $config->{NAME_VHOST} || '*';
    use constant VHOST_SERVER_NAME       => $config->{VHOST_SERVER_NAME};

    # mod_ssl Setting.
    use constant SSL_ENABLE              => $config->{SSL_ENABLE};
    die "LISTEN_PORT directive must be set to 80 when SSL_ENABLE is on\n"
      if SSL_ENABLE && LISTEN_PORT != 80;

    # DBI Settings.
    use constant DBD_PACKAGE             => 'Bric::Util::DBD::Pg';
    use constant DBD_TYPE                => 'Pg';
    use constant DB_NAME                 => $config->{DB_NAME} || 'sharky';
    use constant DSN_STRING              => 'dbname=' . DB_NAME;
    use constant DBI_USER                => $config->{DBI_USER} || 'castellan';
    use constant DBI_PASS                => $config->{DBI_PASS} || 'nalletsac';
    use constant DBI_DEBUG               => $config->{DBI_DEBUG} || 0;
    use constant DBI_CALL_TRACE          => $config->{DBI_CALL_TRACE} || 0;

    # Distribution Settings.
    use constant ENABLE_DIST => $config->{ENABLE_DIST};
    use constant DIST_ATTEMPTS => $config->{DIST_ATTEMPTS} || 3;
    use constant PREVIEW_LOCAL => $config->{PREVIEW_LOCAL} ? qw(data preview) : 0;
    use constant PREVIEW_MASON => $config->{PREVIEW_MASON};
    use constant DEF_MEDIA_TYPE => $config->{DEF_MEDIA_TYPE} || 'text/html';

    # Mason settings.
    use constant MASON_COMP_ROOT         => PREVIEW_LOCAL && PREVIEW_MASON ?
      [[bric_ui => $config->{MASON_COMP_ROOT}],
       [bric_preview => catdir($config->{MASON_COMP_ROOT}, PREVIEW_LOCAL)]]
	: [[bric_ui => $config->{MASON_COMP_ROOT}]];

    use constant MASON_DATA_ROOT         => $config->{MASON_DATA_ROOT}
      || catdir($ENV{BRICOLAGE_ROOT} || '/usr/local/bricolage', 'data');
    use constant MASON_ARGS_METHOD       => 'mod_perl';  # Could also be 'CGI'

    # Burner settings.
    use constant BURN_ROOT               => $config->{BURN_ROOT}
      || catdir(MASON_DATA_ROOT, 'burn');
    use constant STAGE_ROOT              => catdir(BURN_ROOT, 'stage');
    use constant PREVIEW_ROOT            => catdir(BURN_ROOT, 'preview');
    use constant BURN_COMP_ROOT          => catdir(BURN_ROOT, 'comp');
    use constant BURN_DATA_ROOT          => catdir(BURN_ROOT, 'data');
    use constant BURN_ARGS_METHOD        => MASON_ARGS_METHOD;
    use constant TEMPLATE_BURN_PKG       => 'Bric::Util::Burner::Commands';
    use constant INCLUDE_XML_WRITER      => $config->{INCLUDE_XML_WRITER};
    use constant XML_WRITER_ARGS         => $config->{XML_WRITER_ARGS} ?
      (eval "$config->{XML_WRITER_ARGS}" ) : ();

    # System User (The user and group under which the server children run). use
    use constant SYS_USER => scalar getpwnam $config->{SYS_USER} || "nobody";
    use constant SYS_GROUP => scalar getgrnam $config->{SYS_GROUP} || "nobody";

    # Cookie/Session Settings.
    # AUTH_TTL is in seconds.
    use constant AUTH_TTL                => $config->{AUTH_TTL} || 8 * 60 * 60;
    use constant AUTH_SECRET             => $config->{AUTH_SECRET}
      || '^eFH;5D,~3!f9o&3f_=dwePL3f:/.Oi|FG/3sd9=45oi%8GF;*)4#0gn3)34tf\`3~'
         . 'fdIf^ N;:';

    # QA Mode settings.
    use constant QA_MODE                 => $config->{QA_MODE} || 0;

    # Character translation settings.
    use constant CHAR_SET                => $config->{CHAR_SET} || 'ISO-8859-1';

    # Time constants.
    use constant ISO_8601_FORMAT         => "%G-%m-%d %T";

    # Admin group ID. This will go away once permissions are implemented.
    use constant ADMIN_GRP_ID            => 6;

    # the base directory that will store media assets
    use constant MEDIA_URI_ROOT => '/data/media';
    use constant MEDIA_FILE_ROOT => catdir(MASON_COMP_ROOT->[0][1],
					   'data', 'media');

    # The minimum login name and password lengths users can enter.
    use constant LOGIN_LENGTH            => $config->{LOGIN_LENGTH} || 6;
    use constant PASSWD_LENGTH           => $config->{PASSWD_LENGTH} || 6;

    # Error Page Setting.
    use constant ERROR_URI => QA_MODE ? '/errors/error.html' : '/errors/500.mc';

    # Email Settings.
    use constant SMTP_SERVER => $config->{SMTP_SERVER}
      || $config->{VHOST_SERVER_NAME};

    # Alert Settings.
    use constant ALERT_FROM => $config->{ALERT_FROM};
    use constant ALERT_TO_METH => lc $config->{ALERT_TO_METH} || 'bcc';

    # UI Settings.
    use constant FIELD_INDENT => 125;

    # Search Settings
    use constant FULL_SEARCH => => $config->{FULL_SEARCH};

    # FTP Settings
    use constant ENABLE_FTP_SERVER => $config->{ENABLE_FTP_SERVER} || 0;
    use constant FTP_ADDRESS       => $config->{FTP_ADDRESS}       || "";
    use constant FTP_PORT          => $config->{FTP_PORT}          || 2121;
    use constant FTP_DEBUG         => $config->{FTP_DEBUG}         || 0;
    use constant FTP_LOG           => $config->{FTP_LOG}           ||
      catdir($ENV{BRICOLAGE_ROOT} || '/usr/local/bricolage', 'ftp.log');

    # Output Channel Settings.
    use constant DEFAULT_FILENAME => => $config->{DEFAULT_FILENAME} || 'index';
    use constant DEFAULT_FILE_EXT => => $config->{DEFAULT_FILE_EXT} || 'html';

    # Okay, now load the end-user's code, if any.
    if ($config->{PERL_LOADER}) {
	my $pkg = TEMPLATE_BURN_PKG;
	eval "package $pkg; $config->{PERL_LOADER}";
    }
}

#==============================================================================#
# FIELDS                               #
#======================================#

#--------------------------------------#
# Public Class Fields

#--------------------------------------#
# Private Class Fields

#--------------------------------------#
# Instance Fields

#==============================================================================#

=head1 INTERFACE

=head2 Constructors

NONE

=over 4

=cut

#--------------------------------------#
# Constructors

#--------------------------------------#

=head2 Public Class Methods

NONE

=cut

#--------------------------------------#

=head2 Public Instance Methods

NONE

=cut

#==============================================================================#

=head2 Private Methods

NONE

=cut

#--------------------------------------#

=head2 Private Class Methods

NONE

=cut

#--------------------------------------#

=head2 Private Instance Methods

NONE

=cut


1;
__END__

=back

=head1 NOTES

NONE

=head1 AUTHOR

Garth Webb  E<lt>garth@perijove.comE<gt>

David Wheeler E<lt>david@wheeler.netE<gt>

=head1 SEE ALSO

L<Bric::Admin>

=cut
