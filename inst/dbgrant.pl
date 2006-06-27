#!/usr/bin/perl -w

=head1 NAME

db.pl - installation script to launch the apropriate database user rights granting script

=head1 VERSION

$LastChangedRevision$

=head1 DATE

$LastChangedDate: 2006-06-22 05:00:21 +0300 (Thu, 22 Jun 2006) $

=head1 DESCRIPTION

This script is called during C<make install> to grant the Bricolage user
acces rights.

=head1 AUTHOR

Sam Tregar <stregar@about-inc.com>

=head1 SEE ALSO

L<Bric::Admin>

=cut

use strict;
use FindBin;
use lib "$FindBin::Bin/lib";
use Bric::Inst qw(:all);
use File::Spec::Functions qw(:ALL);
use File::Find qw(find);

our ($DB, $DBCONF);

print "\n\n==> Granting access rights to the Bricolage user <==\n\n";

$DBCONF = './database.db';
do $DBCONF or die "Failed to read $DBCONF : $!";

my $instdb;
$instdb = "./inst/dbgrant_$DB->{db}.pl";
do $instdb or die "Failed to launch $DB->{db} access granting script ($instdb)$!";    

exit 0;


