package Bric::Util::Language::zh_tw;

# $Id$

=encoding utf8

=head1 NAME

Bric::Util::Language::zh_tw - Bricolage 正體中文翻譯

=cut

require Bric; our $VERSION = Bric->VERSION;

=head1 SYNOPSIS

In F<bricolage.conf>:

  LANGUAGE = zh_tw

=head1 DESCRIPTION

Bricolage 正體中文翻譯.

=cut

use strict;
use utf8;
use base qw(Bric::Util::Language);

use constant key => 'zh_tw';

our %Lexicon =
    (
     # Date
     'Jan' => '一月' ,
     'Feb' => '二月' ,
     'Mar' => '三月' ,
     'Apr' => '四月' ,
     'May' => '五月' ,
     'Jun' => '六月' ,
     'Jul' => '七月' ,
     'Aug' => '八月' ,
     'Sep' => '九月' ,
     'Oct' => '十月' ,
     'Nov' => '十一月' ,
     'Dec' => '十二月' ,
     'Day' => '日' ,
     'Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec' => '一月 二月 三月 四月 五月 六月 七月 八月 九月 十月 十一月 十二月' ,
     'Month' => '月' ,

     # Time
     'Date' => '日期' ,
     'Hour' => '時' ,
     'Minute' => '分' ,
     'Second' => '秒' ,

     # Expiries
     '1 Day' => '一天' ,
     '3 Days' => '三天' ,
     '5 Days' => '五天' ,
     '10 Days' => '十天' ,
     '15 Days' => '十五天' ,
     '20 Days' => '二十天' ,
     '30 Days' => '三十天' ,
     '45 Days' => '四十五天' ,
     '90 Days' => '九十天' ,
     '180 Days' => '一百八十天' ,
     '1 Year' => '一年' ,

     # Priotity
     'High' => '最高' ,
     'Low' => '最低' ,
     'Medium High' => '較高' ,
     'Medium Low' => '較低 ' ,
     'Normal'  => '正常',

     # Areas
     'Alert Type Manager' => '警告類型管理員' ,
     'Category Manager' => '分類管理員' ,
     'Contributor Type Manager ' => '供稿者類型管理員' ,
     'Current Output Channels' => '目前採用的輸出頻道員' ,
     'Destination Manager' => '發佈目標管理員' ,
     'Element Manager' => '元素管理員' ,
     'Element Type Manager' => '元素類型管理員' ,
     'Group Manager' => '群組管理員' ,
     'Job Manager' => '工作管理員' ,
     'Manager' => '管理員' ,
     'Media Gallery' => '媒體藝廊' ,
     'Media Type Manager' => '媒體類型管理員' ,
     'Preference Manager ' => '偏好管理員' ,
     'Source Manager ' => '來源管理員' ,
     'Source Manager' => '來源管理員' ,
     'User Manager' => '使用者管理員' ,
     'Workflow Manager ' => '流程管理員' ,
     'Workflow Manager' => '流程管理員' ,
     'Workspace for [_1]' => '[_1] 的工作區' ,

     # Interface Objects
     'Checkbox' => '核選框' ,
     'Columns' => '直欄' ,
     'Custom Fields' => '自訂欄位' ,
     'Page' => '頁' ,
     'Pulldown' => '摺疊式' ,
     'Radio Buttons' => '多選一選項' ,
     'Rows' => '橫列' ,
     'Size' => '大小' ,
     'Template' => '模板' ,
     'Text Area' => '文字區域' ,
     'Workflows' => '流程' ,
     'Workflow' => '流程' ,
     '[_1] Field Text' => '[_1] 欄位文字' ,

     # General Information
     '&quot;Story&quot;' => '&quot;稿件&quot;' ,
     '&quot;Template&quot;' => '&quot;模板&quot;' ,
     'ADMIN' => '管理' ,
     'ADVANCED SEARCH' => '進階搜尋' ,
     'Actions' => '行動' ,
     'Active' => '起用' ,
     'Active Media' => '編修中的媒體' ,
     'Active Stories' => '編修中的稿件' ,
     'Active Templates' => '編修中的模板' ,
     'Ad String' => '廣告字串' ,
     'Ad String 2' => '廣告字串 2' ,
     'Ad Strings' => '廣告字串' ,
     'Admin' => '管理' ,
     'Advanced Search' => '進階搜尋' ,
     'Alert Types' => '警告類型' ,
     'All' => '所有的' ,
     'All Contributors' => '所有的供稿者' ,
     'All Elements' => '所有的元素' ,
     'All Groups' => '所有的群組' ,
     'All Categories' => '所有分類' ,
     'Available Groups' => '可用的群組' ,
     'Available Output Channels' => '可用的輸出頻道' ,
     'Bricolage' => 'Bricolage' ,
     'By Last' => '依照姓氏' ,
     'By Source name' => '按照來源名稱' ,
     'CONTACTS' => '聯絡人' ,
     'Caption' => '標題' ,
     'Categories' => '分類' ,
     'Category' => '分類' ,
     'Category Assets' => '分類資產' ,
     'Category Profile' => '分類檔案' ,
     'Category tree' => '分類樹' ,
     'Characters' => '字元' ,
     'Choose Site' => '選取站台' ,
     'Contacts' => '聯絡人' ,
     'Content' => '內容' ,
     'Content Type' => '內容類型' ,
     'Contributor Roles' => '供稿者角色' ,
     'Contributor Type' => '供稿者類型' ,
     'Contributor Type Profile' => '供稿者類型設定' ,
     'Contributor Types' => '供稿者類型' ,
     'Contributors' => '供稿者' ,
     'Cookie' => 'Cookie' ,
     'Copy' => '複製' ,
     'Cover Date' => '見報日期' ,
     'Current Groups' => '目前的群組' ,
     'Current Note' => '目前的注意事項' ,
     'Current Version' => '目前版本' ,
     'Currently Related Story' => '目前相關的稿件' ,
     'DISTRIBUTION' => '散佈' ,
     'Field Elements' => '資料元素' ,
     'Default Value' => '預設值' ,
     'Deployed Date' => '佈署的日期' ,
     'Description' => '描述' ,
     'Desk Permissions' => '桌面權限' ,
     'Desks' => '桌面' ,
     'Destinations' => '發佈目標' ,
     'Directory' => '目錄' ,
     'Display Name' => '顯示名稱' ,
     'Domain Name' => '網與名稱' ,
     'Element' => '元素' ,
     'Element Profile' => '元素設定' ,
     'Element Type' => '元素類型' ,
     'Element Type Profile' => '元素類型設定' ,
     'Element Types' => '元素類型' ,
     'Elements' => '元素' ,
     'Error' => '錯誤' ,
     'Event Type' => '事件類型' ,
     'Events' => '事件' ,
     'Existing %n' => '%n 已經存在' ,
     'EXISTING CATEGORIES' => '已有的分類' ,
     'EXISTING DESTINATIONS' => '已有的目標' ,
     'EXISTING ELEMENT TYPES' => '已有的元素類型' ,
     'EXISTING ELEMENTS' => '已有的元素' ,
     'EXISTING MEDIA TYPES' => '已有的媒體類型' ,
     'EXISTING OUTPUT CHANNELS' => '已有的輸出頻道' ,
     'EXISTING SOURCES' => '已有的來源' ,
     'EXISTING USERS' => '已有的使用者' ,
     'Expiration' => '期限' ,
     'Expire Date' => '到期日' ,
     'Extension' => '副檔名' ,
     'Extensions' => '副檔名' ,
     'Fields' => '欄' ,
     'File Name' => '檔案名稱' ,
     'File Path' => '檔案路徑' ,
     'File Type' => '檔案類型' ,
     'First' => '名' ,
     'First Name' => '名' ,
     'First Published' => '第一個發佈的' ,
     'Fixed' => '固定的' ,
     'Generic' => '通用的' ,
     'Group Type' => '群組類型' ,
     'Groups' => '群組' ,
     'HTML::Template' => 'HTML::Template' ,
     'ID' => 'ID' ,
     'Information' => '資訊' ,
     'Jobs' => '工作' ,
     'Key Name' => '識別名稱' ,
     'Label' => '標記' ,
     'Last' => '姓' ,
     'Last Name' => '姓' ,
     'Legal' => 'Legal' ,
     'Log' => '紀錄' ,
     'Login ' => '登入' ,
     'Login and Password' => '登入帳號與密碼' ,
     'MIME Type' => 'MIME Type' ,
     'Mason' => 'Mason' ,
     'Max size' => '最大尺寸' ,
     'Maximum size' => '最大尺寸' ,
     'MEDIA' => '媒體 ' ,
     'Media' => '媒體' ,
     'Media Profile' => '媒體設定' ,
     'Media Type' => '媒體類型' ,
     'Media Type Element' => '媒體類型元素' ,
     'Media Type Profile' => '媒體類型設定' ,
     'Media Types' => '媒體類型' ,
     'Member Type  ' => '成員類型' ,
     'Members' => '成員' ,
     'My Alerts' => '我的警告' ,
     'MY WORKSPACE' => '我的工作區' ,
     'My Workspace' => '我的工作區' ,
     'NAME' => '名稱' ,
     'Name' => '名稱' ,
     'Never' => '永不' ,
     'New' => '新的' ,
     'New Role Name' => '新角色名稱' ,
     'New password' => '新密碼' ,
     'No' => '否' ,
     'No custom fields defined.' => '沒有定義自定欄位' ,
     'Normal' => '正常' ,
     'Note' => '注意事項' ,
     'Note saved.' => '注意事項已儲存.' ,
     'Notes' => '注意事項' ,
     'OS' => '作業系統' ,
     'Old password' => '舊密碼' ,
     'Option, Label' => '選項，標記' ,
     'Options, Label' => '選項、標記' ,
     'Order' => '順序' ,
     'Organization' => '組織' ,
     'Output Channel' => '輸出頻道' ,
     'Output Channels' => '輸出頻道' ,
     'Owner' => '所有人' ,
     'PREFERENCES' => '偏好設定' ,
     'PROPERTIES' => '特性' ,
     'PUBLISHING' => '出版' ,
     'Parent Category' => '父分類' ,
     'Password' => '密碼' ,
     'Pending ' => '待辦' ,
     'Pending %n' => 'Pending %n' ,
     'Position' => '位置' ,
     'Post' => '字號' ,
     'Pre' => '稱謂' ,
     'Preferences' => '偏好設定' ,
     'Prefix' => 'Prefix' ,
     'Previews' => '預覽' ,
     'Primary Category' => '主要的分類' ,
     'Primary Output Channel' => '主要的輸出頻道' ,
     'Priority' => '優先權' ,
     'Profile' => '設定' ,
     'Properties' => '特性' ,
     'Publish Date' => '出版日期' ,
     'Publish Desk' => '出版桌面' ,
     'Publishes' => '出版品' ,
     'Recipients' => '收件者' ,
     'Related Media' => '相關的媒體' ,
     'Related Story' => '相關的稿件' ,
     'Repeatable' => '可重複的' ,
     'Required' => '必要的' ,
     'Resources' => '資源' ,
     'Role' => '角色' ,
     'Roles' => '角色' ,
     'STORIES' => '稿件' ,
     'SYSTEM' => '系統' ,
     'Separator String' => '分隔字串' ,
     'Simple Search' => '簡易搜尋' ,
     'Site Profile' => '站台設定' ,
     'Sites' => '站台' ,
     'Site' => '站台' ,
     'Slug' => '短標題' ,
     'Source' => '來源' ,
     'Source Profile' => '來源設定' ,
     'Source name' => '來源名稱' ,
     'Sources' => '來源' ,
     'Start Desk' => '開始桌面' ,
     'Statistics' => '統計' ,
     'STORY' => '稿件' ,
     'Story' => '稿件' ,
     'Story Type' => '稿件類型' ,
     'Story Type Element' => '稿件類型' ,
     'Subelements' => '子元素' ,
     'Teaser' => 'Teaser' ,
     'TEMPLATE' => '樣板' ,
     'Template Name' => '模板名稱' ,
     'Template Type' => '模板類型' ,
     'Text box' => '文字方塊' ,
     'Title' => '標題' ,
     'Trail' => '更改紀錄' ,
     'Type' => '類型' ,
     'URI' => 'URI' ,
     'URL' => 'URL' ,
     'Username' => '使用者名稱' ,
     'Users' => '使用者' ,
     'Value Name' => '值' ,
     'Version' => '版本' ,
     'Welcome to Bricolage.' => '歡迎使用 Bricolage' ,
     'Welcome to [_1].' => '歡迎使用 [_1].' ,
     'Words' => '字' ,
     'Workflow Permissions' => '流程權限' ,
     'Year' => '年' ,
     'Yes' => '是' ,
     'all' => '全部' ,
     'one per line' => '一行一個' ,
     'to' => '到' ,

     # Action Commands
     'Associate' => '關聯' ,
     'Add New Field' => '新增一個欄位' ,
     'Add a New Alert Type' => '新增警告類型' ,
     'Add a New Category' => '新增分類' ,
     'Add a New Contributor' => '新增供稿者' ,
     'Add a New Contributor Type' => '新增供稿者類型' ,
     'Add a New Desk' => '新增桌面' ,
     'Add a New Destination' => '新增目標' ,
     'Add a New Element Type' => '新增元素類型' ,
     'Add a New Element' => '新增元素' ,
     'Add a New Group' => '新增群組' ,
     'Add a New Media Type' => '新增媒體類型' ,
     'Add a New Output Channel' => '新增輸出頻道' ,
     'Add a New Source' => '新增來源' ,
     'Add a New Workflow' => '新增流程' ,
     'Add a New Keyword' => '新增關鍵字' ,
     'Add a New User' => '新增使用者' ,
     'Add to Element' => '加入到元素' ,
     'Add to Include' => '將這些包含在內' ,
     'Add' => '新增' ,
     'Allow multiple' => '允許多選' ,
     'Burner' => 'Burner' ,
     'Check In Assets' => '送回資產' ,
     'Check In to Edit' => '送回給編輯' ,
     'Check In to Publish' => '送回至 Publish' ,
     'Check In to' => '送回到' ,
     'Check In' => '送回' ,
     'Checkin' => '送回' ,
     'Check Out' => '取出' ,
     'Checkout' => '取出' ,
     'Choose Contributors' => '選取供稿者' ,
     'Choose Related Media' => '選擇相關的媒體' ,
     'Choose Subelements' => '選擇子元素' ,
     'Create a New Category' => '建立新的分類' ,
     'Create a New Media' => '建立一個新的媒體' ,
     'Create a New Story' => '建立一份新的稿件' ,
     'Create a New Template' => '建立新模板' ,
     'Delete this Desk from all Workflows' => '自所有流程中刪除此桌面' ,
     'Delete this Element' => '刪除這個元素' ,
     'Delete this Profile' => '刪除這個設定' ,
     'Delete' => '刪除' ,
     'Deploy' => '佈署' ,
     'Download' => '下載' ,
     'Edit' => '編輯' ,
     'Expire' => '到期' ,
     'Find Media' => '搜尋媒體' ,
     'Find Stories' => '搜尋稿件' ,
     'Find Templates' => '搜尋模板' ,
     'Manage' => '管理' ,
     'Move Assets' => '移動資產' ,
     'Move to' => '移到' ,
     'New Media ' => '新的媒體 ' ,
     'New Media' => '新的媒體' ,
     'New Story' => '新的稿件' ,
     'New Template' => '新的樣板' ,
     'Preview in' => '預覽' ,
     'Publish' => '出版' ,
     'Relate' => '加入關係' ,
     'Remove' => '移除' ,
     'Repeat new password' => '新密碼確認' ,
     'SEARCH' => '尋找' ,
     'SUBMIT' => '送出' ,
     'Scheduler' => '排程' ,
     'Select Desk' => '選一個桌面' ,
     'Select Role' => '選擇角色' ,
     'Select an Event Type' => '選擇一個事件類型' ,
     'Select' => '選擇' ,
     'Sort By' => '排序方式' ,
     'Submit' => 'Submit' ,
     'Switch Roles' => '變換角色' ,
     'Template Profile' => '模板設定' ,
     'Template Code' => '模板 Code' ,
     'Un-Associate' => '解除關聯' ,
     'Upload a file' => '上傳檔案' ,
     'User Override' => '使用其他身分登入' ,
     'View' => '查看' ,
     'Workflow Profile' => 'Workflow Profile' ,
     'Grant "[_1]" members permission to access assets in these categories.' => '允許 [_1] 成員權限得以存取這些分類裡面的資產。' ,
     'Grant "[_1]" members permission to access assets in these workflows.' => '允許 [_1] 成員權限能夠存取這些流程裡面的資產。' ,
     'Grant "[_1]" members permission to access assets on these desks.' => '允許 [_1] 成員權限得以存取這些桌面的資產。' ,
     'Grant "[_1]" members permission to access the members of these groups.' => '允許 [_1] 成員之權限得以存取這些群組裡面之成員' ,
     'Grant the members of the following groups permission to access the members of the "[_1]" group.' => '允許以下群組的成員得以存取 [_1] 群組的成員。' ,
     '' => '' ,

     # System reply messages
     '"[_1]" Elements saved.' => '[_1] 元素已被儲存。' ,
     '%n Found' => '找到的%n' ,
     '404 NOT FOUND' => '404 網頁找不到' ,
     'A site with the [_1] "[_2]" already exists' => '[_1]「[_2]」 已經存在於某個站台中了' ,
     'Action profile "[_1]" deleted.' => '行動設定「[_1]」已刪除' ,
     'Action profile "[_1]" saved.' => '行動設定「[_1]」已儲存' ,
     'Add a New Action' => '新增行動設定' ,
     'Add a New Server' => '新增伺服器' ,
     'Alert Type profile "[_1]" deleted.' => '警告類型設定「[_1]」已刪除' ,
     'Alert Type profile "[_1]" saved.' => '警告類型設定「[_1]」已儲存' ,
     'Alias in Category' => '分類中別名' ,
     'Alias to "[_1]" created and saved.' => '已經建立並儲存 "[_1]" 的別名' ,
     'All Types' => '所有類型' ,
     'The "[_1]" field type already exists. Please try another key name.' => ' 「[_1]」 屬性已經存在，請選擇別的名稱' ,
     'An active template already exists for the selected output channel, category, element and burner you selected.  You must delete the existing template before you can add a new one.' => 'An active template already exists for the selected 所選的輸出頻道、分類、元素中已存在一個行動模板，你必須在儲存前刪除現有的模板' ,
     'An error occurred while processing your request:' => '在處理您的要求時，發生了一個錯誤；' ,
     'An error occurred.' => '發生錯誤。' ,
     'At least one extension is required.' => '至少需要一個副檔名' ,
     'Bad element name "[_1]". Did you mean "[_2]"?' => '元素名稱錯誤：「[_1]」。也許您是指「[_2]」？' ,
     'Cannot auto-publish related media "[_1]" because it is checked out.' => '無法自動出版相關的媒體 [_1] ，因為它尚未被送回' ,
     'Cannot auto-publish related story "[_1]" because it is checked out.' => '因其仍被他人取出修改中，所以無法自動出版以下此篇相關的稿件：「[_1]」' ,
     'Cannot both delete and make primary a single output channel.' => '不能夠同時設定其為主要輸出頻道，卻又將它刪除' ,
     'Cannot cancel "[_1]" because it is currently executing.' => '不能取消 [_1] ，因為它目前正在執行中。' ,
     'Cannot create an alias to a media in the same site.' => '在同站之中無法建立媒體的別名' ,
     'Cannot create an alias to a story in the same site.' => '在同站之中無法建立稿件的別名' ,
     'Cannot move "[_1]" asset "[_2]" while it is checked out' => '因為被取出了，所以不能移動 "[_1]" 資產: "[_2]"' ,
     'Cannot preview asset "[_1]" because there are no Preview Destinations associated with its output channels.' => '無法預覽此資產：「[_1]」。其輸出頻道沒有對應到任何預覽用的發佈目標。' ,
     'Cannot publish asset "[_1]" to "[_2]" because there are no Destinations associated with this output channel.' => '無法將資產「[_1]]」發佈到「[_2]]」，因為此輸出頻道沒有設定散佈目標。' ,
     'Cannot publish checked-out media "[_1]"' => '尚未送回的媒體 [_1] 不能被出版' ,
     'Cannot publish checked-out story "[_1]"' => '未送回的稿子 [_1] 不能出版' ,
     'Cannot publish media "[_1]" because it is checked out.' => '因為被取出了，所以無法出版以下媒體：「[_1]」' ,
     'Cannot publish story "[_1]" because it is checked out.' => '因為被取出了，所以無法出版以下稿件：「[_1]」' ,
     'Cascade into Subcategories' => 'Cascade into Subcategories' ,
     'Category "[_1]" added.' => '加入 [_1] 分類。' ,
     'Category "[_1]" cannot be deleted.' => '不能刪除 [_1] 這個分類。' ,
     'Category "[_1]" disassociated.' => '已經「[_1]」這個分類斷絕關係。' ,
     'Category Permissions' => '分類權限' ,
     'Category URI' => '分類URI' ,
     'Category profile "[_1]" and all its categories deleted.' => '分類設定 [1] 與其所有分類皆已刪除。' ,
     'Category profile "[_1]" deleted.' => '分類設定 [_1] 已刪除。' ,
     'Category profile "[_1]" saved.' => '分類設定 [_1] 已儲存。' ,
     'Changes not saved: permission denied.' => '無法儲存：權限遭拒' ,
     'Check In to [_1]' => '送回到 [_1]' ,
     'Choose a Related Story' => '選擇相關的稿件' ,
     'Contributor "[_1]" disassociated.' => '已斷絕供稿者 [_1] 的關係。' ,
     'Contributor Type Manager' => '供稿者類型管理' ,
     'Contributor profile "[_1]" deleted.' => '供稿者設定 [_1] 已刪除。' ,
     'Contributor profile "[_1]" saved.' => '供稿者設定 [_1] 已儲存。' ,
     'Contributors disassociated.' => '已斷絕供稿者的關係' ,
     'Copy Resources' => '複製一份' ,
     'Cover Date incomplete.' => '見報日期不完整。' ,
     'Delete this Category and All its Subcategories' => '刪除這個分類以及其所有子分類' ,
     'Deployed Version' => '部署版本' ,
     'Desk profile "[_1]" deleted from all workflows.' => '[_1] 桌面設定已自所有的流程中刪除。' ,
     'Destination' => '目標' ,
     'Destination Profile' => '目標設定' ,
     'Destination not specified' => '尚未指定發佈目標' ,
     'Destination profile "[_1]" deleted.' => '發佈目標 [_1] 已刪除。' ,
     'Destination profile "[_1]" saved.' => '發佈目標 [_1] 已儲存。' ,
     'Directory name "[_1]" contains invalid characters. Please try a different directory name.' => '目錄名稱[_1]還有非法的字元，請調整目錄名稱。' ,
     'Distributing files.' => '檔案散佈中' ,
     'Document Root' => '文件根目錄' ,
     'Element "[_1]" deleted.' => '[_1]元素已刪除。' ,
     'Element "[_1]" saved.' => '[_1]元素已儲存' ,
     'Element Type profile "[_1]" deleted.' => '[_1] 元素類型設定已刪除。' ,
     'Element Type profile "[_1]" saved.' => '[_1] 元素類型設定已儲存。' ,
     'Expire Date incomplete.' => '到期日不完整。' ,
     'Extension "[_1]" ignored.' => '已忽略 [_1] 副檔名' ,
     'Extension "[_1]" is already used by media type "[_2]".' => '[_1] 副檔名已被其他媒體類型所用' ,
     'FTP' => 'FTP' ,
     'Field "[_1]" appears more than once but it is not a repeatable element.  Please remove all but one.' => '「[_1]」欄位出現了一次以上，不過它並非可重複的元素，因此請移除多餘的部份。' ,
     'Field profile "[_1]" deleted.' => '已刪除無效的設定：「[_1]」' ,
     'Field profile "[_2]" saved.' => '無效的設定已儲存：「[_2]」' ,
     'File System' => '檔案系統' ,
     'Find Media To Alias' => '找出要取別名的媒體' ,
     'Find Story To Alias' => '找出要取別名的稿件' ,
     'Find a media to alias' => '找出要取別名的媒體' ,
     'Find a story to alias' => '找出要取別名的稿件' ,
     'From' => '來自' ,
     'Group Label' => '群組標記' ,
     'Group Memberships' => '群組成員' ,
     'Group cannot be deleted.' => '群組無法刪除' ,
     'Group profile "[_1]" deleted.' => '群組設定 [_1] 已刪除。' ,
     'Group profile "[_1]" saved.' => '群組設定 [_1] 已儲存' ,
     'Hi [_1]!' => '[_1] 早安!' ,
     'Host Name' => '主機名稱' ,
     'Invalid date value for "[_1]" field.' => '日期欄位「[_1]」的值無效' ,
     'Invalid page request' => '無效的頁面要求' ,
     'Invalid password. Please try again.' => '密碼無校，請再試一次' ,
     'Invalid username or password. Please try again.' => '使用者名稱或者密碼無效，請再試一次。' ,
     'Job profile "[_1]" deleted.' => '工作設定 [_1] 已刪除。' ,
     'Job profile "[_1]" saved.' => '工作設定 [_1] 已儲存。' ,
     'Keyword' => '關鍵字' ,
     'Keyword Manager' => '關鍵字管理' ,
     'Keyword Profile' => '關鍵字設定' ,
     'Keywords' => '關鍵字' ,
     'Keywords saved.' => '關鍵字已儲存。' ,
     'Login "[_1]" contains invalid characters.' => '登入帳號 [_1] 內含非法字元啊！' ,
     'Login "[_1]" is already in use. Please try again.' => '登入 [_1] 已被使用，請再試一次。' ,
     'Login cannot be blank. Please enter a login.' => '登入欄位不能留白，請務必正確輸入' ,
     'Login must be at least [_1] characters.' => '登入帳號至少要有 [_1] 個字元' ,
     'MEDIA FOUND' => '找到的媒體' ,
     'Media "[_1]" check out canceled.' => '已取消取出媒體 [_1] 。' ,
     'Media "[_1]" created and saved.' => '媒體 [_1] 已建立，並且儲存。' ,
     'Media "[_1]" deleted.' => '媒體 [_1] 已刪除。' ,
     'Media "[_1]" published.' => 'Media [_1] 已正式公開出版。' ,
     'Media "[_1]" reverted to V.[_2]' => '媒體 [_1] 已回復到第 [_2] 版' ,
     'Media "[_1]" saved and checked in to "[_2]".' => '媒體 [_1] 已儲存，並送回到 [_2].' ,
     'Media "[_1]" saved and moved to "[_2]".' => '媒體 [_1] 已儲存，且移動至 [_2]。' ,
     'Media "[_1]" saved and shelved.' => '媒體 [_1] 已儲存，但暫時擱置。' ,
     'Media "[_1]" saved.' => '媒體 [_1] 已儲存。' ,
     'Media Type profile "[_1]" deleted.' => '媒體類型設定 [_1] 已經儲存。' ,
     'Media Type profile "[_1]" saved.' => '媒體類型 [_1] 已儲存。' ,
     'Move Method' => '移動方法' ,
     'Move to Desk' => '移到桌面' ,
     'Name is required.' => '名稱為必要的。' ,
     'Needs to be Deployed' => '必須開始部署' ,
     'Needs to be Published' => '必須開始出版' ,
     'New Alias' => '新別名' ,
     'New passwords do not match. Please try again.' => '新密碼不符，請再輸入一次' ,
     'No Alias' => '沒有別名' ,
     'No alert types were found' => '找不到警告類型' ,
     'No categories were found' => '找不到分類' ,
     'No contributor types were found' => '找不到供稿者類型' ,
     'No contributors defined' => '未有定義好的供稿者' ,
     'No contributors defined.' => '未定義任何供稿者' ,
     'No destinations were found' => '找不到目標' ,
     'No element types were found' => '找不到元素類型設定' ,
     'No elements are present.' => '找不到元素' ,
     'No elements have been added.' => '沒有加入任何元素。' ,
     'No elements were found' => '找不到元素' ,
     'No existing notes.' => '並無注意事項' ,
     'No file associated with media "[_1]". Skipping.' => '「[_1]」媒體並無相關的檔案，在此略過。' ,
     'No file has been uploaded' => '沒有任何已上傳的檔案。' ,
     'No groups were found' => '找不到群組' ,
     'No jobs were found' => '找不到工作' ,
     'No keywords defined.' => '未定義任何關鍵字' ,
     'No media file is associated with asset "[_1]", so none will be distributed.' => '由於 [_1] 資產完全沒有相關的媒體檔案，所以並不會將檔案散佈出去。' ,
     'No media types were found' => '找不到媒體類型' ,
     'No media were found' => '找不到媒體' ,
     'No output channels were found' => '並沒有找到任何輸出頻道' ,
     'No output to preview.' => '無預覽輸出' ,
     'No related Stories' => '無相關的稿件' ,
     'No servers were found' => '找不到伺服器' ,
     'No sources were found' => '找不到來源' ,
     'No stories were found' => '找不到任何稿件' ,
     'No templates were found' => '找不到樣板' ,
     'No users were found' => '找不到使用者' ,
     'No workflows were found' => '找不到流程' ,
     'Note: Container element "[_1]" removed in bulk edit but will not be deleted.' => '注意：容器元素「[_1]」在大量編輯模式中被去掉了，但它並不會被刪除。' ,
     'Note: Field element "[_1]" is required and cannot be completely removed.  Will delete all but one.' => '注意：資料元素「[_1]」為必要的，因此不能全部被移除，將會留下其中一個。' ,
     'Object Groups' => '物件群組' ,
     'Object Group Permissions' => '物件群組權限' ,
     'Or Pick a Type' => '或選擇一個類型' ,
     'Output Channel profile "[_1]" deleted.' => '輸出頻道設定 [_1] 已刪除。' ,
     'Output Channel profile "[_1]" saved.' => '輸出頻道 [_1] 已被儲存。' ,
     'PENDING JOBS' => '待辦工作' ,
     'Parent cannot choose itself or its child as its parent. Try a different parent.' => '一個節點不能把自己或其子節點設定為自己的母節點，請選擇別的節點。' ,
     'Password contains illegal preceding or trailing spaces. Please try again.' => '密碼前後有非法的空白字元，請再試一次。' ,
     'Passwords cannot have spaces at the beginning!' => '密碼開頭不能是空白字元啊！' ,
     'Passwords cannot have spaces at the end!' => '密碼最後不能有空白字元啊！' ,
     'Passwords do not match!  Please re-enter.' => '密碼不一致，請重新輸入' ,
     'Passwords must be at least [_1] characters!' => '密碼至少要有 [_1] 個字元！' ,
     'Passwords must match!' => '密碼必須要一致' ,
     'Permission Denied' => '權限慘遭拒絕' ,
     'Permission to checkout "[_1]" denied.' => '取出 [_1] 的權限遭到拒絕' ,
     'Permission to delete "[_1]" denied.' => '刪除 [_1] 權限遭到拒絕' ,
     'Permissions saved.' => '權限已儲存' ,
     'Please check the URL and try again. If you feel you have reached this page as a result of a server error or other bug, please notify the server administrator. Be sure to include as much detail as possible, including the type of browser, operating system, and the steps leading up to your arrival here.' => '請仔細檢查URL並且再試一次。如果你覺得你是因為某種伺服器產生的錯誤而來到這個頁面，請儘速通知管理員，並請附上盡量詳細的資訊，包括使用的瀏覽器、作業系統、以及達到這一頁的每個步驟。' ,
     'Please click [_1]here[_2] to start.' => '請點選 [_1]這裡[_2] 開始' ,
     'Please log in:' => '請登入：' ,
     'Please select a primary category.' => '請選擇一個主要的分類' ,
     'Please select a primary output channel.' => '請選擇一個主要的輸出頻道' ,
     'Please select a story type.' => '請選擇一個稿件類型' ,
     'Preference "[_1]" updated.' => '偏好設定 [_1] 已更新。' ,
     'Problem adding "[_1]"' => '增加 [_1] 時發生問題' ,
     'Problem deleting "[_1]"' => '刪除 [_1] 時發生問題。' ,
     'Published Version' => '出版的版本' ,
     'Redirecting to preview.' => '重導到預覽' ,
     'Related Media to Alias' => '替相關媒體取別名' ,
     'Related Story to Alias' => '替相關稿件取別名' ,
     'STORY INFORMATION' => '稿件資訊' ,
     'Scheduled Time' => '排定的時間' ,
     'Select Alias' => '選取別名' ,
     'Select Categories' => '選取分類' ,
     'Separator Changed.' => '分隔字元已更動。' ,
     'Server profile "[_1]" deleted.' => '伺服器設定 [_1] 已經儲存。' ,
     'Server profile "[_1]" saved.' => '伺服器設定 [_1] 已儲存。' ,
     'Servers' => '伺服器' ,
     '[_1] Site [_2] Permissions' => '[_1] 站台 [_2] 許可' ,
     '[_1] Site Categories' => '[_1] 站台分類' ,
     'Site "[_1]" requires a primary output channel.' => '需要主要的輸出頻道：站台 「[_1]」 ' ,
     'Site profile "[_1]" deleted.' => '站台設定「[_1]」已刪除' ,
     'Site profile "[_1]" saved.' => '站台設定「[_1]」已儲存' ,
     'Slug must conform to URI character rules.' => 'Slug 也必須依循 URI 字元的規則' ,
     'Sort Name' => '排序名稱' ,
     'Source profile "[_1]" deleted.' => '來源設定 [_1] 已刪除。' ,
     'Source profile "[_1]" saved.' => '來源設定 [_1] 已儲存。' ,
     'Status' => '狀態' ,
     'Stories' => '稿件' ,
     'Stories in this category' => '這個分類裡面的稿件' ,
     'Story "[_1]" check out canceled.' => '取消取出稿件 [_1]。' ,
     'Story "[_1]" created and saved.' => '稿件 [_1] 已建立，並且儲存。' ,
     'Story "[_1]" deleted.' => '稿件 [_1] 已刪除。' ,
     'Story "[_1]" published.' => '稿件 [_1] 已出版。' ,
     'Story "[_1]" reverted to V.[_2].' => '稿件 [_1] 已回復到第 [_2] 版。' ,
     'Story "[_1]" saved and checked in to "[_2]".' => '稿件 [_1] 已儲存，送回至 [_1] 。' ,
     'Story "[_1]" saved and moved to "[_2]".' => '稿件 [_1] 已儲存，移動至 [_2] 。' ,
     'Story "[_1]" saved and shelved.' => '稿件 [_1] 已儲存，但暫時擱置。' ,
     'Story "[_1]" saved.' => '稿件 [_1] 已儲存。' ,
     'Template "[_1]" check out canceled.' => '取消取出樣板 [_1]。' ,
     'Template "[_1]" deleted.' => '模板 [_1] 已刪除。' ,
     'Template "[_1]" saved and checked in to "[_2]".' => 'Template "[_1]" saved and checked in to "[_2]".' ,
     'Template "[_1]" saved and moved to "[_2]".' => '模板 [_1] 已建立，並且移動至 [_2]' ,
     'Template "[_1]" saved and shelved.' => '模板 [_1] 已建立，但暫時擱置。' ,
     'Template "[_1]" saved.' => '模板 [_1] 已儲存。' ,
     'Template Includes' => '模板包括了...' ,
     'Template compile failed: [_1]' => '模板編譯失敗: [_1]' ,
     'Template deployed.' => '模板已經配備完成' ,
     'Templates' => '模板' ,
     'Templates Found' => '找到的模板' ,
     'Text to search' => '要找的文字' ,
     'The URI "[_1]" is not unique. Please change the cover date, output channels, category, or file name as necessary to make the URIs unique.' => '這個 URI "[_1]" 不是獨一無二的。 請更換封面日期、輸出頻道、分類、或是檔案名稱使其獨一無二' ,
     'The URL you requested, <b>[_1]</b>, was not found on this server' => '在這台伺服器上，並沒有找到所求之 URL <b>[_1]</b> ' ,
     'The name "[_1]" is already used by another Alert Type.' => '「[_1]」這個名稱已經被其他的警告類型使用' ,
     'The name "[_1]" is already used by another Desk.' => '「[_1]」這個名稱已經被其他的桌面使用' ,
     'The name "[_1]" is already used by another Destination.' => '「[_1]」這個名稱已經被其他的發佈目標使用' ,
     'The name "[_1]" is already used by another Element Type.' => '[_1] 這名稱已經被其他的元素類型使用。' ,
     'The name "[_1]" is already used by another Media Type.' => '[_1] 這個名稱已被其他的媒體類型使用。' ,
     'The name "[_1]" is already used by another Output Channel.' => '[_1] 這個名字已經被其他的輸出頻道使用' ,
     'The name "[_1]" is already used by another Server in this Destination.' => ' 目的地「[_1]」這個名稱已經在別的伺服器被使用' ,
     'The name "[_1]" is already used by another Source.' => '[_1] 這個名稱已經被其他的來源採用' ,
     'The name "[_1]" is already used by another Workflow.' => '其他流程已經使用了 [_1] 這個名字' ,
     'The slug can only contain alphanumeric characters (A-Z, 0-9, - or _)!' => 'Slug 裡面只能用英文字母、阿拉伯數字、短線、與底線字元！' ,
     'The slug, category and cover date you selected would have caused this story to have a URI conflicting with that of story [_1].' => '這篇稿件所選的的 slug、分類、以及見報日期，將使其 URI 與「[_1]」這篇稿件相同' ,
     'This day does not exist! Your day is changed to the' => '這一天根本不存在啊！它已經被改為' ,
     'This story has not been assigned to a category.' => '這份稿件目前尚未被分類' ,
     'To' => 'To' ,
     'URI "[_1]" is already in use. Please try a different directory name or parent category.' => 'URI [_1] 已被使用，請調整目錄名稱或者是分類。' ,
     'Un-relate' => '解除關係' ,
     'User profile "[_1]" deleted.' => '使用者設定 [_1] 已刪除。' ,
     'User profile "[_1]" saved.' => '使用者設定「[_1]」已儲存' ,
     'Usernames must be at least 6 characters!' => '使用者名稱至少需要六個字元' ,
     'Using Bricolage without JavaScript can result in corrupt data and system instability. Please activate JavaScript in your browser before continuing.' => '使用 Bricolage 時無 JavaScript 功能可能造成資料損毀及系統不穩，進行下一部以前請打開瀏覽器中 JavaScript 功能' ,
     'V.' => 'V.' ,
     'Value of [_1] cannot be empty' => '[_1] 的值不能是空白' ,
     'Warning! Bricolage is designed to run with JavaScript enabled.' => '警告！ Bricolage 設計成必須使用 JavaScript' ,
     'Warning! State inconsistent: Please use the buttons provided by the application rather than the \'Back\'/\'Forward\' buttons.' => 'Warning! State inconsistent: Please use the buttons provided by the application rather than the \'Back\'/\'Forward\' buttons.' ,
     'Warning:  Use of element\'s \'name\' field is deprecated for use with element method \'get_container\'.  Please use the element\'s \'key_name\' field instead.' => '警告: 以 \'name\' 欄位呼叫 \'get_container\' 的使用方式已被廢棄不用。請改用元素的 \'key_name\' 欄位。',
     'Warning:  Use of element\'s \'name\' field is deprecated for use with element method \'get_value\'.  Please use the element\'s \'key_name\' field instead.' => '警告: 以 \'name\' 欄位呼叫 \'get_value\' 的使用方式已被廢棄不用。請改用元素的 \'key_name\' 欄位。',
     'Warning: object "[_1]" had no associated desk.  It has been assigned to the "[_2]" desk.' => '警告：[_1] 沒有所屬的桌面，它已經被移動到 [_2] 這個桌面。' ,
     'Warning: object "[_1]" had no associated workflow.  It has been assigned to the "[_2]" workflow.' => '警告：「[_1]」物件並不屬於任何流程，所以已經被放入「[_2]」流程中。' ,
     'Warning: object "[_1]" had no associated workflow.  It has been assigned to the "[_2]" workflow. This change also required that this object be moved to the "[_3]" desk.' => '警告：「[_1]」物件並不屬於任何流程，所以已經被放入「[_2]」流程中。此項異動同時已把物件移到「[_3]」桌面。' ,
     'Welcome to [_1]' => '歡迎來到 [_1]' ,
     'Workflow profile "[_1]" deleted.' => '流程 profile 「[_1]」 已刪除.' ,
     'Writing files to "[_1]" Output Channel.' => '正將檔案寫至「[_1]」輸出頻道' ,
     'You are about to permanently delete items! Do you wish to continue?' => '這些項目將被永久刪除！真的要繼續嗎？' ,
     'You cannot remove all Sites.' => '您不能移除所有站台' ,
     'You have not been granted <b>[_1]</b> access to the <b>[_2]</b> [_3]' => '您並未允許 <b>[_1]</b> 存取 <b>[_2]</b> [_3]' ,
     'You must be an administrator to use this function.' => '此功能只有管理員才可使用' ,
     'You must select an Element or check the &quot;Generic&quot; check box.' => '你必須選擇一個元素，或是核選「通用」的核選方塊' ,
     'You must select an Element.' => '您必須選擇一個元素' ,
     'You must supply a unique name for this role!' => '你必須替這個角色取個獨一無二的名字' ,
     'You must supply a value for ' => '您必須給定其值' ,
     '[_1] recipients changed.' => '[_1] 個收件者已更動。' ,
     '[quant,$quant,Contributors] [_1] [quant,$quant,disassociated].' => '[quant,$quant,個供稿者] [_1] [quant,$quant,解除關係].' ,
     '[quant,_1,Alert] acknowledged.' => '警告已被確認' ,
     '[quant,_1,Contributor] "[_2]" associated.' => '已關聯至此供稿者：「[_2]」' ,
     '[quant,_1,Template] deployed.' => '模板已經配備完成' ,
     '[quant,_1,media,media] published.' => '[_1] 個媒體出版完成。' ,
     '[quant,_1,story,stories] published.' => '[_1] 篇稿件出版完成。' ,
     'contains illegal characters!' => '含有不合法的字元！' ,
     '_AUTO' => '1' ,
    );

=begin comment

To translate:
  "All jobs" => "All jobs",
  "Today's jobs" => "Today's jobs",
  "Future jobs" => "Future jobs",
  "Expire jobs" => "Expire jobs",
  "Failed jobs" => "Failed jobs",
  "My jobs" => "My jobs",
  'Shelve'
  'and Shelve'
  'and'
  '[_1] Site [_2] Permissions' => '[_1] [_2] Permissions', # Site Category Permissions
  'All Categories' => '所有分類',
  'Object Groups' => '物件群組',
  '[_1] Site Categories' => '[_1] 站台分類',
  'You do not have permission to override user "[_1]"' => '您不得 override 使用者 "[_1]"'
  'Please select a primary output channel' => '請選擇一個主要輸出頻道',
  'Not defined.' => 'Not defined.',
  'Milliseconds' => 'Milliseconds',
  'Microseconds' => 'Microseconds',
  'Not defined.' => 'Not defined.',
  '[quant,_1,Day]' => '[quant,_1,Day,Days,None]',
  "You do not have sufficient permission to create a media document for this site" => "You do not have sufficient permission to create a media document for this site"
  'The primary category cannot be deleted.' => 'The primary category cannot be deleted.',
  'Cannot make a dissociated category the primary category.' => 'Cannot make a dissociated category the primary category.'
  'Related [_1] "[_2]" is not activate. Please relate another [_1].' => 'Related [_1] "[_2]" is not activate. Please relate another [_1].'
  'Cannot auto-publish related $rel_disp_name "[_1]" because it is not on a publish desk.' => 'Cannot auto-publish related $rel_disp_name "[_1]" because it is not on a publish desk.'
  'The URI "[_1]" is not unique. Please change the cover date, output channels, slug, or categories as necessary to make the URIs unique.' => 'The URI "[_1]" is not unique. Please change the cover date, output channels, slug, or categories as necessary to make the URIs unique.'
  'Name "[_1]" is not a valid media name. The name must be of the form "type/subtype".' => 'Name "[_1]" is not a valid media name. The name must be of the form "type/subtype".',
  'Include deleted' => 'Include deleted',
  'Reactivate' => 'Reactivate',
  'Subelement' => 'Subelement',
  'All Subelements' => 'All Subelements',
      'Code' => 'Code',
      'Code Select' => 'Code Select',
      'Invalid codeselect code (didn't return an array ref of even size)' => 'Invalid codeselect code (didn't return an array ref of even size)',
  'The error message is available below. No further execution attempts will be made on this job unless you check the "Reset this Job" checkbox below.' => 'The error message is available below. No further execution attempts will be made on this job unless you check the "Reset this Job" checkbox below.',
  'Job "[_1]" has been reset.' => 'Job "[_1]" has been reset.',
  '[quant,_1,media,media] expired.' => '[quant,_1,media,media] expired.',
  '[quant,_1,story,stories] expired.' => '[quant,_1,story,stories] expired.',
  'No context for content beginning at line [_1].' => 'No context for content beginning at line [_1].',
  'No such field "[_1]" at line [_2]. Did you mean "[_3]"?' => 'No such field "[_1]" at line [_2]. Did you mean "[_3]"?',
  'No such subelement "[_1]" at line [_2]. Did you mean "[_3]"?' => 'No such subelement "[_1]" at line [_2]. Did you mean "[_3]"?',
  'Unknown tag "[_1]" at line [_2].' => 'Unknown tag "[_1]" at line [_2].',
  'No such site "[_1]" at line [_2].'=> 'No such site "[_1]" at line [_2].',
  'No such URI "[_1]" in site "[_2]" at line [_3].' => 'No such URI "[_1]" in site "[_2]" at line [_3].',
  'No story document found for UUID "[_1]" at line [_2].' => 'No story document found for UUID "[_1]" at line [_2].',
  'No media document found for UUID "[_1]" at line [_2].' => 'No media document found for UUID "[_1]" at line [_2].',
  'No story document found for ID "[_1]" at line [_2].' => 'No story document found for ID "[_1]" at line [_2].',
  'No media document found for ID "[_1]" at line [_2].' => 'No media document found for ID "[_1]" at line [_2].',
  'No story document found for URI "[_1]" at line [_2].' => 'No story document found for URI "[_1]" at line [_2].',
  'No media document found for URI "[_1]" at line [_2].' => 'No media document found for URI "[_1]" at line [_2].',
  'D (for Deployed)'  => 'D',
  'P (for Published)' => 'P',
  'Field "[_1]" cannot be added. There are already [quant,_2,field,fields] of this type, with a max of [_3].' => 'Field “[_1]” cannot be added. There are already [quant,_2,field,fields] of this type, with a max of [_3].',
  'Element "[_1]" cannot be added. There are already [quant,_2,element,elements] of this type, with a max of [_3].' => 'Element “[_1]” cannot be added. There are already [quant,_2,element,elements] of this type, with a max of [_3].',
  'Field "[_1]" cannot be deleted. There must be at least [quant,_2,field,fields] of this type.' => 'Field “[_1]” cannot be deleted. There must be at least [quant,_2,field,fields] of this type.',
  'Element "[_1]" cannot be deleted. There must be at least [quant,_2,element,elements] of this type.' => 'Element “[_1]” cannot be deleted. There must be at least [quant,_2,element,elements] of this type.',
  'Field "[_1]" appears [_2] times around line [_3]. Please remove all but [_4].' => 'Field “[_1]” appears [quant,_2,time,times] around line [_3]. Please remove all but [_4].',
  'min_occurrence must be a positive number.' => 'min_occurrence must be a positive number.',
  'max_occurrence must be a positive number.' => 'max_occurrence must be a positive number.',
  'Min and max occurrence must be a positive numbers.' => 'Min and max occurrence must be a positive numbers.',
  'place must be a positive number.' => 'place must be a positive number.',
  '[_1] cannot be a subelement of [_2].' => '[_1] cannot be a subelement of [_2].',
  'You cannot add a note to "[_1]" because it is not checked out to you' => 'You cannot add a note to "[_1]" because it is not checked out to you',
  'Could not create a thumbnail for [_1]: [_2]' => 'Could not create a thumbnail for [_1]: [_2]',
  'Toggle "[_1]"' => 'Toggle “[_1]”',

Notice:

  Story 請一律譯成「稿件」「稿子」或著「稿」，不要譯成「故事」

=end comment

=cut

1;

__END__

=head1 AUTHOR

Kang-min Liu <gugod@gugod.org>, Jimmy <jimmybric@tp4.us>.

=head1 SEE ALSO

L<Bric::Util::Language|Bric::Util::Language>

L<Bric::Util::Language::en_us|Bric::Util::Language::en_us>

L<Bric::Util::Language::de_de|Bric::Util::Language::de_de>

=cut

1;
