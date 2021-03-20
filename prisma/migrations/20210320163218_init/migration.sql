-- CreateTable
CREATE TABLE `pre_addon_antirobot_illegal_postlog` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `type` BOOLEAN NOT NULL DEFAULT false,
    `fid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `tid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `first` BOOLEAN NOT NULL DEFAULT false,
    `author` VARCHAR(15) NOT NULL,
    `authorid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `subject` VARCHAR(80) NOT NULL,
    `message` MEDIUMTEXT NOT NULL,
    `postway` BOOLEAN NOT NULL DEFAULT true,
    `useip` VARCHAR(15) NOT NULL,
    `remote_addr` VARCHAR(15) NOT NULL,
    `allip` VARCHAR(1000) NOT NULL,
    `illegalip` VARCHAR(1000) NOT NULL,
    `proxyip` VARCHAR(1000) NOT NULL,
    `user_agent` VARCHAR(1000) NOT NULL,
    `note` VARCHAR(100) NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_addon_antirobot_noviewlog` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `url` VARCHAR(1000) NOT NULL,
    `author` VARCHAR(15) NOT NULL,
    `authorid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `isrobot` BOOLEAN NOT NULL DEFAULT false,
    `way` BOOLEAN NOT NULL DEFAULT true,
    `useip` VARCHAR(15) NOT NULL,
    `remote_addr` VARCHAR(15) NOT NULL,
    `allip` VARCHAR(1000) NOT NULL,
    `illegalip` VARCHAR(1000) NOT NULL,
    `proxyip` VARCHAR(1000) NOT NULL,
    `user_agent` VARCHAR(1000) NOT NULL,
    `note` VARCHAR(1000) NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_addon_antirobot_threadpost_succeedlog` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `type` BOOLEAN NOT NULL DEFAULT false,
    `fid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `tid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `first` BOOLEAN NOT NULL DEFAULT false,
    `author` VARCHAR(15) NOT NULL,
    `authorid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `postway` BOOLEAN NOT NULL DEFAULT true,
    `useip` VARCHAR(15) NOT NULL,
    `remote_addr` VARCHAR(15) NOT NULL,
    `allip` VARCHAR(1000) NOT NULL,
    `illegalip` VARCHAR(1000) NOT NULL,
    `proxyip` VARCHAR(1000) NOT NULL,
    `user_agent` VARCHAR(1000) NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_addon_download_attachment` (
    `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `rid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `width` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
INDEX `askd`(`rid`),
INDEX `attachment`(`attachment`),
INDEX `pid`(`pid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_addon_download_buylog` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `rid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),
INDEX `rid`(`rid`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_addon_download_category` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `parentid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `name` CHAR(50) NOT NULL,
    `count` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `seotitle` TEXT NOT NULL,
    `seokeywords` TEXT NOT NULL,
    `seodescription` TEXT NOT NULL,
    `status` BOOLEAN NOT NULL DEFAULT false,
    `displayorder` SMALLINT UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_addon_download_downlog` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `rid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),
INDEX `rid`(`rid`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_addon_download_icon` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `pic` VARCHAR(255) NOT NULL,
    `status` BOOLEAN NOT NULL DEFAULT false,
    `displayorder` INTEGER NOT NULL DEFAULT 0,
INDEX `displayorder`(`displayorder`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_addon_download_resource` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `catid1` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `catid2` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `name` VARCHAR(80) NOT NULL,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` CHAR(15) NOT NULL,
    `downloadtype` BOOLEAN NOT NULL DEFAULT true,
    `filename` VARCHAR(255) NOT NULL,
    `fileext` VARCHAR(10) NOT NULL,
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL,
    `panurl` VARCHAR(255) NOT NULL,
    `pankey` VARCHAR(255) NOT NULL,
    `pansize` VARCHAR(255) NOT NULL,
    `icon` VARCHAR(255) NOT NULL,
    `cover` VARCHAR(255) NOT NULL,
    `description` MEDIUMTEXT NOT NULL,
    `price` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `views` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `downloads` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `grade` TINYINT UNSIGNED NOT NULL DEFAULT 80,
    `piccount` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `useip` VARCHAR(15) NOT NULL,
    `port` SMALLINT NOT NULL,
    `tid` MEDIUMINT NOT NULL,
    `seotitle` TEXT NOT NULL,
    `seokeywords` TEXT NOT NULL,
    `seodescription` TEXT NOT NULL,
    `status` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `updatetime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `catid`(`catid1`),
INDEX `dateline`(`dateline`),
INDEX `downloads`(`downloads`),
INDEX `updatetime`(`updatetime`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_addon_download_slide` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` CHAR(30) NOT NULL,
    `pic` VARCHAR(255) NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    `status` BOOLEAN NOT NULL DEFAULT false,
    `displayorder` INTEGER NOT NULL DEFAULT 0,
INDEX `displayorder`(`displayorder`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_addon_download_viewlog` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `rid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `useip` VARCHAR(15) NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),
INDEX `saleid`(`rid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_addon` (
    `key` VARCHAR(255) NOT NULL DEFAULT '',
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `sitename` VARCHAR(255) NOT NULL DEFAULT '',
    `siteurl` VARCHAR(255) NOT NULL DEFAULT '',
    `description` VARCHAR(255) NOT NULL DEFAULT '',
    `contact` VARCHAR(255) NOT NULL DEFAULT '',
    `logo` VARCHAR(255) NOT NULL DEFAULT '',
    `system` BOOLEAN NOT NULL DEFAULT false,

    PRIMARY KEY (`key`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_admincp_cmenu` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    `sort` BOOLEAN NOT NULL DEFAULT false,
    `displayorder` TINYINT NOT NULL,
    `clicks` SMALLINT UNSIGNED NOT NULL DEFAULT 1,
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL,
INDEX `displayorder`(`displayorder`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_admincp_group` (
    `cpgroupid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `cpgroupname` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`cpgroupid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_admincp_member` (
    `uid` INTEGER UNSIGNED NOT NULL,
    `cpgroupid` INTEGER UNSIGNED NOT NULL,
    `customperm` TEXT NOT NULL,
INDEX `uid`(`uid`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_admincp_perm` (
    `cpgroupid` SMALLINT UNSIGNED NOT NULL,
    `perm` VARCHAR(255) NOT NULL,
UNIQUE INDEX `cpgroupperm`(`cpgroupid`, `perm`),
INDEX `cpgroupid`(`cpgroupid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_admincp_session` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `adminid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `panel` BOOLEAN NOT NULL DEFAULT false,
    `ip` VARCHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `errorcount` BOOLEAN NOT NULL DEFAULT false,
    `storage` MEDIUMTEXT NOT NULL,

    PRIMARY KEY (`uid`,`panel`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_admingroup` (
    `admingid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `alloweditpost` BOOLEAN NOT NULL DEFAULT false,
    `alloweditpoll` BOOLEAN NOT NULL DEFAULT false,
    `allowstickthread` BOOLEAN NOT NULL DEFAULT false,
    `allowmodpost` BOOLEAN NOT NULL DEFAULT false,
    `allowdelpost` BOOLEAN NOT NULL DEFAULT false,
    `allowmassprune` BOOLEAN NOT NULL DEFAULT false,
    `allowrefund` BOOLEAN NOT NULL DEFAULT false,
    `allowcensorword` BOOLEAN NOT NULL DEFAULT false,
    `allowviewip` BOOLEAN NOT NULL DEFAULT false,
    `allowbanip` BOOLEAN NOT NULL DEFAULT false,
    `allowedituser` BOOLEAN NOT NULL DEFAULT false,
    `allowmoduser` BOOLEAN NOT NULL DEFAULT false,
    `allowbanuser` BOOLEAN NOT NULL DEFAULT false,
    `allowbanvisituser` BOOLEAN NOT NULL DEFAULT false,
    `allowpostannounce` BOOLEAN NOT NULL DEFAULT false,
    `allowviewlog` BOOLEAN NOT NULL DEFAULT false,
    `allowbanpost` BOOLEAN NOT NULL DEFAULT false,
    `supe_allowpushthread` BOOLEAN NOT NULL DEFAULT false,
    `allowhighlightthread` BOOLEAN NOT NULL DEFAULT false,
    `allowlivethread` BOOLEAN NOT NULL DEFAULT false,
    `allowdigestthread` BOOLEAN NOT NULL DEFAULT false,
    `allowrecommendthread` BOOLEAN NOT NULL DEFAULT false,
    `allowbumpthread` BOOLEAN NOT NULL DEFAULT false,
    `allowclosethread` BOOLEAN NOT NULL DEFAULT false,
    `allowmovethread` BOOLEAN NOT NULL DEFAULT false,
    `allowedittypethread` BOOLEAN NOT NULL DEFAULT false,
    `allowstampthread` BOOLEAN NOT NULL DEFAULT false,
    `allowstamplist` BOOLEAN NOT NULL DEFAULT false,
    `allowcopythread` BOOLEAN NOT NULL DEFAULT false,
    `allowmergethread` BOOLEAN NOT NULL DEFAULT false,
    `allowsplitthread` BOOLEAN NOT NULL DEFAULT false,
    `allowrepairthread` BOOLEAN NOT NULL DEFAULT false,
    `allowwarnpost` BOOLEAN NOT NULL DEFAULT false,
    `allowviewreport` BOOLEAN NOT NULL DEFAULT false,
    `alloweditforum` BOOLEAN NOT NULL DEFAULT false,
    `allowremovereward` BOOLEAN NOT NULL DEFAULT false,
    `allowedittrade` BOOLEAN NOT NULL DEFAULT false,
    `alloweditactivity` BOOLEAN NOT NULL DEFAULT false,
    `allowstickreply` BOOLEAN NOT NULL DEFAULT false,
    `allowmanagearticle` BOOLEAN NOT NULL DEFAULT false,
    `allowaddtopic` BOOLEAN NOT NULL DEFAULT false,
    `allowmanagetopic` BOOLEAN NOT NULL DEFAULT false,
    `allowdiy` BOOLEAN NOT NULL DEFAULT false,
    `allowclearrecycle` BOOLEAN NOT NULL DEFAULT false,
    `allowmanagetag` BOOLEAN NOT NULL DEFAULT false,
    `alloweditusertag` BOOLEAN NOT NULL DEFAULT false,
    `managefeed` BOOLEAN NOT NULL DEFAULT false,
    `managedoing` BOOLEAN NOT NULL DEFAULT false,
    `manageshare` BOOLEAN NOT NULL DEFAULT false,
    `manageblog` BOOLEAN NOT NULL DEFAULT false,
    `managealbum` BOOLEAN NOT NULL DEFAULT false,
    `managecomment` BOOLEAN NOT NULL DEFAULT false,
    `managemagiclog` BOOLEAN NOT NULL DEFAULT false,
    `managereport` BOOLEAN NOT NULL DEFAULT false,
    `managehotuser` BOOLEAN NOT NULL DEFAULT false,
    `managedefaultuser` BOOLEAN NOT NULL DEFAULT false,
    `managevideophoto` BOOLEAN NOT NULL DEFAULT false,
    `managemagic` BOOLEAN NOT NULL DEFAULT false,
    `manageclick` BOOLEAN NOT NULL DEFAULT false,
    `allowmanagecollection` BOOLEAN NOT NULL DEFAULT false,
    `allowmakehtml` BOOLEAN NOT NULL DEFAULT false,

    PRIMARY KEY (`admingid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_adminnote` (
    `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `admin` VARCHAR(15) NOT NULL DEFAULT '',
    `access` TINYINT NOT NULL DEFAULT 0,
    `adminid` TINYINT NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `expiration` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_advertisement` (
    `advid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `available` BOOLEAN NOT NULL DEFAULT false,
    `type` VARCHAR(50) NOT NULL DEFAULT '0',
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `targets` TEXT NOT NULL,
    `parameters` TEXT NOT NULL,
    `code` TEXT NOT NULL,
    `starttime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `endtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`advid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_advertisement_custom` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
INDEX `name`(`name`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_banned` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `ip1` SMALLINT NOT NULL DEFAULT 0,
    `ip2` SMALLINT NOT NULL DEFAULT 0,
    `ip3` SMALLINT NOT NULL DEFAULT 0,
    `ip4` SMALLINT NOT NULL DEFAULT 0,
    `admin` VARCHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `expiration` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_block` (
    `bid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `blockclass` VARCHAR(255) NOT NULL DEFAULT '0',
    `blocktype` BOOLEAN NOT NULL DEFAULT false,
    `name` VARCHAR(255) NOT NULL DEFAULT '',
    `title` TEXT NOT NULL,
    `classname` VARCHAR(255) NOT NULL DEFAULT '',
    `summary` TEXT NOT NULL,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(255) NOT NULL DEFAULT '',
    `styleid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `blockstyle` TEXT NOT NULL,
    `picwidth` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `picheight` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `target` VARCHAR(255) NOT NULL DEFAULT '',
    `dateformat` VARCHAR(255) NOT NULL DEFAULT '',
    `dateuformat` BOOLEAN NOT NULL DEFAULT false,
    `script` VARCHAR(255) NOT NULL DEFAULT '',
    `param` TEXT NOT NULL,
    `shownum` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `cachetime` INTEGER NOT NULL DEFAULT 0,
    `cachetimerange` CHAR(5) NOT NULL DEFAULT '',
    `punctualupdate` BOOLEAN NOT NULL DEFAULT false,
    `hidedisplay` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `notinherited` BOOLEAN NOT NULL DEFAULT false,
    `isblank` BOOLEAN NOT NULL DEFAULT false,

    PRIMARY KEY (`bid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_block_favorite` (
    `favid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `bid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `uid`(`uid`, `dateline`),

    PRIMARY KEY (`favid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_block_item` (
    `itemid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `bid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `idtype` VARCHAR(255) NOT NULL DEFAULT '',
    `itemtype` BOOLEAN NOT NULL DEFAULT false,
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `url` VARCHAR(255) NOT NULL DEFAULT '',
    `pic` VARCHAR(255) NOT NULL DEFAULT '',
    `picflag` BOOLEAN NOT NULL DEFAULT false,
    `makethumb` BOOLEAN NOT NULL DEFAULT false,
    `thumbpath` VARCHAR(255) NOT NULL DEFAULT '',
    `summary` TEXT NOT NULL,
    `showstyle` TEXT NOT NULL,
    `related` TEXT NOT NULL,
    `fields` TEXT NOT NULL,
    `displayorder` SMALLINT NOT NULL DEFAULT 0,
    `startdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `enddate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `bid`(`bid`),

    PRIMARY KEY (`itemid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_block_item_data` (
    `dataid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `bid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `idtype` VARCHAR(255) NOT NULL DEFAULT '',
    `itemtype` BOOLEAN NOT NULL DEFAULT false,
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `url` VARCHAR(255) NOT NULL DEFAULT '',
    `pic` VARCHAR(255) NOT NULL DEFAULT '',
    `picflag` BOOLEAN NOT NULL DEFAULT false,
    `makethumb` BOOLEAN NOT NULL DEFAULT false,
    `summary` TEXT NOT NULL,
    `showstyle` TEXT NOT NULL,
    `related` TEXT NOT NULL,
    `fields` TEXT NOT NULL,
    `displayorder` SMALLINT NOT NULL DEFAULT 0,
    `startdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `enddate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(255) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `isverified` BOOLEAN NOT NULL DEFAULT false,
    `verifiedtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `stickgrade` TINYINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `bid`(`bid`, `stickgrade`, `displayorder`, `verifiedtime`),

    PRIMARY KEY (`dataid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_block_permission` (
    `bid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `allowmanage` BOOLEAN NOT NULL DEFAULT false,
    `allowrecommend` BOOLEAN NOT NULL DEFAULT false,
    `needverify` BOOLEAN NOT NULL DEFAULT false,
    `inheritedtplname` VARCHAR(255) NOT NULL DEFAULT '',
INDEX `uid`(`uid`),

    PRIMARY KEY (`bid`,`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_block_pic` (
    `picid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `bid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `itemid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `pic` VARCHAR(255) NOT NULL DEFAULT '',
    `picflag` BOOLEAN NOT NULL DEFAULT false,
    `type` BOOLEAN NOT NULL DEFAULT false,
INDEX `bid`(`bid`, `itemid`),

    PRIMARY KEY (`picid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_block_style` (
    `styleid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `blockclass` VARCHAR(255) NOT NULL DEFAULT '',
    `name` VARCHAR(255) NOT NULL DEFAULT '',
    `template` TEXT NOT NULL,
    `hash` VARCHAR(255) NOT NULL DEFAULT '',
    `getpic` BOOLEAN NOT NULL DEFAULT false,
    `getsummary` BOOLEAN NOT NULL DEFAULT false,
    `makethumb` BOOLEAN NOT NULL DEFAULT false,
    `settarget` BOOLEAN NOT NULL DEFAULT false,
    `fields` TEXT NOT NULL,
    `moreurl` BOOLEAN NOT NULL DEFAULT false,
INDEX `blockclass`(`blockclass`),
INDEX `hash`(`hash`),

    PRIMARY KEY (`styleid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_block_xml` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `version` VARCHAR(255) NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    `clientid` VARCHAR(255) NOT NULL,
    `key` VARCHAR(255) NOT NULL,
    `signtype` VARCHAR(255) NOT NULL,
    `data` TEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_cache` (
    `cachekey` VARCHAR(255) NOT NULL DEFAULT '',
    `cachevalue` MEDIUMBLOB NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`cachekey`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_card` (
    `id` CHAR(255) NOT NULL DEFAULT '',
    `typeid` SMALLINT UNSIGNED NOT NULL DEFAULT 1,
    `maketype` BOOLEAN NOT NULL DEFAULT false,
    `makeruid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `price` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `extcreditskey` BOOLEAN NOT NULL DEFAULT false,
    `extcreditsval` INTEGER NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT true,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `cleardateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `useddateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_card_log` (
    `id` SMALLINT NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT NOT NULL DEFAULT 0,
    `username` VARCHAR(20) NOT NULL DEFAULT '',
    `cardrule` VARCHAR(255) NOT NULL DEFAULT '',
    `info` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `description` MEDIUMTEXT NOT NULL,
    `operation` BOOLEAN NOT NULL DEFAULT false,
INDEX `dateline`(`dateline`),
INDEX `operation_dateline`(`operation`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_card_type` (
    `id` SMALLINT NOT NULL AUTO_INCREMENT,
    `typename` CHAR(20) NOT NULL DEFAULT '',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_connect_guest` (
    `conopenid` CHAR(32) NOT NULL DEFAULT '',
    `conuin` CHAR(40) NOT NULL DEFAULT '',
    `conuinsecret` CHAR(16) NOT NULL DEFAULT '',
    `conqqnick` CHAR(100) NOT NULL DEFAULT '',
    `conuintoken` CHAR(32) NOT NULL DEFAULT '',

    PRIMARY KEY (`conopenid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_credit_log` (
    `logid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `operation` CHAR(3) NOT NULL DEFAULT '',
    `relatedid` INTEGER UNSIGNED NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL,
    `extcredits1` INTEGER NOT NULL,
    `extcredits2` INTEGER NOT NULL,
    `extcredits3` INTEGER NOT NULL,
    `extcredits4` INTEGER NOT NULL,
    `extcredits5` INTEGER NOT NULL,
    `extcredits6` INTEGER NOT NULL,
    `extcredits7` INTEGER NOT NULL,
    `extcredits8` INTEGER NOT NULL,
INDEX `dateline`(`dateline`),
INDEX `operation`(`operation`),
INDEX `relatedid`(`relatedid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`logid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_credit_log_field` (
    `logid` MEDIUMINT UNSIGNED NOT NULL,
    `title` VARCHAR(100) NOT NULL,
    `text` TEXT NOT NULL,
INDEX `logid`(`logid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_credit_rule` (
    `rid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `rulename` VARCHAR(20) NOT NULL DEFAULT '',
    `action` VARCHAR(20) NOT NULL DEFAULT '',
    `cycletype` BOOLEAN NOT NULL DEFAULT false,
    `cycletime` INTEGER NOT NULL DEFAULT 0,
    `rewardnum` TINYINT NOT NULL DEFAULT 1,
    `norepeat` BOOLEAN NOT NULL DEFAULT false,
    `extcredits1` INTEGER NOT NULL DEFAULT 0,
    `extcredits2` INTEGER NOT NULL DEFAULT 0,
    `extcredits3` INTEGER NOT NULL DEFAULT 0,
    `extcredits4` INTEGER NOT NULL DEFAULT 0,
    `extcredits5` INTEGER NOT NULL DEFAULT 0,
    `extcredits6` INTEGER NOT NULL DEFAULT 0,
    `extcredits7` INTEGER NOT NULL DEFAULT 0,
    `extcredits8` INTEGER NOT NULL DEFAULT 0,
    `fids` TEXT NOT NULL,
UNIQUE INDEX `pre_common_credit_rule.action_unique`(`action`),

    PRIMARY KEY (`rid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_credit_rule_log` (
    `clid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `rid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `total` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `cyclenum` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `extcredits1` INTEGER NOT NULL DEFAULT 0,
    `extcredits2` INTEGER NOT NULL DEFAULT 0,
    `extcredits3` INTEGER NOT NULL DEFAULT 0,
    `extcredits4` INTEGER NOT NULL DEFAULT 0,
    `extcredits5` INTEGER NOT NULL DEFAULT 0,
    `extcredits6` INTEGER NOT NULL DEFAULT 0,
    `extcredits7` INTEGER NOT NULL DEFAULT 0,
    `extcredits8` INTEGER NOT NULL DEFAULT 0,
    `starttime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),
INDEX `uid`(`uid`, `rid`, `fid`),

    PRIMARY KEY (`clid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_credit_rule_log_field` (
    `clid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `info` TEXT NOT NULL,
    `user` TEXT NOT NULL,
    `app` TEXT NOT NULL,

    PRIMARY KEY (`uid`,`clid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_cron` (
    `cronid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `available` BOOLEAN NOT NULL DEFAULT false,
    `type` ENUM('user', 'system', 'plugin') NOT NULL DEFAULT 'user',
    `name` CHAR(50) NOT NULL DEFAULT '',
    `filename` CHAR(50) NOT NULL DEFAULT '',
    `lastrun` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `nextrun` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `weekday` BOOLEAN NOT NULL DEFAULT false,
    `day` TINYINT NOT NULL DEFAULT 0,
    `hour` TINYINT NOT NULL DEFAULT 0,
    `minute` CHAR(36) NOT NULL DEFAULT '',
INDEX `nextrun`(`available`, `nextrun`),

    PRIMARY KEY (`cronid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_devicetoken` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `token` CHAR(50) NOT NULL,
INDEX `token`(`token`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_district` (
    `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL DEFAULT '',
    `level` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `usetype` BOOLEAN NOT NULL DEFAULT false,
    `upid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `displayorder` SMALLINT NOT NULL DEFAULT 0,
INDEX `upid`(`upid`, `displayorder`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_diy_data` (
    `targettplname` VARCHAR(100) NOT NULL DEFAULT '',
    `tpldirectory` VARCHAR(80) NOT NULL DEFAULT '',
    `primaltplname` VARCHAR(255) NOT NULL DEFAULT '',
    `diycontent` MEDIUMTEXT NOT NULL,
    `name` VARCHAR(255) NOT NULL DEFAULT '',
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`targettplname`,`tpldirectory`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_domain` (
    `domain` CHAR(30) NOT NULL DEFAULT '',
    `domainroot` CHAR(60) NOT NULL DEFAULT '',
    `id` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `idtype` CHAR(15) NOT NULL DEFAULT '',
INDEX `domain`(`domain`, `domainroot`),
INDEX `idtype`(`idtype`),

    PRIMARY KEY (`id`,`idtype`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_failedip` (
    `ip` CHAR(7) NOT NULL DEFAULT '',
    `lastupdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `count` BOOLEAN NOT NULL DEFAULT false,
INDEX `lastupdate`(`lastupdate`),

    PRIMARY KEY (`ip`,`lastupdate`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_failedlogin` (
    `ip` CHAR(15) NOT NULL DEFAULT '',
    `username` CHAR(32) NOT NULL DEFAULT '',
    `count` BOOLEAN NOT NULL DEFAULT false,
    `lastupdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`ip`,`username`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_friendlink` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `name` VARCHAR(100) NOT NULL DEFAULT '',
    `url` VARCHAR(255) NOT NULL DEFAULT '',
    `description` MEDIUMTEXT NOT NULL,
    `logo` VARCHAR(255) NOT NULL DEFAULT '',
    `type` TINYINT NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_grouppm` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `author` VARCHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `numbers` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_invite` (
    `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `code` CHAR(20) NOT NULL DEFAULT '',
    `fuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fusername` CHAR(20) NOT NULL DEFAULT '',
    `type` BOOLEAN NOT NULL DEFAULT false,
    `email` CHAR(40) NOT NULL DEFAULT '',
    `inviteip` CHAR(15) NOT NULL DEFAULT '',
    `appid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `endtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `regdateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT true,
    `orderid` CHAR(32) NOT NULL DEFAULT '',
INDEX `uid`(`uid`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_magic` (
    `magicid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `available` BOOLEAN NOT NULL DEFAULT false,
    `name` VARCHAR(50) NOT NULL,
    `identifier` VARCHAR(40) NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `credit` BOOLEAN NOT NULL DEFAULT false,
    `price` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `num` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `salevolume` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `supplytype` BOOLEAN NOT NULL DEFAULT false,
    `supplynum` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `useperoid` BOOLEAN NOT NULL DEFAULT false,
    `usenum` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `weight` TINYINT UNSIGNED NOT NULL DEFAULT 1,
    `magicperm` TEXT NOT NULL,
    `useevent` BOOLEAN NOT NULL DEFAULT false,
UNIQUE INDEX `pre_common_magic.identifier_unique`(`identifier`),
INDEX `displayorder`(`available`, `displayorder`),

    PRIMARY KEY (`magicid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_magiclog` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `magicid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `action` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `amount` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `credit` BOOLEAN NOT NULL DEFAULT false,
    `price` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `targetid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `idtype` CHAR(6),
    `targetuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `action`(`action`),
INDEX `magicid`(`magicid`, `dateline`),
INDEX `targetuid`(`targetuid`, `dateline`),
INDEX `uid`(`uid`, `dateline`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_mailcron` (
    `cid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `touid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `email` VARCHAR(100) NOT NULL DEFAULT '',
    `sendtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `sendtime`(`sendtime`),

    PRIMARY KEY (`cid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_mailqueue` (
    `qid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `cid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `subject` TEXT NOT NULL,
    `message` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `mcid`(`cid`, `dateline`),

    PRIMARY KEY (`qid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member` (
    `uid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `email` CHAR(40) NOT NULL DEFAULT '',
    `username` CHAR(15) NOT NULL DEFAULT '',
    `password` CHAR(32) NOT NULL DEFAULT '',
    `status` BOOLEAN NOT NULL DEFAULT false,
    `emailstatus` BOOLEAN NOT NULL DEFAULT false,
    `avatarstatus` BOOLEAN NOT NULL DEFAULT false,
    `videophotostatus` BOOLEAN NOT NULL DEFAULT false,
    `adminid` BOOLEAN NOT NULL DEFAULT false,
    `groupid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `groupexpiry` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `extgroupids` CHAR(20) NOT NULL DEFAULT '',
    `regdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `credits` INTEGER NOT NULL DEFAULT 0,
    `notifysound` BOOLEAN NOT NULL DEFAULT false,
    `timeoffset` CHAR(4) NOT NULL DEFAULT '',
    `newpm` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `newprompt` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `accessmasks` BOOLEAN NOT NULL DEFAULT false,
    `allowadmincp` BOOLEAN NOT NULL DEFAULT false,
    `onlyacceptfriendpm` BOOLEAN NOT NULL DEFAULT false,
    `conisbind` BOOLEAN NOT NULL DEFAULT false,
    `freeze` BOOLEAN NOT NULL DEFAULT false,
UNIQUE INDEX `pre_common_member.username_unique`(`username`),
INDEX `conisbind`(`conisbind`),
INDEX `email`(`email`),
INDEX `groupid`(`groupid`),
INDEX `regdate`(`regdate`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_action_log` (
    `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `action` TINYINT NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`, `action`, `uid`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_archive` (
    `uid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `email` CHAR(40) NOT NULL DEFAULT '',
    `username` CHAR(15) NOT NULL DEFAULT '',
    `password` CHAR(32) NOT NULL DEFAULT '',
    `status` BOOLEAN NOT NULL DEFAULT false,
    `emailstatus` BOOLEAN NOT NULL DEFAULT false,
    `avatarstatus` BOOLEAN NOT NULL DEFAULT false,
    `videophotostatus` BOOLEAN NOT NULL DEFAULT false,
    `adminid` BOOLEAN NOT NULL DEFAULT false,
    `groupid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `groupexpiry` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `extgroupids` CHAR(20) NOT NULL DEFAULT '',
    `regdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `credits` INTEGER NOT NULL DEFAULT 0,
    `notifysound` BOOLEAN NOT NULL DEFAULT false,
    `timeoffset` CHAR(4) NOT NULL DEFAULT '',
    `newpm` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `newprompt` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `accessmasks` BOOLEAN NOT NULL DEFAULT false,
    `allowadmincp` BOOLEAN NOT NULL DEFAULT false,
    `onlyacceptfriendpm` BOOLEAN NOT NULL DEFAULT false,
    `conisbind` BOOLEAN NOT NULL DEFAULT false,
    `freeze` BOOLEAN NOT NULL DEFAULT false,
UNIQUE INDEX `pre_common_member_archive.username_unique`(`username`),
INDEX `conisbind`(`conisbind`),
INDEX `email`(`email`),
INDEX `groupid`(`groupid`),
INDEX `regdate`(`regdate`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_connect` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `conuin` CHAR(40) NOT NULL DEFAULT '',
    `conuinsecret` CHAR(16) NOT NULL DEFAULT '',
    `conopenid` CHAR(32) NOT NULL DEFAULT '',
    `conisfeed` BOOLEAN NOT NULL DEFAULT false,
    `conispublishfeed` BOOLEAN NOT NULL DEFAULT false,
    `conispublisht` BOOLEAN NOT NULL DEFAULT false,
    `conisregister` BOOLEAN NOT NULL DEFAULT false,
    `conisqzoneavatar` BOOLEAN NOT NULL DEFAULT false,
    `conisqqshow` BOOLEAN NOT NULL DEFAULT false,
    `conuintoken` CHAR(32) NOT NULL DEFAULT '',
INDEX `conopenid`(`conopenid`),
INDEX `conuin`(`conuin`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_count` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `extcredits1` INTEGER NOT NULL DEFAULT 0,
    `extcredits2` INTEGER NOT NULL DEFAULT 0,
    `extcredits3` INTEGER NOT NULL DEFAULT 0,
    `extcredits4` INTEGER NOT NULL DEFAULT 0,
    `extcredits5` INTEGER NOT NULL DEFAULT 0,
    `extcredits6` INTEGER NOT NULL DEFAULT 0,
    `extcredits7` INTEGER NOT NULL DEFAULT 0,
    `extcredits8` INTEGER NOT NULL DEFAULT 0,
    `friends` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `posts` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `threads` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `digestposts` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `doings` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `blogs` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `albums` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `sharings` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `attachsize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `views` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `oltime` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `todayattachs` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `todayattachsize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `feeds` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `follower` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `following` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `newfollower` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `blacklist` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `posts`(`posts`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_count_archive` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `extcredits1` INTEGER NOT NULL DEFAULT 0,
    `extcredits2` INTEGER NOT NULL DEFAULT 0,
    `extcredits3` INTEGER NOT NULL DEFAULT 0,
    `extcredits4` INTEGER NOT NULL DEFAULT 0,
    `extcredits5` INTEGER NOT NULL DEFAULT 0,
    `extcredits6` INTEGER NOT NULL DEFAULT 0,
    `extcredits7` INTEGER NOT NULL DEFAULT 0,
    `extcredits8` INTEGER NOT NULL DEFAULT 0,
    `friends` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `posts` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `threads` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `digestposts` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `doings` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `blogs` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `albums` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `sharings` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `attachsize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `views` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `oltime` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `todayattachs` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `todayattachsize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `feeds` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `follower` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `following` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `newfollower` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `blacklist` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `posts`(`posts`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_crime` (
    `cid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `operatorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `operator` VARCHAR(15) NOT NULL,
    `action` TINYINT NOT NULL,
    `reason` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `uid`(`uid`, `action`, `dateline`),

    PRIMARY KEY (`cid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_field_forum` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `publishfeed` TINYINT NOT NULL DEFAULT 0,
    `customshow` TINYINT UNSIGNED NOT NULL DEFAULT 26,
    `customstatus` VARCHAR(30) NOT NULL DEFAULT '',
    `medals` TEXT NOT NULL,
    `sightml` TEXT NOT NULL,
    `groupterms` TEXT NOT NULL,
    `authstr` VARCHAR(20) NOT NULL DEFAULT '',
    `groups` MEDIUMTEXT NOT NULL,
    `attentiongroup` VARCHAR(255) NOT NULL DEFAULT '',

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_field_forum_archive` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `publishfeed` TINYINT NOT NULL DEFAULT 0,
    `customshow` TINYINT UNSIGNED NOT NULL DEFAULT 26,
    `customstatus` VARCHAR(30) NOT NULL DEFAULT '',
    `medals` TEXT NOT NULL,
    `sightml` TEXT NOT NULL,
    `groupterms` TEXT NOT NULL,
    `authstr` VARCHAR(20) NOT NULL DEFAULT '',
    `groups` MEDIUMTEXT NOT NULL,
    `attentiongroup` VARCHAR(255) NOT NULL DEFAULT '',

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_field_home` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `videophoto` VARCHAR(255) NOT NULL DEFAULT '',
    `spacename` VARCHAR(255) NOT NULL DEFAULT '',
    `spacedescription` VARCHAR(255) NOT NULL DEFAULT '',
    `domain` CHAR(15) NOT NULL DEFAULT '',
    `addsize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `addfriend` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `menunum` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `theme` VARCHAR(20) NOT NULL DEFAULT '',
    `spacecss` TEXT NOT NULL,
    `blockposition` TEXT NOT NULL,
    `recentnote` TEXT NOT NULL,
    `spacenote` TEXT NOT NULL,
    `privacy` TEXT NOT NULL,
    `feedfriend` MEDIUMTEXT NOT NULL,
    `acceptemail` TEXT NOT NULL,
    `magicgift` TEXT NOT NULL,
    `stickblogs` TEXT NOT NULL,
INDEX `domain`(`domain`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_field_home_archive` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `videophoto` VARCHAR(255) NOT NULL DEFAULT '',
    `spacename` VARCHAR(255) NOT NULL DEFAULT '',
    `spacedescription` VARCHAR(255) NOT NULL DEFAULT '',
    `domain` CHAR(15) NOT NULL DEFAULT '',
    `addsize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `addfriend` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `menunum` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `theme` VARCHAR(20) NOT NULL DEFAULT '',
    `spacecss` TEXT NOT NULL,
    `blockposition` TEXT NOT NULL,
    `recentnote` TEXT NOT NULL,
    `spacenote` TEXT NOT NULL,
    `privacy` TEXT NOT NULL,
    `feedfriend` MEDIUMTEXT NOT NULL,
    `acceptemail` TEXT NOT NULL,
    `magicgift` TEXT NOT NULL,
    `stickblogs` TEXT NOT NULL,
INDEX `domain`(`domain`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_forum_buylog` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `credits` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `fid`(`fid`),

    PRIMARY KEY (`uid`,`fid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_grouppm` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `gpmid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`uid`,`gpmid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_log` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `action` CHAR(10) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_magic` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `magicid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `num` SMALLINT UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`uid`,`magicid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_medal` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `medalid` SMALLINT UNSIGNED NOT NULL,

    PRIMARY KEY (`uid`,`medalid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_newprompt` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `data` VARCHAR(255) NOT NULL DEFAULT '',

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_profile` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `realname` VARCHAR(255) NOT NULL DEFAULT '',
    `gender` BOOLEAN NOT NULL DEFAULT false,
    `birthyear` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `birthmonth` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `birthday` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `constellation` VARCHAR(255) NOT NULL DEFAULT '',
    `zodiac` VARCHAR(255) NOT NULL DEFAULT '',
    `telephone` VARCHAR(255) NOT NULL DEFAULT '',
    `mobile` VARCHAR(255) NOT NULL DEFAULT '',
    `idcardtype` VARCHAR(255) NOT NULL DEFAULT '',
    `idcard` VARCHAR(255) NOT NULL DEFAULT '',
    `address` VARCHAR(255) NOT NULL DEFAULT '',
    `zipcode` VARCHAR(255) NOT NULL DEFAULT '',
    `nationality` VARCHAR(255) NOT NULL DEFAULT '',
    `birthprovince` VARCHAR(255) NOT NULL DEFAULT '',
    `birthcity` VARCHAR(255) NOT NULL DEFAULT '',
    `birthdist` VARCHAR(20) NOT NULL DEFAULT '',
    `birthcommunity` VARCHAR(255) NOT NULL DEFAULT '',
    `resideprovince` VARCHAR(255) NOT NULL DEFAULT '',
    `residecity` VARCHAR(255) NOT NULL DEFAULT '',
    `residedist` VARCHAR(20) NOT NULL DEFAULT '',
    `residecommunity` VARCHAR(255) NOT NULL DEFAULT '',
    `residesuite` VARCHAR(255) NOT NULL DEFAULT '',
    `graduateschool` VARCHAR(255) NOT NULL DEFAULT '',
    `company` VARCHAR(255) NOT NULL DEFAULT '',
    `education` VARCHAR(255) NOT NULL DEFAULT '',
    `occupation` VARCHAR(255) NOT NULL DEFAULT '',
    `position` VARCHAR(255) NOT NULL DEFAULT '',
    `revenue` VARCHAR(255) NOT NULL DEFAULT '',
    `affectivestatus` VARCHAR(255) NOT NULL DEFAULT '',
    `lookingfor` VARCHAR(255) NOT NULL DEFAULT '',
    `bloodtype` VARCHAR(255) NOT NULL DEFAULT '',
    `height` VARCHAR(255) NOT NULL DEFAULT '',
    `weight` VARCHAR(255) NOT NULL DEFAULT '',
    `alipay` VARCHAR(255) NOT NULL DEFAULT '',
    `icq` VARCHAR(255) NOT NULL DEFAULT '',
    `qq` VARCHAR(255) NOT NULL DEFAULT '',
    `yahoo` VARCHAR(255) NOT NULL DEFAULT '',
    `msn` VARCHAR(255) NOT NULL DEFAULT '',
    `taobao` VARCHAR(255) NOT NULL DEFAULT '',
    `site` VARCHAR(255) NOT NULL DEFAULT '',
    `bio` TEXT NOT NULL,
    `interest` TEXT NOT NULL,
    `field1` TEXT NOT NULL,
    `field2` TEXT NOT NULL,
    `field3` TEXT NOT NULL,
    `field4` TEXT NOT NULL,
    `field5` TEXT NOT NULL,
    `field6` TEXT NOT NULL,
    `field7` TEXT NOT NULL,
    `field8` TEXT NOT NULL,

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_profile_archive` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `realname` VARCHAR(255) NOT NULL DEFAULT '',
    `gender` BOOLEAN NOT NULL DEFAULT false,
    `birthyear` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `birthmonth` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `birthday` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `constellation` VARCHAR(255) NOT NULL DEFAULT '',
    `zodiac` VARCHAR(255) NOT NULL DEFAULT '',
    `telephone` VARCHAR(255) NOT NULL DEFAULT '',
    `mobile` VARCHAR(255) NOT NULL DEFAULT '',
    `idcardtype` VARCHAR(255) NOT NULL DEFAULT '',
    `idcard` VARCHAR(255) NOT NULL DEFAULT '',
    `address` VARCHAR(255) NOT NULL DEFAULT '',
    `zipcode` VARCHAR(255) NOT NULL DEFAULT '',
    `nationality` VARCHAR(255) NOT NULL DEFAULT '',
    `birthprovince` VARCHAR(255) NOT NULL DEFAULT '',
    `birthcity` VARCHAR(255) NOT NULL DEFAULT '',
    `birthdist` VARCHAR(20) NOT NULL DEFAULT '',
    `birthcommunity` VARCHAR(255) NOT NULL DEFAULT '',
    `resideprovince` VARCHAR(255) NOT NULL DEFAULT '',
    `residecity` VARCHAR(255) NOT NULL DEFAULT '',
    `residedist` VARCHAR(20) NOT NULL DEFAULT '',
    `residecommunity` VARCHAR(255) NOT NULL DEFAULT '',
    `residesuite` VARCHAR(255) NOT NULL DEFAULT '',
    `graduateschool` VARCHAR(255) NOT NULL DEFAULT '',
    `company` VARCHAR(255) NOT NULL DEFAULT '',
    `education` VARCHAR(255) NOT NULL DEFAULT '',
    `occupation` VARCHAR(255) NOT NULL DEFAULT '',
    `position` VARCHAR(255) NOT NULL DEFAULT '',
    `revenue` VARCHAR(255) NOT NULL DEFAULT '',
    `affectivestatus` VARCHAR(255) NOT NULL DEFAULT '',
    `lookingfor` VARCHAR(255) NOT NULL DEFAULT '',
    `bloodtype` VARCHAR(255) NOT NULL DEFAULT '',
    `height` VARCHAR(255) NOT NULL DEFAULT '',
    `weight` VARCHAR(255) NOT NULL DEFAULT '',
    `alipay` VARCHAR(255) NOT NULL DEFAULT '',
    `icq` VARCHAR(255) NOT NULL DEFAULT '',
    `qq` VARCHAR(255) NOT NULL DEFAULT '',
    `yahoo` VARCHAR(255) NOT NULL DEFAULT '',
    `msn` VARCHAR(255) NOT NULL DEFAULT '',
    `taobao` VARCHAR(255) NOT NULL DEFAULT '',
    `site` VARCHAR(255) NOT NULL DEFAULT '',
    `bio` TEXT NOT NULL,
    `interest` TEXT NOT NULL,
    `field1` TEXT NOT NULL,
    `field2` TEXT NOT NULL,
    `field3` TEXT NOT NULL,
    `field4` TEXT NOT NULL,
    `field5` TEXT NOT NULL,
    `field6` TEXT NOT NULL,
    `field7` TEXT NOT NULL,
    `field8` TEXT NOT NULL,

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_profile_setting` (
    `fieldid` VARCHAR(255) NOT NULL DEFAULT '',
    `available` BOOLEAN NOT NULL DEFAULT false,
    `invisible` BOOLEAN NOT NULL DEFAULT false,
    `needverify` BOOLEAN NOT NULL DEFAULT false,
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `description` VARCHAR(255) NOT NULL DEFAULT '',
    `displayorder` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `required` BOOLEAN NOT NULL DEFAULT false,
    `unchangeable` BOOLEAN NOT NULL DEFAULT false,
    `showincard` BOOLEAN NOT NULL DEFAULT false,
    `showinthread` BOOLEAN NOT NULL DEFAULT false,
    `showinregister` BOOLEAN NOT NULL DEFAULT false,
    `allowsearch` BOOLEAN NOT NULL DEFAULT false,
    `formtype` VARCHAR(255) NOT NULL,
    `size` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `choices` TEXT NOT NULL,
    `validate` TEXT NOT NULL,

    PRIMARY KEY (`fieldid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_security` (
    `securityid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(255) NOT NULL DEFAULT '',
    `fieldid` VARCHAR(255) NOT NULL DEFAULT '',
    `oldvalue` TEXT NOT NULL,
    `newvalue` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),
INDEX `uid`(`uid`, `fieldid`),

    PRIMARY KEY (`securityid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_secwhite` (
    `uid` INTEGER NOT NULL,
    `dateline` INTEGER NOT NULL,

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_status` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `regip` CHAR(15) NOT NULL DEFAULT '',
    `lastip` CHAR(15) NOT NULL DEFAULT '',
    `port` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `lastvisit` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastactivity` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastpost` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastsendmail` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `invisible` BOOLEAN NOT NULL DEFAULT false,
    `buyercredit` SMALLINT NOT NULL DEFAULT 0,
    `sellercredit` SMALLINT NOT NULL DEFAULT 0,
    `favtimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `sharetimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `profileprogress` TINYINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `lastactivity`(`lastactivity`, `invisible`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_status_archive` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `regip` CHAR(15) NOT NULL DEFAULT '',
    `lastip` CHAR(15) NOT NULL DEFAULT '',
    `port` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `lastvisit` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastactivity` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastpost` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastsendmail` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `invisible` BOOLEAN NOT NULL DEFAULT false,
    `buyercredit` SMALLINT NOT NULL DEFAULT 0,
    `sellercredit` SMALLINT NOT NULL DEFAULT 0,
    `favtimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `sharetimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `profileprogress` TINYINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `lastactivity`(`lastactivity`, `invisible`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_stat_field` (
    `optionid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `fieldid` VARCHAR(255) NOT NULL DEFAULT '',
    `fieldvalue` VARCHAR(255) NOT NULL DEFAULT '',
    `hash` VARCHAR(255) NOT NULL DEFAULT '',
    `users` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `updatetime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `fieldid`(`fieldid`),

    PRIMARY KEY (`optionid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_stat_fieldcache` (
    `optionid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`optionid`,`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_stat_search` (
    `optionid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `condition` TEXT NOT NULL,
    `hash` VARCHAR(255) NOT NULL DEFAULT '',
    `users` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `updatetime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `hash`(`hash`),

    PRIMARY KEY (`optionid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_stat_searchcache` (
    `optionid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`optionid`,`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_validate` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `submitdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `moddate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `admin` VARCHAR(15) NOT NULL DEFAULT '',
    `submittimes` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT false,
    `message` TEXT NOT NULL,
    `remark` TEXT NOT NULL,
INDEX `status`(`status`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_verify` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `verify1` BOOLEAN NOT NULL DEFAULT false,
    `verify2` BOOLEAN NOT NULL DEFAULT false,
    `verify3` BOOLEAN NOT NULL DEFAULT false,
    `verify4` BOOLEAN NOT NULL DEFAULT false,
    `verify5` BOOLEAN NOT NULL DEFAULT false,
    `verify6` BOOLEAN NOT NULL DEFAULT false,
    `verify7` BOOLEAN NOT NULL DEFAULT false,
INDEX `verify1`(`verify1`),
INDEX `verify2`(`verify2`),
INDEX `verify3`(`verify3`),
INDEX `verify4`(`verify4`),
INDEX `verify5`(`verify5`),
INDEX `verify6`(`verify6`),
INDEX `verify7`(`verify7`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_verify_info` (
    `vid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(30) NOT NULL DEFAULT '',
    `verifytype` BOOLEAN NOT NULL DEFAULT false,
    `flag` BOOLEAN NOT NULL DEFAULT false,
    `field` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `uid`(`uid`, `verifytype`, `dateline`),
INDEX `verifytype`(`verifytype`, `flag`),

    PRIMARY KEY (`vid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_wechat` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `openid` CHAR(32) NOT NULL DEFAULT '',
    `status` BOOLEAN NOT NULL DEFAULT false,
    `isregister` BOOLEAN NOT NULL DEFAULT false,
UNIQUE INDEX `pre_common_member_wechat.openid_unique`(`openid`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_member_wechatmp` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `openid` CHAR(32) NOT NULL DEFAULT '',
    `status` BOOLEAN NOT NULL DEFAULT false,
INDEX `openid`(`openid`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_moderate` (
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `idtype` VARCHAR(15) NOT NULL DEFAULT '',
    `status` TINYINT NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `idtype`(`idtype`, `status`, `dateline`),

    PRIMARY KEY (`id`,`idtype`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_myapp` (
    `appid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `appname` VARCHAR(60) NOT NULL DEFAULT '',
    `narrow` BOOLEAN NOT NULL DEFAULT false,
    `flag` BOOLEAN NOT NULL DEFAULT false,
    `version` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `userpanelarea` BOOLEAN NOT NULL DEFAULT false,
    `canvastitle` VARCHAR(60) NOT NULL DEFAULT '',
    `fullscreen` BOOLEAN NOT NULL DEFAULT false,
    `displayuserpanel` BOOLEAN NOT NULL DEFAULT false,
    `displaymethod` BOOLEAN NOT NULL DEFAULT false,
    `displayorder` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `appstatus` TINYINT NOT NULL DEFAULT 0,
    `iconstatus` TINYINT NOT NULL DEFAULT 0,
    `icondowntime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `flag`(`flag`, `displayorder`),

    PRIMARY KEY (`appid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_myinvite` (
    `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `typename` VARCHAR(100) NOT NULL DEFAULT '',
    `appid` MEDIUMINT NOT NULL DEFAULT 0,
    `type` BOOLEAN NOT NULL DEFAULT false,
    `fromuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `touid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `myml` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `hash` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `hash`(`hash`),
INDEX `uid`(`touid`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_mytask` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `username` CHAR(15) NOT NULL DEFAULT '',
    `taskid` SMALLINT UNSIGNED NOT NULL,
    `status` BOOLEAN NOT NULL DEFAULT false,
    `csc` CHAR(255) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `parter`(`taskid`, `dateline`),

    PRIMARY KEY (`uid`,`taskid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_nav` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `parentid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `name` VARCHAR(255) NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    `identifier` VARCHAR(255) NOT NULL,
    `target` BOOLEAN NOT NULL DEFAULT false,
    `type` BOOLEAN NOT NULL DEFAULT false,
    `available` BOOLEAN NOT NULL DEFAULT false,
    `displayorder` TINYINT NOT NULL,
    `highlight` BOOLEAN NOT NULL DEFAULT false,
    `level` BOOLEAN NOT NULL DEFAULT false,
    `subtype` BOOLEAN NOT NULL DEFAULT false,
    `subcols` BOOLEAN NOT NULL DEFAULT false,
    `icon` VARCHAR(255) NOT NULL,
    `subname` VARCHAR(255) NOT NULL,
    `suburl` VARCHAR(255) NOT NULL,
    `navtype` BOOLEAN NOT NULL DEFAULT false,
    `logo` VARCHAR(255) NOT NULL,
INDEX `navtype`(`navtype`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_onlinetime` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `thismonth` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `total` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `lastupdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_optimizer` (
    `k` CHAR(100) NOT NULL DEFAULT '',
    `v` CHAR(255) NOT NULL DEFAULT '',

    PRIMARY KEY (`k`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_patch` (
    `serial` VARCHAR(10) NOT NULL DEFAULT '',
    `rule` TEXT NOT NULL,
    `note` TEXT NOT NULL,
    `status` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`serial`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_plugin` (
    `pluginid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `available` BOOLEAN NOT NULL DEFAULT false,
    `adminid` BOOLEAN NOT NULL DEFAULT false,
    `name` VARCHAR(40) NOT NULL DEFAULT '',
    `identifier` VARCHAR(40) NOT NULL DEFAULT '',
    `description` VARCHAR(255) NOT NULL DEFAULT '',
    `datatables` VARCHAR(255) NOT NULL DEFAULT '',
    `directory` VARCHAR(100) NOT NULL DEFAULT '',
    `copyright` VARCHAR(100) NOT NULL DEFAULT '',
    `modules` TEXT NOT NULL,
    `version` VARCHAR(20) NOT NULL DEFAULT '',
UNIQUE INDEX `pre_common_plugin.identifier_unique`(`identifier`),

    PRIMARY KEY (`pluginid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_pluginvar` (
    `pluginvarid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `pluginid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `title` VARCHAR(100) NOT NULL DEFAULT '',
    `description` VARCHAR(255) NOT NULL DEFAULT '',
    `variable` VARCHAR(40) NOT NULL DEFAULT '',
    `type` VARCHAR(20) NOT NULL DEFAULT 'text',
    `value` TEXT NOT NULL,
    `extra` TEXT NOT NULL,
INDEX `pluginid`(`pluginid`),

    PRIMARY KEY (`pluginvarid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_process` (
    `processid` CHAR(32) NOT NULL,
    `expiry` INTEGER,
    `extra` INTEGER,
INDEX `expiry`(`expiry`),

    PRIMARY KEY (`processid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_regip` (
    `ip` CHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `count` SMALLINT NOT NULL DEFAULT 0,
INDEX `ip`(`ip`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_relatedlink` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL DEFAULT '',
    `url` VARCHAR(255) NOT NULL DEFAULT '',
    `extent` TINYINT NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_remote_port` (
    `id` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `idtype` CHAR(15) NOT NULL DEFAULT '',
    `useip` CHAR(15) NOT NULL DEFAULT '',
    `port` SMALLINT UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`,`idtype`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_report` (
    `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `urlkey` CHAR(32) NOT NULL DEFAULT '',
    `url` VARCHAR(255) NOT NULL DEFAULT '',
    `message` TEXT NOT NULL,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `num` SMALLINT UNSIGNED NOT NULL DEFAULT 1,
    `opuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `opname` VARCHAR(15) NOT NULL DEFAULT '',
    `optime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `opresult` VARCHAR(255) NOT NULL DEFAULT '',
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `fid`(`fid`),
INDEX `urlkey`(`urlkey`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_searchindex` (
    `searchid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `srchmod` TINYINT UNSIGNED NOT NULL,
    `keywords` VARCHAR(255) NOT NULL DEFAULT '',
    `searchstring` TEXT NOT NULL,
    `useip` VARCHAR(15) NOT NULL DEFAULT '',
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `expiration` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `threadsortid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `num` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `ids` TEXT NOT NULL,
INDEX `srchmod`(`srchmod`),

    PRIMARY KEY (`searchid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_seccheck` (
    `ssid` INTEGER NOT NULL AUTO_INCREMENT,
    `dateline` INTEGER NOT NULL,
    `code` CHAR(6) NOT NULL,
    `succeed` BOOLEAN NOT NULL,
    `verified` BOOLEAN NOT NULL,
INDEX `dateline`(`dateline`),
INDEX `succeed`(`succeed`),
INDEX `verified`(`verified`),

    PRIMARY KEY (`ssid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_secquestion` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` BOOLEAN NOT NULL,
    `question` TEXT NOT NULL,
    `answer` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_session` (
    `sid` CHAR(6) NOT NULL DEFAULT '',
    `ip1` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `ip2` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `ip3` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `ip4` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` CHAR(15) NOT NULL DEFAULT '',
    `groupid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `invisible` BOOLEAN NOT NULL DEFAULT false,
    `action` BOOLEAN NOT NULL DEFAULT false,
    `lastactivity` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastolupdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
UNIQUE INDEX `pre_common_session.sid_unique`(`sid`),
INDEX `uid`(`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_setting` (
    `skey` VARCHAR(255) NOT NULL DEFAULT '',
    `svalue` TEXT NOT NULL,

    PRIMARY KEY (`skey`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_smiley` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `typeid` SMALLINT UNSIGNED NOT NULL,
    `displayorder` BOOLEAN NOT NULL DEFAULT false,
    `type` ENUM('smiley', 'stamp', 'stamplist') NOT NULL DEFAULT 'smiley',
    `code` VARCHAR(30) NOT NULL DEFAULT '',
    `url` VARCHAR(30) NOT NULL DEFAULT '',
INDEX `type`(`type`, `displayorder`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_sphinxcounter` (
    `indexid` BOOLEAN NOT NULL,
    `maxid` INTEGER NOT NULL,

    PRIMARY KEY (`indexid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_stat` (
    `daytime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `login` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `mobilelogin` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `connectlogin` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `register` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `invite` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `appinvite` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `doing` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `blog` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `pic` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `poll` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `activity` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `share` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `thread` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `docomment` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `blogcomment` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `piccomment` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `sharecomment` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `reward` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `debate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `trade` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `group` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `groupjoin` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `groupthread` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `grouppost` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `post` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `wall` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `poke` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `click` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `sendpm` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `friend` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `addfriend` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`daytime`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_statuser` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `daytime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `type` CHAR(20) NOT NULL DEFAULT '',
INDEX `uid`(`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_style` (
    `styleid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL DEFAULT '',
    `available` BOOLEAN NOT NULL DEFAULT true,
    `templateid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `extstyle` VARCHAR(255) NOT NULL DEFAULT '',

    PRIMARY KEY (`styleid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_stylevar` (
    `stylevarid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `styleid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `variable` TEXT NOT NULL,
    `substitute` TEXT NOT NULL,
INDEX `styleid`(`styleid`),

    PRIMARY KEY (`stylevarid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_syscache` (
    `cname` VARCHAR(32) NOT NULL,
    `ctype` TINYINT UNSIGNED NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL,
    `data` MEDIUMBLOB NOT NULL,

    PRIMARY KEY (`cname`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_tag` (
    `tagid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `tagname` CHAR(20) NOT NULL DEFAULT '',
    `status` BOOLEAN NOT NULL DEFAULT false,
INDEX `status`(`status`, `tagid`),
INDEX `tagname`(`tagname`),

    PRIMARY KEY (`tagid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_tagitem` (
    `tagid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `tagname` VARCHAR(20) NOT NULL DEFAULT '',
    `itemid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `idtype` CHAR(10) NOT NULL DEFAULT '',
UNIQUE INDEX `item`(`tagid`, `itemid`, `idtype`),
INDEX `idtype`(`idtype`, `itemid`),
INDEX `tagid`(`tagid`, `idtype`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_task` (
    `taskid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `relatedtaskid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `available` BOOLEAN NOT NULL DEFAULT false,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `description` TEXT NOT NULL,
    `icon` VARCHAR(150) NOT NULL DEFAULT '',
    `applicants` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `achievers` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `tasklimits` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `applyperm` TEXT NOT NULL,
    `scriptname` VARCHAR(50) NOT NULL DEFAULT '',
    `starttime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `endtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `period` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `periodtype` BOOLEAN NOT NULL DEFAULT false,
    `reward` ENUM('credit', 'magic', 'medal', 'invite', 'group') NOT NULL DEFAULT 'credit',
    `prize` VARCHAR(15) NOT NULL DEFAULT '',
    `bonus` INTEGER NOT NULL DEFAULT 0,
    `displayorder` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `version` VARCHAR(15) NOT NULL DEFAULT '',

    PRIMARY KEY (`taskid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_taskvar` (
    `taskvarid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `taskid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `sort` ENUM('apply', 'complete') NOT NULL DEFAULT 'complete',
    `name` VARCHAR(100) NOT NULL DEFAULT '',
    `description` VARCHAR(255) NOT NULL DEFAULT '',
    `variable` VARCHAR(40) NOT NULL DEFAULT '',
    `type` VARCHAR(20) NOT NULL DEFAULT 'text',
    `value` TEXT NOT NULL,
INDEX `taskid`(`taskid`),

    PRIMARY KEY (`taskvarid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_template` (
    `templateid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL DEFAULT '',
    `directory` VARCHAR(100) NOT NULL DEFAULT '',
    `copyright` VARCHAR(100) NOT NULL DEFAULT '',

    PRIMARY KEY (`templateid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_template_block` (
    `targettplname` VARCHAR(100) NOT NULL DEFAULT '',
    `tpldirectory` VARCHAR(80) NOT NULL DEFAULT '',
    `bid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `bid`(`bid`),

    PRIMARY KEY (`targettplname`,`tpldirectory`,`bid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_template_permission` (
    `targettplname` VARCHAR(100) NOT NULL DEFAULT '',
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `allowmanage` BOOLEAN NOT NULL DEFAULT false,
    `allowrecommend` BOOLEAN NOT NULL DEFAULT false,
    `needverify` BOOLEAN NOT NULL DEFAULT false,
    `inheritedtplname` VARCHAR(255) NOT NULL DEFAULT '',
INDEX `uid`(`uid`),

    PRIMARY KEY (`targettplname`,`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_uin_black` (
    `uin` CHAR(40) NOT NULL,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
UNIQUE INDEX `pre_common_uin_black.uid_unique`(`uid`),

    PRIMARY KEY (`uin`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_usergroup` (
    `groupid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `radminid` TINYINT NOT NULL DEFAULT 0,
    `type` ENUM('system', 'special', 'member') NOT NULL DEFAULT 'member',
    `system` VARCHAR(255) NOT NULL DEFAULT 'private',
    `grouptitle` VARCHAR(255) NOT NULL DEFAULT '',
    `creditshigher` INTEGER NOT NULL DEFAULT 0,
    `creditslower` INTEGER NOT NULL DEFAULT 0,
    `stars` TINYINT NOT NULL DEFAULT 0,
    `color` VARCHAR(255) NOT NULL DEFAULT '',
    `icon` VARCHAR(255) NOT NULL DEFAULT '',
    `allowvisit` BOOLEAN NOT NULL DEFAULT false,
    `allowsendpm` BOOLEAN NOT NULL DEFAULT true,
    `allowinvite` BOOLEAN NOT NULL DEFAULT false,
    `allowmailinvite` BOOLEAN NOT NULL DEFAULT false,
    `maxinvitenum` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `inviteprice` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `maxinviteday` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `creditsrange`(`creditshigher`, `creditslower`),

    PRIMARY KEY (`groupid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_usergroup_field` (
    `groupid` SMALLINT UNSIGNED NOT NULL,
    `readaccess` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `allowpost` BOOLEAN NOT NULL DEFAULT false,
    `allowreply` BOOLEAN NOT NULL DEFAULT false,
    `allowpostpoll` BOOLEAN NOT NULL DEFAULT false,
    `allowpostreward` BOOLEAN NOT NULL DEFAULT false,
    `allowposttrade` BOOLEAN NOT NULL DEFAULT false,
    `allowpostactivity` BOOLEAN NOT NULL DEFAULT false,
    `allowdirectpost` BOOLEAN NOT NULL DEFAULT false,
    `allowgetattach` BOOLEAN NOT NULL DEFAULT false,
    `allowgetimage` BOOLEAN NOT NULL DEFAULT false,
    `allowpostattach` BOOLEAN NOT NULL DEFAULT false,
    `allowpostimage` BOOLEAN NOT NULL DEFAULT false,
    `allowvote` BOOLEAN NOT NULL DEFAULT false,
    `allowsearch` BOOLEAN NOT NULL DEFAULT false,
    `allowcstatus` BOOLEAN NOT NULL DEFAULT false,
    `allowinvisible` BOOLEAN NOT NULL DEFAULT false,
    `allowtransfer` BOOLEAN NOT NULL DEFAULT false,
    `allowsetreadperm` BOOLEAN NOT NULL DEFAULT false,
    `allowsetattachperm` BOOLEAN NOT NULL DEFAULT false,
    `allowposttag` BOOLEAN NOT NULL DEFAULT false,
    `allowhidecode` BOOLEAN NOT NULL DEFAULT false,
    `allowhtml` BOOLEAN NOT NULL DEFAULT false,
    `allowanonymous` BOOLEAN NOT NULL DEFAULT false,
    `allowsigbbcode` BOOLEAN NOT NULL DEFAULT false,
    `allowsigimgcode` BOOLEAN NOT NULL DEFAULT false,
    `allowmagics` BOOLEAN NOT NULL,
    `disableperiodctrl` BOOLEAN NOT NULL DEFAULT false,
    `reasonpm` BOOLEAN NOT NULL DEFAULT false,
    `maxprice` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `maxsigsize` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `maxattachsize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `maxsizeperday` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `maxthreadsperhour` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `maxpostsperhour` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `attachextensions` CHAR(100) NOT NULL DEFAULT '',
    `raterange` CHAR(150) NOT NULL DEFAULT '',
    `loginreward` CHAR(150) NOT NULL DEFAULT '',
    `mintradeprice` SMALLINT UNSIGNED NOT NULL DEFAULT 1,
    `maxtradeprice` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `minrewardprice` SMALLINT UNSIGNED NOT NULL DEFAULT 1,
    `maxrewardprice` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `magicsdiscount` BOOLEAN NOT NULL,
    `maxmagicsweight` SMALLINT UNSIGNED NOT NULL,
    `allowpostdebate` BOOLEAN NOT NULL DEFAULT false,
    `tradestick` BOOLEAN NOT NULL,
    `exempt` BOOLEAN NOT NULL,
    `maxattachnum` SMALLINT NOT NULL DEFAULT 0,
    `allowposturl` TINYINT NOT NULL DEFAULT 3,
    `allowrecommend` BOOLEAN NOT NULL DEFAULT true,
    `allowpostrushreply` BOOLEAN NOT NULL DEFAULT false,
    `maxfriendnum` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `maxspacesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `allowcomment` BOOLEAN NOT NULL DEFAULT false,
    `allowcommentarticle` SMALLINT NOT NULL DEFAULT 0,
    `searchinterval` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `searchignore` BOOLEAN NOT NULL DEFAULT false,
    `allowblog` BOOLEAN NOT NULL DEFAULT false,
    `allowdoing` BOOLEAN NOT NULL DEFAULT false,
    `allowupload` BOOLEAN NOT NULL DEFAULT false,
    `allowshare` BOOLEAN NOT NULL DEFAULT false,
    `allowblogmod` BOOLEAN NOT NULL DEFAULT false,
    `allowdoingmod` BOOLEAN NOT NULL DEFAULT false,
    `allowuploadmod` BOOLEAN NOT NULL DEFAULT false,
    `allowsharemod` BOOLEAN NOT NULL DEFAULT false,
    `allowcss` BOOLEAN NOT NULL DEFAULT false,
    `allowpoke` BOOLEAN NOT NULL DEFAULT false,
    `allowfriend` BOOLEAN NOT NULL DEFAULT false,
    `allowclick` BOOLEAN NOT NULL DEFAULT false,
    `allowmagic` BOOLEAN NOT NULL DEFAULT false,
    `allowstat` BOOLEAN NOT NULL DEFAULT false,
    `allowstatdata` BOOLEAN NOT NULL DEFAULT false,
    `videophotoignore` BOOLEAN NOT NULL DEFAULT false,
    `allowviewvideophoto` BOOLEAN NOT NULL DEFAULT false,
    `allowmyop` BOOLEAN NOT NULL DEFAULT false,
    `magicdiscount` BOOLEAN NOT NULL DEFAULT false,
    `domainlength` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `seccode` BOOLEAN NOT NULL DEFAULT true,
    `disablepostctrl` BOOLEAN NOT NULL DEFAULT false,
    `allowbuildgroup` BOOLEAN NOT NULL DEFAULT false,
    `allowgroupdirectpost` BOOLEAN NOT NULL DEFAULT false,
    `allowgroupposturl` BOOLEAN NOT NULL DEFAULT false,
    `edittimelimit` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `allowpostarticle` BOOLEAN NOT NULL DEFAULT false,
    `allowdownlocalimg` BOOLEAN NOT NULL DEFAULT false,
    `allowdownremoteimg` BOOLEAN NOT NULL DEFAULT false,
    `allowpostarticlemod` BOOLEAN NOT NULL DEFAULT false,
    `allowspacediyhtml` BOOLEAN NOT NULL DEFAULT false,
    `allowspacediybbcode` BOOLEAN NOT NULL DEFAULT false,
    `allowspacediyimgcode` BOOLEAN NOT NULL DEFAULT false,
    `allowcommentpost` TINYINT NOT NULL DEFAULT 2,
    `allowcommentitem` BOOLEAN NOT NULL DEFAULT false,
    `allowcommentreply` BOOLEAN NOT NULL DEFAULT false,
    `allowreplycredit` BOOLEAN NOT NULL DEFAULT false,
    `ignorecensor` BOOLEAN NOT NULL DEFAULT false,
    `allowsendallpm` BOOLEAN NOT NULL DEFAULT false,
    `allowsendpmmaxnum` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `maximagesize` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `allowmediacode` BOOLEAN NOT NULL DEFAULT false,
    `allowbegincode` BOOLEAN NOT NULL DEFAULT false,
    `allowat` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `allowsetpublishdate` BOOLEAN NOT NULL DEFAULT false,
    `allowfollowcollection` BOOLEAN NOT NULL DEFAULT false,
    `allowcommentcollection` BOOLEAN NOT NULL DEFAULT false,
    `allowcreatecollection` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `forcesecques` BOOLEAN NOT NULL DEFAULT false,
    `forcelogin` BOOLEAN NOT NULL DEFAULT false,
    `closead` BOOLEAN NOT NULL DEFAULT false,
    `buildgroupcredits` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `allowimgcontent` BOOLEAN NOT NULL DEFAULT false,

    PRIMARY KEY (`groupid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_visit` (
    `ip` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `view` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `ip`(`ip`, `view`),

    PRIMARY KEY (`ip`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_vphone` (
    `phone` BIGINT UNSIGNED NOT NULL,
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `country_code` CHAR(40) NOT NULL DEFAULT '86',
UNIQUE INDEX `pre_common_vphone.uid_unique`(`uid`),

    PRIMARY KEY (`phone`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_word` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `admin` VARCHAR(15) NOT NULL DEFAULT '',
    `type` SMALLINT NOT NULL DEFAULT 1,
    `find` VARCHAR(255) NOT NULL DEFAULT '',
    `replacement` VARCHAR(255) NOT NULL DEFAULT '',
    `extra` VARCHAR(255) NOT NULL DEFAULT '',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_common_word_type` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `typename` VARCHAR(15) NOT NULL DEFAULT '',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_connect_disktask` (
    `taskid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `aid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `openid` CHAR(32) NOT NULL DEFAULT '',
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `verifycode` CHAR(32) NOT NULL DEFAULT '',
    `status` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `downloadtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `extra` TEXT,
INDEX `openid`(`openid`),
INDEX `status`(`status`),

    PRIMARY KEY (`taskid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_connect_feedlog` (
    `flid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `publishtimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `lastpublished` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT true,
UNIQUE INDEX `pre_connect_feedlog.tid_unique`(`tid`),

    PRIMARY KEY (`flid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_connect_memberbindlog` (
    `mblid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uin` CHAR(40) NOT NULL,
    `type` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),
INDEX `uid`(`uid`),
INDEX `uin`(`uin`),

    PRIMARY KEY (`mblid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_connect_postfeedlog` (
    `flid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `publishtimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `lastpublished` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT true,
UNIQUE INDEX `pre_connect_postfeedlog.pid_unique`(`pid`),

    PRIMARY KEY (`flid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_connect_tlog` (
    `tlid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `publishtimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `lastpublished` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT true,
UNIQUE INDEX `pre_connect_tlog.tid_unique`(`tid`),

    PRIMARY KEY (`tlid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_connect_tthreadlog` (
    `twid` CHAR(16) NOT NULL,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `conopenid` CHAR(32) NOT NULL,
    `pagetime` INTEGER UNSIGNED DEFAULT 0,
    `lasttwid` CHAR(16),
    `nexttime` INTEGER UNSIGNED DEFAULT 0,
    `updatetime` INTEGER UNSIGNED DEFAULT 0,
    `dateline` INTEGER UNSIGNED DEFAULT 0,
INDEX `nexttime`(`tid`, `nexttime`),
INDEX `updatetime`(`tid`, `updatetime`),

    PRIMARY KEY (`twid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_dpwactivity_mobile_adv` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `tid` INTEGER,
    `fid` INTEGER,
    `author` VARCHAR(30),
    `authorid` MEDIUMINT UNSIGNED NOT NULL,
    `subject` VARCHAR(80),
    `expires` INTEGER,
    `available` INTEGER DEFAULT 1,
    `url` VARCHAR(255) NOT NULL,
    `imgsrc` VARCHAR(255) NOT NULL,
    `isfocus` INTEGER DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `displayorder` MEDIUMINT UNSIGNED NOT NULL,
    `ext1` VARCHAR(255) NOT NULL,
    `ext2` VARCHAR(255) NOT NULL,
    `ext3` VARCHAR(255) NOT NULL,
    `ext4` VARCHAR(255) NOT NULL,
    `ext5` VARCHAR(255) NOT NULL,
    `ext6` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_dsu_paulsign` (
    `uid` INTEGER UNSIGNED NOT NULL,
    `time` INTEGER NOT NULL,
    `days` INTEGER NOT NULL DEFAULT 0,
    `lasted` INTEGER NOT NULL DEFAULT 0,
    `mdays` INTEGER NOT NULL DEFAULT 0,
    `reward` INTEGER NOT NULL DEFAULT 0,
    `lastreward` INTEGER NOT NULL DEFAULT 0,
    `qdxq` VARCHAR(5) NOT NULL,
    `todaysay` VARCHAR(100) NOT NULL,
INDEX `time`(`time`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_dsu_paulsignemot` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `qdxq` VARCHAR(5) NOT NULL,
    `count` INTEGER NOT NULL DEFAULT 0,
    `name` VARCHAR(20) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_dsu_paulsignset` (
    `id` INTEGER UNSIGNED NOT NULL,
    `todayq` INTEGER NOT NULL DEFAULT 0,
    `yesterdayq` INTEGER NOT NULL DEFAULT 0,
    `highestq` INTEGER NOT NULL DEFAULT 0,
    `qdtidnumber` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_access` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `allowview` BOOLEAN NOT NULL DEFAULT false,
    `allowpost` BOOLEAN NOT NULL DEFAULT false,
    `allowreply` BOOLEAN NOT NULL DEFAULT false,
    `allowgetattach` BOOLEAN NOT NULL DEFAULT false,
    `allowgetimage` BOOLEAN NOT NULL DEFAULT false,
    `allowpostattach` BOOLEAN NOT NULL DEFAULT false,
    `allowpostimage` BOOLEAN NOT NULL DEFAULT false,
    `adminuser` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `listorder`(`fid`, `dateline`),

    PRIMARY KEY (`uid`,`fid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_activity` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `aid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `cost` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `starttimefrom` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `starttimeto` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `place` VARCHAR(255) NOT NULL DEFAULT '',
    `class` VARCHAR(255) NOT NULL DEFAULT '',
    `gender` BOOLEAN NOT NULL DEFAULT false,
    `number` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `applynumber` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `expiration` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `ufield` TEXT NOT NULL,
    `credit` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `applynumber`(`applynumber`),
INDEX `expiration`(`expiration`),
INDEX `starttimefrom`(`starttimefrom`),
INDEX `uid`(`uid`, `starttimefrom`),

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_activityapply` (
    `applyid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(255) NOT NULL DEFAULT '',
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `message` VARCHAR(255) NOT NULL DEFAULT '',
    `verified` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `payment` MEDIUMINT NOT NULL DEFAULT 0,
    `ufielddata` TEXT NOT NULL,
    `myfriend` TINYINT NOT NULL DEFAULT 0,
INDEX `dateline`(`tid`, `dateline`),
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`applyid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_announcement` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `author` VARCHAR(15) NOT NULL DEFAULT '',
    `subject` VARCHAR(255) NOT NULL DEFAULT '',
    `type` BOOLEAN NOT NULL DEFAULT false,
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `starttime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `endtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `groups` TEXT NOT NULL,
INDEX `timespan`(`starttime`, `endtime`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachment` (
    `aid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `tableid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `downloads` MEDIUMINT NOT NULL DEFAULT 0,
INDEX `pid`(`pid`),
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachment_0` (
    `aid` MEDIUMINT UNSIGNED NOT NULL,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `description` VARCHAR(255) NOT NULL,
    `readperm` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `price` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `width` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `picid` MEDIUMINT NOT NULL DEFAULT 0,
INDEX `pid`(`pid`),
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachment_1` (
    `aid` MEDIUMINT UNSIGNED NOT NULL,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `description` VARCHAR(255) NOT NULL,
    `readperm` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `price` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `width` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `picid` MEDIUMINT NOT NULL DEFAULT 0,
INDEX `pid`(`pid`),
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachment_2` (
    `aid` MEDIUMINT UNSIGNED NOT NULL,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `description` VARCHAR(255) NOT NULL,
    `readperm` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `price` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `width` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `picid` MEDIUMINT NOT NULL DEFAULT 0,
INDEX `pid`(`pid`),
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachment_3` (
    `aid` MEDIUMINT UNSIGNED NOT NULL,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `description` VARCHAR(255) NOT NULL,
    `readperm` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `price` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `width` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `picid` MEDIUMINT NOT NULL DEFAULT 0,
INDEX `pid`(`pid`),
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachment_4` (
    `aid` MEDIUMINT UNSIGNED NOT NULL,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `description` VARCHAR(255) NOT NULL,
    `readperm` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `price` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `width` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `picid` MEDIUMINT NOT NULL DEFAULT 0,
INDEX `pid`(`pid`),
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachment_5` (
    `aid` MEDIUMINT UNSIGNED NOT NULL,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `description` VARCHAR(255) NOT NULL,
    `readperm` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `price` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `width` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `picid` MEDIUMINT NOT NULL DEFAULT 0,
INDEX `pid`(`pid`),
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachment_6` (
    `aid` MEDIUMINT UNSIGNED NOT NULL,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `description` VARCHAR(255) NOT NULL,
    `readperm` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `price` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `width` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `picid` MEDIUMINT NOT NULL DEFAULT 0,
INDEX `pid`(`pid`),
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachment_7` (
    `aid` MEDIUMINT UNSIGNED NOT NULL,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `description` VARCHAR(255) NOT NULL,
    `readperm` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `price` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `width` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `picid` MEDIUMINT NOT NULL DEFAULT 0,
INDEX `pid`(`pid`),
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachment_8` (
    `aid` MEDIUMINT UNSIGNED NOT NULL,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `description` VARCHAR(255) NOT NULL,
    `readperm` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `price` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `width` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `picid` MEDIUMINT NOT NULL DEFAULT 0,
INDEX `pid`(`pid`),
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachment_9` (
    `aid` MEDIUMINT UNSIGNED NOT NULL,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `description` VARCHAR(255) NOT NULL,
    `readperm` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `price` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `width` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `picid` MEDIUMINT NOT NULL DEFAULT 0,
INDEX `pid`(`pid`),
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachment_exif` (
    `aid` MEDIUMINT UNSIGNED NOT NULL,
    `exif` TEXT NOT NULL,

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachment_unused` (
    `aid` MEDIUMINT UNSIGNED NOT NULL,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `width` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
INDEX `uid`(`uid`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_attachtype` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `extension` CHAR(12) NOT NULL DEFAULT '',
    `maxsize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `fid`(`fid`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_bbcode` (
    `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `available` BOOLEAN NOT NULL DEFAULT false,
    `tag` VARCHAR(100) NOT NULL DEFAULT '',
    `icon` VARCHAR(255) NOT NULL,
    `replacement` TEXT NOT NULL,
    `example` VARCHAR(255) NOT NULL DEFAULT '',
    `explanation` TEXT NOT NULL,
    `params` BOOLEAN NOT NULL DEFAULT true,
    `prompt` TEXT NOT NULL,
    `nest` TINYINT UNSIGNED NOT NULL DEFAULT 1,
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `perm` TEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_collection` (
    `ctid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `follownum` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `threadnum` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `commentnum` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `desc` VARCHAR(255) NOT NULL DEFAULT '',
    `lastupdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `rate` FLOAT NOT NULL DEFAULT 0,
    `ratenum` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `lastpost` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `lastsubject` VARCHAR(80) NOT NULL DEFAULT '',
    `lastposttime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastposter` VARCHAR(15) NOT NULL DEFAULT '',
    `lastvisit` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `keyword` VARCHAR(255) NOT NULL DEFAULT '',
INDEX `dateline`(`dateline`),
INDEX `follownum`(`follownum`),
INDEX `hotcollection`(`threadnum`, `lastupdate`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`ctid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_collectioncomment` (
    `cid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `ctid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `message` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `useip` VARCHAR(16) NOT NULL DEFAULT '',
    `port` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `rate` FLOAT NOT NULL DEFAULT 0,
INDEX `ctid`(`ctid`, `dateline`),
INDEX `userrate`(`ctid`, `uid`, `rate`),

    PRIMARY KEY (`cid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_collectionfollow` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` CHAR(15) NOT NULL DEFAULT '',
    `ctid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastvisit` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `ctid`(`ctid`, `dateline`),

    PRIMARY KEY (`uid`,`ctid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_collectioninvite` (
    `ctid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),

    PRIMARY KEY (`ctid`,`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_collectionrelated` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `collection` TEXT NOT NULL,

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_collectionteamworker` (
    `ctid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `lastvisit` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`ctid`,`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_collectionthread` (
    `ctid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `reason` VARCHAR(255) NOT NULL DEFAULT '',
INDEX `ctid`(`ctid`, `dateline`),

    PRIMARY KEY (`ctid`,`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_creditslog` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fromto` CHAR(15) NOT NULL DEFAULT '',
    `sendcredits` BOOLEAN NOT NULL DEFAULT false,
    `receivecredits` BOOLEAN NOT NULL DEFAULT false,
    `send` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `receive` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `operation` CHAR(3) NOT NULL DEFAULT '',
INDEX `uid`(`uid`, `dateline`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_debate` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `starttime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `endtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `affirmdebaters` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `negadebaters` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `affirmvotes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `negavotes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `umpire` VARCHAR(15) NOT NULL DEFAULT '',
    `winner` BOOLEAN NOT NULL DEFAULT false,
    `bestdebater` VARCHAR(50) NOT NULL DEFAULT '',
    `affirmpoint` TEXT NOT NULL,
    `negapoint` TEXT NOT NULL,
    `umpirepoint` TEXT NOT NULL,
    `affirmvoterids` TEXT NOT NULL,
    `negavoterids` TEXT NOT NULL,
    `affirmreplies` MEDIUMINT UNSIGNED NOT NULL,
    `negareplies` MEDIUMINT UNSIGNED NOT NULL,
INDEX `uid`(`uid`, `starttime`),

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_debatepost` (
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `stand` BOOLEAN NOT NULL DEFAULT false,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `voters` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `voterids` TEXT NOT NULL,
INDEX `pid`(`pid`, `stand`),
INDEX `tid`(`tid`, `uid`),
INDEX `voters`(`tid`, `voters`),

    PRIMARY KEY (`pid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_faq` (
    `id` SMALLINT NOT NULL AUTO_INCREMENT,
    `fpid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `identifier` VARCHAR(20) NOT NULL,
    `keyword` VARCHAR(50) NOT NULL,
    `title` VARCHAR(50) NOT NULL,
    `message` TEXT NOT NULL,
INDEX `displayplay`(`displayorder`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_filter_post` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `postlength` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `tid`(`tid`, `postlength`),

    PRIMARY KEY (`tid`,`pid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_forum` (
    `fid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `fup` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `type` ENUM('group', 'forum', 'sub') NOT NULL DEFAULT 'forum',
    `name` CHAR(50) NOT NULL DEFAULT '',
    `status` BOOLEAN NOT NULL DEFAULT false,
    `displayorder` SMALLINT NOT NULL DEFAULT 0,
    `styleid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `threads` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `posts` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `todayposts` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `yesterdayposts` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `rank` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `oldrank` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `lastpost` CHAR(110) NOT NULL DEFAULT '',
    `domain` CHAR(15) NOT NULL DEFAULT '',
    `allowsmilies` BOOLEAN NOT NULL DEFAULT false,
    `allowhtml` BOOLEAN NOT NULL DEFAULT false,
    `allowbbcode` BOOLEAN NOT NULL DEFAULT false,
    `allowimgcode` BOOLEAN NOT NULL DEFAULT false,
    `allowmediacode` BOOLEAN NOT NULL DEFAULT false,
    `allowanonymous` BOOLEAN NOT NULL DEFAULT false,
    `allowpostspecial` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `allowspecialonly` BOOLEAN NOT NULL DEFAULT false,
    `allowappend` BOOLEAN NOT NULL DEFAULT false,
    `alloweditrules` BOOLEAN NOT NULL DEFAULT false,
    `allowfeed` BOOLEAN NOT NULL DEFAULT true,
    `allowside` BOOLEAN NOT NULL DEFAULT false,
    `recyclebin` BOOLEAN NOT NULL DEFAULT false,
    `modnewposts` BOOLEAN NOT NULL DEFAULT false,
    `jammer` BOOLEAN NOT NULL DEFAULT false,
    `disablewatermark` BOOLEAN NOT NULL DEFAULT false,
    `inheritedmod` BOOLEAN NOT NULL DEFAULT false,
    `autoclose` SMALLINT NOT NULL DEFAULT 0,
    `forumcolumns` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `catforumcolumns` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `threadcaches` BOOLEAN NOT NULL DEFAULT false,
    `alloweditpost` BOOLEAN NOT NULL DEFAULT true,
    `simple` BOOLEAN NOT NULL DEFAULT false,
    `modworks` BOOLEAN NOT NULL DEFAULT false,
    `allowglobalstick` BOOLEAN NOT NULL DEFAULT true,
    `level` SMALLINT NOT NULL DEFAULT 0,
    `commoncredits` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `archive` BOOLEAN NOT NULL DEFAULT false,
    `recommend` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `favtimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `sharetimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `disablethumb` BOOLEAN NOT NULL DEFAULT false,
    `disablecollect` BOOLEAN NOT NULL DEFAULT false,
INDEX `forum`(`status`, `type`, `displayorder`),
INDEX `fup`(`fup`),
INDEX `fup_type`(`fup`, `type`, `displayorder`),

    PRIMARY KEY (`fid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_forumfield` (
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `description` TEXT NOT NULL,
    `password` VARCHAR(12) NOT NULL DEFAULT '',
    `icon` VARCHAR(255) NOT NULL DEFAULT '',
    `redirect` VARCHAR(255) NOT NULL DEFAULT '',
    `attachextensions` VARCHAR(255) NOT NULL DEFAULT '',
    `creditspolicy` MEDIUMTEXT NOT NULL,
    `formulaperm` TEXT NOT NULL,
    `moderators` TEXT NOT NULL,
    `rules` TEXT NOT NULL,
    `threadtypes` TEXT NOT NULL,
    `threadsorts` TEXT NOT NULL,
    `viewperm` TEXT NOT NULL,
    `postperm` TEXT NOT NULL,
    `replyperm` TEXT NOT NULL,
    `getattachperm` TEXT NOT NULL,
    `postattachperm` TEXT NOT NULL,
    `postimageperm` TEXT NOT NULL,
    `spviewperm` TEXT NOT NULL,
    `seotitle` TEXT NOT NULL,
    `keywords` TEXT NOT NULL,
    `seodescription` TEXT NOT NULL,
    `supe_pushsetting` TEXT NOT NULL,
    `modrecommend` TEXT NOT NULL,
    `threadplugin` TEXT NOT NULL,
    `replybg` TEXT NOT NULL,
    `extra` TEXT NOT NULL,
    `jointype` BOOLEAN NOT NULL DEFAULT false,
    `gviewperm` BOOLEAN NOT NULL DEFAULT false,
    `membernum` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastupdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `activity` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `founderuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `foundername` VARCHAR(255) NOT NULL DEFAULT '',
    `banner` VARCHAR(255) NOT NULL DEFAULT '',
    `groupnum` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `commentitem` TEXT NOT NULL,
    `relatedgroup` TEXT NOT NULL,
    `picstyle` BOOLEAN NOT NULL DEFAULT false,
    `widthauto` BOOLEAN NOT NULL DEFAULT false,
    `noantitheft` BOOLEAN NOT NULL DEFAULT false,
    `noforumhidewater` BOOLEAN NOT NULL DEFAULT false,
    `noforumrecommend` BOOLEAN NOT NULL DEFAULT false,
    `livetid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `price` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `activity`(`activity`),
INDEX `dateline`(`dateline`),
INDEX `lastupdate`(`lastupdate`),
INDEX `membernum`(`membernum`),

    PRIMARY KEY (`fid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_forumrecommend` (
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `tid` MEDIUMINT UNSIGNED NOT NULL,
    `typeid` SMALLINT NOT NULL,
    `displayorder` BOOLEAN NOT NULL,
    `subject` CHAR(80) NOT NULL,
    `author` CHAR(15) NOT NULL,
    `authorid` MEDIUMINT NOT NULL,
    `moderatorid` MEDIUMINT NOT NULL,
    `expiration` INTEGER UNSIGNED NOT NULL,
    `position` BOOLEAN NOT NULL DEFAULT false,
    `highlight` BOOLEAN NOT NULL DEFAULT false,
    `aid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `filename` CHAR(100) NOT NULL DEFAULT '',
INDEX `displayorder`(`fid`, `displayorder`),
INDEX `position`(`position`),

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_forum_threadtable` (
    `fid` SMALLINT UNSIGNED NOT NULL,
    `threadtableid` SMALLINT UNSIGNED NOT NULL,
    `threads` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `posts` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`fid`,`threadtableid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_groupcreditslog` (
    `fid` MEDIUMINT UNSIGNED NOT NULL,
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `logdate` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`fid`,`uid`,`logdate`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_groupfield` (
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `privacy` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `type` VARCHAR(255) NOT NULL,
    `data` TEXT NOT NULL,
UNIQUE INDEX `types`(`fid`, `type`),
INDEX `fid`(`fid`),
INDEX `type`(`type`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_groupinvite` (
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `inviteuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
UNIQUE INDEX `ids`(`fid`, `inviteuid`),
INDEX `dateline`(`dateline`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_grouplevel` (
    `levelid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` ENUM('special', 'default') NOT NULL DEFAULT 'default',
    `leveltitle` VARCHAR(255) NOT NULL DEFAULT '',
    `creditshigher` INTEGER NOT NULL DEFAULT 0,
    `creditslower` INTEGER NOT NULL DEFAULT 0,
    `icon` VARCHAR(255) NOT NULL DEFAULT '',
    `creditspolicy` TEXT NOT NULL,
    `postpolicy` TEXT NOT NULL,
    `specialswitch` TEXT NOT NULL,
INDEX `creditsrange`(`creditshigher`, `creditslower`),

    PRIMARY KEY (`levelid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_groupranking` (
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `yesterday` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `today` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `trend` BOOLEAN NOT NULL DEFAULT false,
INDEX `today`(`today`),

    PRIMARY KEY (`fid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_groupuser` (
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` CHAR(15) NOT NULL,
    `level` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `threads` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `replies` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `joindateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastupdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `privacy` BOOLEAN NOT NULL DEFAULT false,
INDEX `uid_lastupdate`(`uid`, `lastupdate`),
INDEX `userlist`(`fid`, `level`, `lastupdate`),

    PRIMARY KEY (`fid`,`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_hotreply_member` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `attitude` BOOLEAN NOT NULL DEFAULT false,

    PRIMARY KEY (`pid`,`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_hotreply_number` (
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `support` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `against` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `total` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `tid`(`tid`, `total`),

    PRIMARY KEY (`pid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_imagetype` (
    `typeid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `available` BOOLEAN NOT NULL DEFAULT false,
    `name` CHAR(20) NOT NULL,
    `type` ENUM('smiley', 'icon', 'avatar') NOT NULL DEFAULT 'smiley',
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `directory` CHAR(100) NOT NULL,

    PRIMARY KEY (`typeid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_medal` (
    `medalid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `available` BOOLEAN NOT NULL DEFAULT false,
    `image` VARCHAR(255) NOT NULL DEFAULT '',
    `type` BOOLEAN NOT NULL DEFAULT false,
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `description` VARCHAR(255) NOT NULL,
    `expiration` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `permission` MEDIUMTEXT NOT NULL,
    `credit` BOOLEAN NOT NULL DEFAULT false,
    `price` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `available`(`available`, `displayorder`),
INDEX `displayorder`(`displayorder`),

    PRIMARY KEY (`medalid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_medallog` (
    `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `medalid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `type` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `expiration` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT false,
INDEX `dateline`(`dateline`),
INDEX `status`(`status`, `expiration`),
INDEX `type`(`type`),
INDEX `uid`(`uid`, `medalid`, `type`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_memberrecommend` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `tid` MEDIUMINT UNSIGNED NOT NULL,
    `recommenduid` MEDIUMINT UNSIGNED NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL,
INDEX `tid`(`tid`),
INDEX `uid`(`recommenduid`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_moderator` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `inherited` BOOLEAN NOT NULL DEFAULT false,

    PRIMARY KEY (`uid`,`fid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_modwork` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `modaction` CHAR(3) NOT NULL DEFAULT '',
    `dateline` DATE NOT NULL DEFAULT 2006-01-01,
    `count` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `posts` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `uid`(`uid`, `dateline`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_newthread` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),
INDEX `fid`(`fid`),

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_onlinelist` (
    `groupid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `title` VARCHAR(30) NOT NULL DEFAULT '',
    `url` VARCHAR(30) NOT NULL DEFAULT ''
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_order` (
    `orderid` CHAR(32) NOT NULL DEFAULT '',
    `status` CHAR(3) NOT NULL DEFAULT '',
    `buyer` CHAR(50) NOT NULL DEFAULT '',
    `admin` CHAR(15) NOT NULL DEFAULT '',
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `amount` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `price` FLOAT NOT NULL DEFAULT 0.00,
    `submitdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `confirmdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `email` CHAR(40) NOT NULL DEFAULT '',
    `ip` CHAR(15) NOT NULL DEFAULT '',
UNIQUE INDEX `pre_forum_order.orderid_unique`(`orderid`),
INDEX `submitdate`(`submitdate`),
INDEX `uid`(`uid`, `submitdate`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_poll` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `overt` BOOLEAN NOT NULL DEFAULT false,
    `multiple` BOOLEAN NOT NULL DEFAULT false,
    `visible` BOOLEAN NOT NULL DEFAULT false,
    `maxchoices` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `expiration` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `pollpreview` VARCHAR(255) NOT NULL DEFAULT '',
    `voters` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_polloption` (
    `polloptionid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `votes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `polloption` VARCHAR(80) NOT NULL DEFAULT '',
    `voterids` MEDIUMTEXT NOT NULL,
INDEX `tid`(`tid`, `displayorder`),

    PRIMARY KEY (`polloptionid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_polloption_image` (
    `aid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `poid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `width` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `poid`(`poid`),
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_pollvoter` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `options` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `tid`(`tid`),
INDEX `uid`(`uid`, `dateline`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_post` (
    `pid` INTEGER UNSIGNED NOT NULL,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `first` BOOLEAN NOT NULL DEFAULT false,
    `author` VARCHAR(15) NOT NULL DEFAULT '',
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `subject` VARCHAR(80) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `message` MEDIUMTEXT NOT NULL,
    `useip` VARCHAR(15) NOT NULL DEFAULT '',
    `port` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `invisible` BOOLEAN NOT NULL DEFAULT false,
    `anonymous` BOOLEAN NOT NULL DEFAULT false,
    `usesig` BOOLEAN NOT NULL DEFAULT false,
    `htmlon` BOOLEAN NOT NULL DEFAULT false,
    `bbcodeoff` BOOLEAN NOT NULL DEFAULT false,
    `smileyoff` BOOLEAN NOT NULL DEFAULT false,
    `parseurloff` BOOLEAN NOT NULL DEFAULT false,
    `attachment` BOOLEAN NOT NULL DEFAULT false,
    `rate` SMALLINT NOT NULL DEFAULT 0,
    `ratetimes` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `status` INTEGER NOT NULL DEFAULT 0,
    `tags` VARCHAR(255) NOT NULL DEFAULT '0',
    `comment` BOOLEAN NOT NULL DEFAULT false,
    `replycredit` INTEGER NOT NULL DEFAULT 0,
    `position` INTEGER UNSIGNED NOT NULL DEFAULT 0,
UNIQUE INDEX `pre_forum_post.pid_unique`(`pid`),
INDEX `authorid`(`authorid`, `invisible`),
INDEX `dateline`(`dateline`),
INDEX `displayorder`(`tid`, `invisible`, `dateline`),
INDEX `fid`(`fid`),
INDEX `first`(`tid`, `first`),
INDEX `invisible`(`invisible`),

    PRIMARY KEY (`tid`,`position`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_postcache` (
    `pid` INTEGER UNSIGNED NOT NULL,
    `comment` TEXT NOT NULL,
    `rate` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),

    PRIMARY KEY (`pid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_postcomment` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `author` VARCHAR(15) NOT NULL DEFAULT '',
    `authorid` MEDIUMINT NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `comment` VARCHAR(255) NOT NULL DEFAULT '',
    `score` BOOLEAN NOT NULL DEFAULT false,
    `useip` VARCHAR(15) NOT NULL DEFAULT '',
    `port` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `rpid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `authorid`(`authorid`),
INDEX `pid`(`pid`, `dateline`),
INDEX `rpid`(`rpid`),
INDEX `score`(`score`),
INDEX `tid`(`tid`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_postlog` (
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `action` CHAR(10) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),
INDEX `fid`(`fid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`pid`,`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_postposition` (
    `tid` MEDIUMINT UNSIGNED NOT NULL,
    `position` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL,
INDEX `pid`(`pid`),

    PRIMARY KEY (`tid`,`position`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_poststick` (
    `tid` MEDIUMINT UNSIGNED NOT NULL,
    `pid` INTEGER UNSIGNED NOT NULL,
    `position` INTEGER UNSIGNED NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL,
INDEX `dateline`(`tid`, `dateline`),

    PRIMARY KEY (`tid`,`pid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_post_location` (
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `tid` MEDIUMINT UNSIGNED DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED DEFAULT 0,
    `mapx` VARCHAR(255) NOT NULL,
    `mapy` VARCHAR(255) NOT NULL,
    `location` VARCHAR(255) NOT NULL,
INDEX `tid`(`tid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`pid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_post_moderate` (
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` TINYINT NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `status`(`status`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_post_tableid` (
    `pid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,

    PRIMARY KEY (`pid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_promotion` (
    `ip` CHAR(15) NOT NULL DEFAULT '',
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` CHAR(15) NOT NULL DEFAULT '',

    PRIMARY KEY (`ip`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_ratelog` (
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` CHAR(15) NOT NULL DEFAULT '',
    `extcredits` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `score` SMALLINT NOT NULL DEFAULT 0,
    `reason` CHAR(40) NOT NULL DEFAULT '',
INDEX `dateline`(`dateline`),
INDEX `pid`(`pid`, `dateline`),
INDEX `uid`(`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_relatedthread` (
    `tid` MEDIUMINT NOT NULL DEFAULT 0,
    `type` ENUM('general', 'trade') NOT NULL DEFAULT 'general',
    `expiration` INTEGER NOT NULL DEFAULT 0,
    `keywords` VARCHAR(255) NOT NULL DEFAULT '',
    `relatedthreads` TEXT NOT NULL,

    PRIMARY KEY (`tid`,`type`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_replycredit` (
    `tid` MEDIUMINT UNSIGNED NOT NULL,
    `extcredits` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `extcreditstype` BOOLEAN NOT NULL DEFAULT false,
    `times` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `membertimes` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `random` BOOLEAN NOT NULL DEFAULT false,

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_rsscache` (
    `lastupdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `forum` CHAR(50) NOT NULL DEFAULT '',
    `author` CHAR(15) NOT NULL DEFAULT '',
    `subject` CHAR(80) NOT NULL DEFAULT '',
    `description` CHAR(255) NOT NULL DEFAULT '',
    `guidetype` CHAR(10) NOT NULL DEFAULT '',
UNIQUE INDEX `pre_forum_rsscache.tid_unique`(`tid`),
INDEX `fid`(`fid`, `dateline`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_sofa` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `ftid`(`fid`, `tid`),

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_spacecache` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `variable` VARCHAR(20) NOT NULL,
    `value` TEXT NOT NULL,
    `expiration` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`uid`,`variable`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_statlog` (
    `logdate` DATE NOT NULL,
    `fid` MEDIUMINT UNSIGNED NOT NULL,
    `type` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `value` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`logdate`,`fid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_thread` (
    `tid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `posttableid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `typeid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `sortid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `readperm` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `price` SMALLINT NOT NULL DEFAULT 0,
    `author` CHAR(15) NOT NULL DEFAULT '',
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `subject` CHAR(80) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastpost` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastposter` CHAR(15) NOT NULL DEFAULT '',
    `views` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `replies` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `displayorder` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `highlight` BOOLEAN NOT NULL DEFAULT false,
    `digest` BOOLEAN NOT NULL DEFAULT false,
    `rate` BOOLEAN NOT NULL DEFAULT false,
    `special` BOOLEAN NOT NULL DEFAULT false,
    `attachment` BOOLEAN NOT NULL DEFAULT false,
    `moderated` BOOLEAN NOT NULL DEFAULT false,
    `closed` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `stickreply` BOOLEAN NOT NULL DEFAULT false,
    `recommends` SMALLINT NOT NULL DEFAULT 0,
    `recommend_add` SMALLINT NOT NULL DEFAULT 0,
    `recommend_sub` SMALLINT NOT NULL DEFAULT 0,
    `heats` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `isgroup` BOOLEAN NOT NULL DEFAULT false,
    `favtimes` MEDIUMINT NOT NULL DEFAULT 0,
    `sharetimes` MEDIUMINT NOT NULL DEFAULT 0,
    `stamp` TINYINT NOT NULL DEFAULT -1,
    `icon` TINYINT NOT NULL DEFAULT -1,
    `pushedaid` MEDIUMINT NOT NULL DEFAULT 0,
    `cover` SMALLINT NOT NULL DEFAULT 0,
    `replycredit` SMALLINT NOT NULL DEFAULT 0,
    `relatebytag` CHAR(255) NOT NULL DEFAULT '0',
    `maxposition` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `bgcolor` CHAR(8) NOT NULL DEFAULT '',
    `comments` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `hidden` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `authorid`(`authorid`),
INDEX `digest`(`digest`),
INDEX `displayorder`(`fid`, `displayorder`, `lastpost`),
INDEX `heats`(`heats`),
INDEX `isgroup`(`isgroup`, `lastpost`),
INDEX `recommends`(`recommends`),
INDEX `sortid`(`sortid`),
INDEX `special`(`special`),
INDEX `typeid`(`fid`, `typeid`, `displayorder`, `lastpost`),

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadaddviews` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `addviews` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadcalendar` (
    `cid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `hotnum` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `fid`(`fid`, `dateline`),

    PRIMARY KEY (`cid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadclass` (
    `typeid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `fid` MEDIUMINT UNSIGNED NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `displayorder` MEDIUMINT NOT NULL,
    `icon` VARCHAR(255) NOT NULL,
    `moderators` BOOLEAN NOT NULL DEFAULT false,
INDEX `fid`(`fid`, `displayorder`),

    PRIMARY KEY (`typeid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadclosed` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `redirect` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threaddisablepos` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadhidelog` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
UNIQUE INDEX `uid`(`tid`, `uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadhot` (
    `cid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `fid`(`fid`),

    PRIMARY KEY (`cid`,`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadimage` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `remote` BOOLEAN NOT NULL DEFAULT false,
INDEX `tid`(`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadlog` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `otherid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `action` CHAR(10) NOT NULL,
    `expiry` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),

    PRIMARY KEY (`tid`,`fid`,`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadmod` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` CHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `expiration` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `action` CHAR(5) NOT NULL DEFAULT '',
    `status` BOOLEAN NOT NULL DEFAULT false,
    `magicid` SMALLINT UNSIGNED NOT NULL,
    `stamp` TINYINT NOT NULL,
    `reason` CHAR(40) NOT NULL DEFAULT '',
INDEX `expiration`(`expiration`, `status`),
INDEX `tid`(`tid`, `dateline`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadpartake` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `tid`(`tid`, `uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadpreview` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `relay` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `content` TEXT NOT NULL,

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadprofile` (
    `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` CHAR(100) NOT NULL DEFAULT '',
    `template` TEXT NOT NULL,
    `global` BOOLEAN NOT NULL DEFAULT false,
INDEX `global`(`global`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadprofile_group` (
    `gid` MEDIUMINT NOT NULL,
    `tpid` MEDIUMINT UNSIGNED NOT NULL,

    PRIMARY KEY (`gid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadrush` (
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `stopfloor` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `starttimefrom` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `starttimeto` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `rewardfloor` TEXT NOT NULL,
    `creditlimit` INTEGER NOT NULL DEFAULT -996,
    `replylimit` SMALLINT NOT NULL DEFAULT 0,

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_threadtype` (
    `typeid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `displayorder` SMALLINT NOT NULL DEFAULT 0,
    `name` VARCHAR(255) NOT NULL DEFAULT '',
    `description` VARCHAR(255) NOT NULL DEFAULT '',
    `icon` VARCHAR(255) NOT NULL DEFAULT '',
    `special` SMALLINT NOT NULL DEFAULT 0,
    `modelid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `expiration` BOOLEAN NOT NULL DEFAULT false,
    `template` TEXT NOT NULL,
    `stemplate` TEXT NOT NULL,
    `ptemplate` TEXT NOT NULL,
    `btemplate` TEXT NOT NULL,

    PRIMARY KEY (`typeid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_thread_moderate` (
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` TINYINT NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `status`(`status`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_trade` (
    `tid` MEDIUMINT UNSIGNED NOT NULL,
    `pid` INTEGER UNSIGNED NOT NULL,
    `typeid` SMALLINT UNSIGNED NOT NULL,
    `sellerid` MEDIUMINT UNSIGNED NOT NULL,
    `seller` CHAR(15) NOT NULL,
    `account` CHAR(50) NOT NULL,
    `tenpayaccount` CHAR(20) NOT NULL DEFAULT '',
    `subject` CHAR(100) NOT NULL,
    `price` DECIMAL(8, 2) NOT NULL,
    `amount` SMALLINT UNSIGNED NOT NULL DEFAULT 1,
    `quality` BOOLEAN NOT NULL DEFAULT false,
    `locus` CHAR(20) NOT NULL,
    `transport` BOOLEAN NOT NULL DEFAULT false,
    `ordinaryfee` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `expressfee` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `emsfee` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `itemtype` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `expiration` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastbuyer` CHAR(15) NOT NULL,
    `lastupdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `totalitems` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `tradesum` DECIMAL(8, 2) NOT NULL DEFAULT 0.00,
    `closed` BOOLEAN NOT NULL DEFAULT false,
    `aid` MEDIUMINT UNSIGNED NOT NULL,
    `displayorder` BOOLEAN NOT NULL,
    `costprice` DECIMAL(8, 2) NOT NULL,
    `credit` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `costcredit` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `credittradesum` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `credittradesum`(`credittradesum`),
INDEX `displayorder`(`tid`, `displayorder`),
INDEX `expiration`(`expiration`),
INDEX `pid`(`pid`),
INDEX `sellerid`(`sellerid`),
INDEX `sellertrades`(`sellerid`, `tradesum`, `totalitems`),
INDEX `totalitems`(`totalitems`),
INDEX `tradesum`(`tradesum`),
INDEX `typeid`(`typeid`),

    PRIMARY KEY (`tid`,`pid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_tradecomment` (
    `id` MEDIUMINT NOT NULL AUTO_INCREMENT,
    `orderid` CHAR(32) NOT NULL,
    `pid` INTEGER UNSIGNED NOT NULL,
    `type` BOOLEAN NOT NULL,
    `raterid` MEDIUMINT UNSIGNED NOT NULL,
    `rater` CHAR(15) NOT NULL,
    `rateeid` MEDIUMINT UNSIGNED NOT NULL,
    `ratee` CHAR(15) NOT NULL,
    `message` CHAR(200) NOT NULL,
    `explanation` CHAR(200) NOT NULL,
    `score` BOOLEAN NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL,
INDEX `orderid`(`orderid`),
INDEX `rateeid`(`rateeid`, `type`, `dateline`),
INDEX `raterid`(`raterid`, `type`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_tradelog` (
    `tid` MEDIUMINT UNSIGNED NOT NULL,
    `pid` INTEGER UNSIGNED NOT NULL,
    `orderid` VARCHAR(32) NOT NULL,
    `tradeno` VARCHAR(32) NOT NULL,
    `paytype` BOOLEAN NOT NULL DEFAULT false,
    `subject` VARCHAR(100) NOT NULL,
    `price` DECIMAL(8, 2) NOT NULL DEFAULT 0.00,
    `quality` BOOLEAN NOT NULL DEFAULT false,
    `itemtype` BOOLEAN NOT NULL DEFAULT false,
    `number` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `tax` DECIMAL(6, 2) NOT NULL DEFAULT 0.00,
    `locus` VARCHAR(100) NOT NULL,
    `sellerid` MEDIUMINT UNSIGNED NOT NULL,
    `seller` VARCHAR(15) NOT NULL,
    `selleraccount` VARCHAR(50) NOT NULL,
    `tenpayaccount` VARCHAR(20) NOT NULL DEFAULT '0',
    `buyerid` MEDIUMINT UNSIGNED NOT NULL,
    `buyer` VARCHAR(15) NOT NULL,
    `buyercontact` VARCHAR(50) NOT NULL,
    `buyercredits` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `buyermsg` VARCHAR(200),
    `status` BOOLEAN NOT NULL DEFAULT false,
    `lastupdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `offline` BOOLEAN NOT NULL DEFAULT false,
    `buyername` VARCHAR(50) NOT NULL,
    `buyerzip` VARCHAR(10) NOT NULL,
    `buyerphone` VARCHAR(20) NOT NULL,
    `buyermobile` VARCHAR(20) NOT NULL,
    `transport` BOOLEAN NOT NULL DEFAULT false,
    `transportfee` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `baseprice` DECIMAL(8, 2) NOT NULL,
    `discount` BOOLEAN NOT NULL DEFAULT false,
    `ratestatus` BOOLEAN NOT NULL DEFAULT false,
    `message` TEXT NOT NULL,
    `credit` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `basecredit` INTEGER UNSIGNED NOT NULL DEFAULT 0,
UNIQUE INDEX `pre_forum_tradelog.orderid_unique`(`orderid`),
INDEX `buyerid`(`buyerid`),
INDEX `buyerlog`(`buyerid`, `status`, `lastupdate`),
INDEX `pid`(`pid`),
INDEX `sellerid`(`sellerid`),
INDEX `sellerlog`(`sellerid`, `status`, `lastupdate`),
INDEX `status`(`status`),
INDEX `tid`(`tid`, `pid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_typeoption` (
    `optionid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `classid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `expiration` BOOLEAN NOT NULL,
    `protect` VARCHAR(255) NOT NULL,
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `description` VARCHAR(255) NOT NULL DEFAULT '',
    `identifier` VARCHAR(255) NOT NULL DEFAULT '',
    `type` VARCHAR(255) NOT NULL DEFAULT '',
    `unit` VARCHAR(255) NOT NULL,
    `rules` MEDIUMTEXT NOT NULL,
    `permprompt` TEXT NOT NULL,
INDEX `classid`(`classid`),

    PRIMARY KEY (`optionid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_typeoptionvar` (
    `sortid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `optionid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `expiration` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `value` MEDIUMTEXT NOT NULL,
INDEX `fid`(`fid`),
INDEX `sortid`(`sortid`),
INDEX `tid`(`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_typevar` (
    `sortid` SMALLINT NOT NULL DEFAULT 0,
    `optionid` SMALLINT NOT NULL DEFAULT 0,
    `available` BOOLEAN NOT NULL DEFAULT false,
    `required` BOOLEAN NOT NULL DEFAULT false,
    `unchangeable` BOOLEAN NOT NULL DEFAULT false,
    `search` BOOLEAN NOT NULL DEFAULT false,
    `displayorder` TINYINT NOT NULL DEFAULT 0,
    `subjectshow` BOOLEAN NOT NULL DEFAULT false,
UNIQUE INDEX `optionid`(`sortid`, `optionid`),
INDEX `sortid`(`sortid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_forum_warning` (
    `wid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `pid` INTEGER UNSIGNED NOT NULL,
    `operatorid` MEDIUMINT UNSIGNED NOT NULL,
    `operator` CHAR(15) NOT NULL,
    `authorid` MEDIUMINT UNSIGNED NOT NULL,
    `author` CHAR(15) NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL,
    `reason` CHAR(40) NOT NULL,
UNIQUE INDEX `pre_forum_warning.pid_unique`(`pid`),
INDEX `authorid`(`authorid`),

    PRIMARY KEY (`wid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_album` (
    `albumid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `albumname` VARCHAR(50) NOT NULL DEFAULT '',
    `catid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `updatetime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `picnum` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `pic` VARCHAR(255) NOT NULL DEFAULT '',
    `picflag` BOOLEAN NOT NULL DEFAULT false,
    `friend` BOOLEAN NOT NULL DEFAULT false,
    `password` VARCHAR(10) NOT NULL DEFAULT '',
    `target_ids` TEXT NOT NULL,
    `favtimes` MEDIUMINT UNSIGNED NOT NULL,
    `sharetimes` MEDIUMINT UNSIGNED NOT NULL,
    `depict` TEXT NOT NULL,
INDEX `uid`(`uid`, `updatetime`),
INDEX `updatetime`(`updatetime`),

    PRIMARY KEY (`albumid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_album_category` (
    `catid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `upid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `catname` VARCHAR(255) NOT NULL DEFAULT '',
    `num` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `displayorder` SMALLINT NOT NULL DEFAULT 0,

    PRIMARY KEY (`catid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_appcreditlog` (
    `logid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `appid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `appname` VARCHAR(60) NOT NULL DEFAULT '',
    `type` BOOLEAN NOT NULL DEFAULT false,
    `credit` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `note` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `appid`(`appid`),
INDEX `uid`(`uid`, `dateline`),

    PRIMARY KEY (`logid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_blacklist` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `buid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `uid`(`uid`, `dateline`),

    PRIMARY KEY (`uid`,`buid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_blog` (
    `blogid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` CHAR(15) NOT NULL DEFAULT '',
    `subject` CHAR(80) NOT NULL DEFAULT '',
    `classid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `catid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `viewnum` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `replynum` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `hot` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `picflag` BOOLEAN NOT NULL DEFAULT false,
    `noreply` BOOLEAN NOT NULL DEFAULT false,
    `friend` BOOLEAN NOT NULL DEFAULT false,
    `password` CHAR(10) NOT NULL DEFAULT '',
    `favtimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `sharetimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT false,
    `click1` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click2` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click3` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click4` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click5` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click6` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click7` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click8` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),
INDEX `hot`(`hot`),
INDEX `uid`(`uid`, `dateline`),

    PRIMARY KEY (`blogid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_blogfield` (
    `blogid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pic` VARCHAR(255) NOT NULL DEFAULT '',
    `tag` VARCHAR(255) NOT NULL DEFAULT '',
    `message` MEDIUMTEXT NOT NULL,
    `postip` VARCHAR(255) NOT NULL DEFAULT '',
    `port` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `related` TEXT NOT NULL,
    `relatedtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `target_ids` TEXT NOT NULL,
    `hotuser` TEXT NOT NULL,
    `magiccolor` TINYINT NOT NULL DEFAULT 0,
    `magicpaper` TINYINT NOT NULL DEFAULT 0,
    `pushedaid` MEDIUMINT NOT NULL DEFAULT 0,
INDEX `uid`(`uid`),

    PRIMARY KEY (`blogid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_blog_category` (
    `catid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `upid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `catname` VARCHAR(255) NOT NULL DEFAULT '',
    `num` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `displayorder` SMALLINT NOT NULL DEFAULT 0,

    PRIMARY KEY (`catid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_blog_moderate` (
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` TINYINT NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `status`(`status`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_class` (
    `classid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `classname` CHAR(40) NOT NULL DEFAULT '',
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `uid`(`uid`),

    PRIMARY KEY (`classid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_click` (
    `clickid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` CHAR(50) NOT NULL DEFAULT '',
    `icon` CHAR(100) NOT NULL DEFAULT '',
    `idtype` CHAR(15) NOT NULL DEFAULT '',
    `available` BOOLEAN NOT NULL DEFAULT false,
    `displayorder` TINYINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `idtype`(`idtype`, `displayorder`),

    PRIMARY KEY (`clickid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_clickuser` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `id` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `idtype` VARCHAR(15) NOT NULL DEFAULT '',
    `clickid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `id`(`id`, `idtype`, `dateline`),
INDEX `uid`(`uid`, `idtype`, `dateline`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_comment` (
    `cid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `id` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `idtype` VARCHAR(20) NOT NULL DEFAULT '',
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `author` VARCHAR(15) NOT NULL DEFAULT '',
    `ip` VARCHAR(20) NOT NULL DEFAULT '',
    `port` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `magicflicker` BOOLEAN NOT NULL DEFAULT false,
    `status` BOOLEAN NOT NULL DEFAULT false,
INDEX `authorid`(`authorid`, `idtype`),
INDEX `id`(`id`, `idtype`, `dateline`),

    PRIMARY KEY (`cid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_comment_moderate` (
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `idtype` VARCHAR(15) NOT NULL DEFAULT '',
    `status` TINYINT NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `idtype`(`idtype`, `status`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_docomment` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `upid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `doid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `ip` VARCHAR(20) NOT NULL DEFAULT '',
    `grade` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),
INDEX `doid`(`doid`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_doing` (
    `doid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `from` VARCHAR(20) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `ip` VARCHAR(20) NOT NULL DEFAULT '',
    `port` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `replynum` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT false,
INDEX `dateline`(`dateline`),
INDEX `uid`(`uid`, `dateline`),

    PRIMARY KEY (`doid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_doing_moderate` (
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` TINYINT NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `status`(`status`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_favorite` (
    `favid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `id` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `idtype` VARCHAR(255) NOT NULL DEFAULT '',
    `spaceuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `description` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `idtype`(`id`, `idtype`),
INDEX `uid`(`uid`, `idtype`, `dateline`),

    PRIMARY KEY (`favid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_feed` (
    `feedid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `appid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `icon` VARCHAR(30) NOT NULL DEFAULT '',
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `friend` BOOLEAN NOT NULL DEFAULT false,
    `hash_template` VARCHAR(32) NOT NULL DEFAULT '',
    `hash_data` VARCHAR(32) NOT NULL DEFAULT '',
    `title_template` TEXT NOT NULL,
    `title_data` TEXT NOT NULL,
    `body_template` TEXT NOT NULL,
    `body_data` TEXT NOT NULL,
    `body_general` TEXT NOT NULL,
    `image_1` VARCHAR(255) NOT NULL DEFAULT '',
    `image_1_link` VARCHAR(255) NOT NULL DEFAULT '',
    `image_2` VARCHAR(255) NOT NULL DEFAULT '',
    `image_2_link` VARCHAR(255) NOT NULL DEFAULT '',
    `image_3` VARCHAR(255) NOT NULL DEFAULT '',
    `image_3_link` VARCHAR(255) NOT NULL DEFAULT '',
    `image_4` VARCHAR(255) NOT NULL DEFAULT '',
    `image_4_link` VARCHAR(255) NOT NULL DEFAULT '',
    `target_ids` TEXT NOT NULL,
    `id` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `idtype` VARCHAR(15) NOT NULL DEFAULT '',
    `hot` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),
INDEX `hot`(`hot`),
INDEX `id`(`id`, `idtype`),
INDEX `uid`(`uid`, `dateline`),

    PRIMARY KEY (`feedid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_feed_app` (
    `feedid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `appid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `icon` VARCHAR(30) NOT NULL DEFAULT '',
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `friend` BOOLEAN NOT NULL DEFAULT false,
    `hash_template` VARCHAR(32) NOT NULL DEFAULT '',
    `hash_data` VARCHAR(32) NOT NULL DEFAULT '',
    `title_template` TEXT NOT NULL,
    `title_data` TEXT NOT NULL,
    `body_template` TEXT NOT NULL,
    `body_data` TEXT NOT NULL,
    `body_general` TEXT NOT NULL,
    `image_1` VARCHAR(255) NOT NULL DEFAULT '',
    `image_1_link` VARCHAR(255) NOT NULL DEFAULT '',
    `image_2` VARCHAR(255) NOT NULL DEFAULT '',
    `image_2_link` VARCHAR(255) NOT NULL DEFAULT '',
    `image_3` VARCHAR(255) NOT NULL DEFAULT '',
    `image_3_link` VARCHAR(255) NOT NULL DEFAULT '',
    `image_4` VARCHAR(255) NOT NULL DEFAULT '',
    `image_4_link` VARCHAR(255) NOT NULL DEFAULT '',
    `target_ids` TEXT NOT NULL,
INDEX `dateline`(`dateline`),
INDEX `uid`(`uid`, `dateline`),

    PRIMARY KEY (`feedid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_follow` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` CHAR(15) NOT NULL DEFAULT '',
    `followuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fusername` CHAR(15) NOT NULL DEFAULT '',
    `bkname` VARCHAR(255) NOT NULL DEFAULT '',
    `status` BOOLEAN NOT NULL DEFAULT false,
    `mutual` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`uid`,`followuid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_follow_feed` (
    `feedid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `note` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `uid`(`uid`, `dateline`),

    PRIMARY KEY (`feedid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_follow_feed_archiver` (
    `feedid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `note` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `uid`(`uid`, `dateline`),

    PRIMARY KEY (`feedid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_friend` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fusername` VARCHAR(15) NOT NULL DEFAULT '',
    `gid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `num` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `note` VARCHAR(255) NOT NULL DEFAULT '',
INDEX `fuid`(`fuid`),
INDEX `uid`(`uid`, `num`, `dateline`),

    PRIMARY KEY (`uid`,`fuid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_friendlog` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `action` VARCHAR(10) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`uid`,`fuid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_friend_request` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fusername` CHAR(15) NOT NULL DEFAULT '',
    `gid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `note` CHAR(60) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`uid`, `dateline`),
INDEX `fuid`(`fuid`),

    PRIMARY KEY (`uid`,`fuid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_notification` (
    `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `type` VARCHAR(20) NOT NULL DEFAULT '',
    `new` BOOLEAN NOT NULL DEFAULT false,
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `author` VARCHAR(15) NOT NULL DEFAULT '',
    `note` TEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `from_id` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `from_idtype` VARCHAR(20) NOT NULL DEFAULT '',
    `from_num` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `category` BOOLEAN NOT NULL DEFAULT false,
INDEX `by_type`(`uid`, `type`, `dateline`),
INDEX `category`(`uid`, `category`, `dateline`),
INDEX `from_id`(`from_id`, `from_idtype`),
INDEX `uid`(`uid`, `new`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_pic` (
    `picid` MEDIUMINT NOT NULL AUTO_INCREMENT,
    `albumid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `postip` VARCHAR(255) NOT NULL DEFAULT '',
    `port` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `type` VARCHAR(255) NOT NULL DEFAULT '',
    `size` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filepath` VARCHAR(255) NOT NULL DEFAULT '',
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `hot` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `sharetimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `click1` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click2` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click3` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click4` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click5` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click6` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click7` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click8` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `magicframe` TINYINT NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT false,
INDEX `albumid`(`albumid`, `dateline`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`picid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_picfield` (
    `picid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `hotuser` TEXT NOT NULL,

    PRIMARY KEY (`picid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_pic_moderate` (
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` TINYINT NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `status`(`status`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_poke` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fromuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fromusername` VARCHAR(15) NOT NULL DEFAULT '',
    `note` VARCHAR(255) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `iconid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `uid`(`uid`, `dateline`),

    PRIMARY KEY (`uid`,`fromuid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_pokearchive` (
    `pid` MEDIUMINT NOT NULL AUTO_INCREMENT,
    `pokeuid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `fromuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `note` VARCHAR(255) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `iconid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `pokeuid`(`pokeuid`),

    PRIMARY KEY (`pid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_share` (
    `sid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `itemid` MEDIUMINT UNSIGNED NOT NULL,
    `type` VARCHAR(30) NOT NULL DEFAULT '',
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `fromuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `title_template` TEXT NOT NULL,
    `body_template` TEXT NOT NULL,
    `body_data` TEXT NOT NULL,
    `body_general` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL DEFAULT '',
    `image_link` VARCHAR(255) NOT NULL DEFAULT '',
    `hot` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `hotuser` TEXT NOT NULL,
    `status` BOOLEAN NOT NULL,
INDEX `dateline`(`dateline`),
INDEX `hot`(`hot`),
INDEX `uid`(`uid`, `dateline`),

    PRIMARY KEY (`sid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_share_moderate` (
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` TINYINT NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `status`(`status`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_show` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `unitprice` INTEGER UNSIGNED NOT NULL DEFAULT 1,
    `credit` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `note` VARCHAR(100) NOT NULL DEFAULT '',
INDEX `credit`(`credit`),
INDEX `unitprice`(`unitprice`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_specialuser` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `status` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER NOT NULL DEFAULT 0,
    `reason` TEXT NOT NULL,
    `opuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `opusername` VARCHAR(15) NOT NULL DEFAULT '',
    `displayorder` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `displayorder`(`status`, `displayorder`),
INDEX `uid`(`uid`, `status`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_surrounding_user` (
    `poi_id` BIGINT NOT NULL AUTO_INCREMENT,
    `longitude` DECIMAL(10, 7) NOT NULL DEFAULT 0.0000000,
    `latitude` DECIMAL(10, 7) NOT NULL DEFAULT 0.0000000,
    `object_id` BIGINT NOT NULL DEFAULT 0,
    `type` TINYINT NOT NULL DEFAULT 0,
    `location` VARCHAR(50) NOT NULL DEFAULT '',
UNIQUE INDEX `object_id`(`object_id`, `type`),
INDEX `type`(`type`),

    PRIMARY KEY (`poi_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_userapp` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `appid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `appname` VARCHAR(60) NOT NULL DEFAULT '',
    `privacy` BOOLEAN NOT NULL DEFAULT false,
    `allowsidenav` BOOLEAN NOT NULL DEFAULT false,
    `allowfeed` BOOLEAN NOT NULL DEFAULT false,
    `allowprofilelink` BOOLEAN NOT NULL DEFAULT false,
    `narrow` BOOLEAN NOT NULL DEFAULT false,
    `menuorder` SMALLINT NOT NULL DEFAULT 0,
    `displayorder` SMALLINT NOT NULL DEFAULT 0,
INDEX `displayorder`(`uid`, `displayorder`),
INDEX `menuorder`(`uid`, `menuorder`),
INDEX `uid`(`uid`, `appid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_userappfield` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `appid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `profilelink` TEXT NOT NULL,
    `myml` TEXT NOT NULL,
INDEX `uid`(`uid`, `appid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_home_visitor` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `vuid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `vusername` CHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`dateline`),
INDEX `vuid`(`vuid`),

    PRIMARY KEY (`uid`,`vuid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_apiwork` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_type` VARCHAR(50) NOT NULL,
    `it618_time` INTEGER UNSIGNED NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_bottomnav` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_title` VARCHAR(10) NOT NULL,
    `it618_img` VARCHAR(255) NOT NULL,
    `it618_url` VARCHAR(255) NOT NULL,
    `it618_color` VARCHAR(50) NOT NULL,
    `it618_order` INTEGER UNSIGNED NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_brand1` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_name` VARCHAR(255) NOT NULL,
    `it618_color` VARCHAR(50) NOT NULL,
    `it618_order` INTEGER UNSIGNED NOT NULL,
    `it618_istj` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_brand2` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_brand1_id` INTEGER UNSIGNED NOT NULL,
    `it618_name` VARCHAR(255) NOT NULL,
    `it618_color` VARCHAR(50) NOT NULL,
    `it618_order` INTEGER UNSIGNED NOT NULL,
    `it618_istj` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_category` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_class2_id` INTEGER UNSIGNED NOT NULL,
    `it618_category` INTEGER UNSIGNED NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_categorytmp` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_category` INTEGER UNSIGNED NOT NULL,
    `it618_name` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_class1` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_classname` VARCHAR(255) NOT NULL,
    `it618_classnamenav` VARCHAR(10) NOT NULL,
    `it618_cssname` VARCHAR(50) NOT NULL,
    `it618_order` INTEGER UNSIGNED NOT NULL,
    `it618_goodscount` INTEGER UNSIGNED NOT NULL,
    `it618_wapgoodscount` INTEGER UNSIGNED NOT NULL DEFAULT 5,
    `it618_img` VARCHAR(255) NOT NULL DEFAULT '',
    `it618_url` VARCHAR(255) NOT NULL,
    `it618_istj` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_homeorder` INTEGER UNSIGNED NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_class2` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_class1_id` INTEGER UNSIGNED NOT NULL,
    `it618_classname` VARCHAR(255) NOT NULL,
    `it618_color` VARCHAR(50) NOT NULL,
    `it618_order` INTEGER UNSIGNED NOT NULL,
    `it618_istj` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_goodscount` INTEGER UNSIGNED NOT NULL,
    `it618_wapgoodscount` INTEGER UNSIGNED NOT NULL,
    `it618_homeorder` INTEGER UNSIGNED NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_collect` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_uid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_time` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_diy` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_name` VARCHAR(100) NOT NULL,
    `it618_type` VARCHAR(50) NOT NULL,
    `it618_modecode` MEDIUMTEXT NOT NULL,
    `it618_count` INTEGER UNSIGNED NOT NULL DEFAULT 10,
    `it618_isjs` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_time` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_catchtime` INTEGER UNSIGNED NOT NULL DEFAULT 1,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_findkey` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_uid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_key` VARCHAR(200) NOT NULL,
    `it618_count` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_time` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_focus` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_type` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_img` VARCHAR(255) NOT NULL,
    `it618_url` VARCHAR(255) NOT NULL,
    `it618_order` INTEGER UNSIGNED NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_gonggao` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_title` VARCHAR(255) NOT NULL,
    `it618_url` VARCHAR(255) NOT NULL,
    `it618_color` VARCHAR(50) NOT NULL,
    `it618_isbold` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_order` INTEGER UNSIGNED NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_goods` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_class1_id` INTEGER UNSIGNED NOT NULL,
    `it618_class2_id` INTEGER UNSIGNED NOT NULL,
    `it618_productid` VARCHAR(50) NOT NULL,
    `it618_name` VARCHAR(255) NOT NULL,
    `it618_acsalebl` FLOAT NOT NULL,
    `it618_actime1` VARCHAR(50) NOT NULL,
    `it618_actime2` VARCHAR(50) NOT NULL,
    `it618_pcurl` VARCHAR(1000) NOT NULL,
    `it618_wapurl` VARCHAR(1000) NOT NULL,
    `it618_codeurl` VARCHAR(100) NOT NULL,
    `it618_quanstr` VARCHAR(1000) NOT NULL,
    `it618_quanurl` VARCHAR(1000) NOT NULL,
    `it618_quancodeurl` VARCHAR(100) NOT NULL,
    `it618_quantime1` VARCHAR(50) NOT NULL,
    `it618_quantime2` VARCHAR(50) NOT NULL,
    `it618_message1` MEDIUMTEXT NOT NULL,
    `it618_message2` MEDIUMTEXT NOT NULL,
    `it618_xgtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_xgcount` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_description` VARCHAR(1000) NOT NULL,
    `it618_seokeywords` VARCHAR(1000) NOT NULL,
    `it618_seodescription` VARCHAR(1000) NOT NULL,
    `it618_price` FLOAT NOT NULL,
    `it618_saleprice` FLOAT NOT NULL,
    `it618_pic` VARCHAR(255) NOT NULL,
    `it618_message` MEDIUMTEXT NOT NULL,
    `it618_salecount` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_collect` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_views` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_order` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_istj` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_isurl` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_state` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_time` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_category` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_kd` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_name` VARCHAR(255) NOT NULL,
    `it618_url` VARCHAR(1000) NOT NULL,
    `it618_order` INTEGER UNSIGNED NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_kf` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_isok` INTEGER UNSIGNED NOT NULL,
    `it618_top` INTEGER UNSIGNED NOT NULL,
    `it618_width` INTEGER UNSIGNED NOT NULL,
    `it618_title` VARCHAR(80) NOT NULL,
    `it618_about` VARCHAR(1000) NOT NULL,
    `it618_yytime` VARCHAR(200) NOT NULL,
    `it618_dianhua` VARCHAR(80) NOT NULL,
    `it618_kefuqq` VARCHAR(80) NOT NULL,
    `it618_kefuwx` VARCHAR(200) NOT NULL,
    `it618_kefuqqname` VARCHAR(200) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_money` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_uid` INTEGER UNSIGNED NOT NULL,
    `it618_daoid` VARCHAR(50) NOT NULL,
    `it618_saleid` VARCHAR(50) NOT NULL,
    `it618_productid` VARCHAR(50) NOT NULL,
    `it618_pname` VARCHAR(200) NOT NULL,
    `it618_money` FLOAT NOT NULL,
    `it618_salebl` FLOAT NOT NULL,
    `it618_salemoney` FLOAT NOT NULL,
    `it618_score` INTEGER UNSIGNED NOT NULL,
    `it618_count` INTEGER UNSIGNED NOT NULL,
    `it618_time1` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_time2` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_nav` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_name` VARCHAR(255) NOT NULL,
    `it618_color` VARCHAR(50) NOT NULL,
    `it618_url` VARCHAR(255) NOT NULL,
    `it618_target` INTEGER UNSIGNED NOT NULL,
    `it618_order` INTEGER UNSIGNED NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_sale` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_uid` INTEGER UNSIGNED NOT NULL,
    `it618_pid` INTEGER UNSIGNED NOT NULL,
    `it618_pname` VARCHAR(200) NOT NULL,
    `it618_price` FLOAT NOT NULL,
    `it618_salebl` FLOAT NOT NULL,
    `it618_score` INTEGER UNSIGNED NOT NULL,
    `it618_count` INTEGER UNSIGNED NOT NULL,
    `it618_state` INTEGER UNSIGNED NOT NULL,
    `it618_name` VARCHAR(20) NOT NULL,
    `it618_tel` VARCHAR(20) NOT NULL,
    `it618_addr` VARCHAR(200) NOT NULL,
    `it618_bz` VARCHAR(2000) NOT NULL,
    `it618_kdid` INTEGER UNSIGNED NOT NULL,
    `it618_kddan` VARCHAR(100) NOT NULL,
    `it618_time` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_salework` (
    `it618_iswork` INTEGER UNSIGNED NOT NULL
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_set` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `setname` VARCHAR(50) NOT NULL,
    `setvalue` MEDIUMTEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_style` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_color1` VARCHAR(50) NOT NULL,
    `it618_color2` VARCHAR(50) NOT NULL,
    `it618_isok` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_wapiconav` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_title` VARCHAR(10) NOT NULL,
    `it618_img` VARCHAR(255) NOT NULL,
    `it618_url` VARCHAR(255) NOT NULL,
    `it618_target` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_color` VARCHAR(50) NOT NULL,
    `it618_isbold` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `it618_order` INTEGER UNSIGNED NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_it618_sale_wapstyle` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `it618_color1` VARCHAR(50) NOT NULL,
    `it618_color2` VARCHAR(50) NOT NULL,
    `it618_isok` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_mobileoem_member` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `newpush` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_mobileoem_pushthreads` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `type` BOOLEAN NOT NULL DEFAULT false,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `uid`(`uid`, `type`, `dateline`),

    PRIMARY KEY (`uid`,`type`,`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_mobile_setting` (
    `skey` VARCHAR(255) NOT NULL DEFAULT '',
    `svalue` TEXT NOT NULL,

    PRIMARY KEY (`skey`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_mobile_wechat_authcode` (
    `sid` CHAR(6) NOT NULL,
    `code` INTEGER UNSIGNED NOT NULL,
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `status` BOOLEAN NOT NULL DEFAULT false,
    `createtime` INTEGER UNSIGNED NOT NULL,
UNIQUE INDEX `pre_mobile_wechat_authcode.code_unique`(`code`),
INDEX `createtime`(`createtime`),

    PRIMARY KEY (`sid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_mobile_wechat_masssend` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` CHAR(5) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `resource_id` INTEGER UNSIGNED NOT NULL,
    `group_id` INTEGER UNSIGNED NOT NULL,
    `text` TEXT,
    `media_id` CHAR(64) DEFAULT '',
    `created_at` INTEGER UNSIGNED NOT NULL,
    `sent_at` INTEGER UNSIGNED,
    `msg_id` INTEGER UNSIGNED,
    `res_status` VARCHAR(50),
    `res_totalcount` INTEGER,
    `res_filtercount` INTEGER,
    `res_sentcount` INTEGER,
    `res_errorcount` INTEGER,
    `res_finish_at` INTEGER,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_mobile_wechat_resource` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL,
    `type` BOOLEAN NOT NULL DEFAULT false,
    `data` TEXT NOT NULL,
INDEX `type`(`type`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_mobile_wsq_threadlist` (
    `skey` INTEGER UNSIGNED NOT NULL,
    `svalue` TEXT NOT NULL,

    PRIMARY KEY (`skey`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_plugin_sina_blog_ht` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `sina_uid` BIGINT NOT NULL,
    `blogid` INTEGER NOT NULL,
    `uid` INTEGER NOT NULL,
    `sina_mid` BIGINT NOT NULL,
    `sina_id` BIGINT NOT NULL,
    `username` VARCHAR(255) NOT NULL,
    `timestamp` BIGINT NOT NULL,
    `title` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_plugin_sina_ht` (
    `id` BIGINT NOT NULL,
    `tid` INTEGER NOT NULL,
    `mid` BIGINT NOT NULL,
    `uid` BIGINT NOT NULL
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_plugin_sina_mhht` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `sina_uid` BIGINT NOT NULL,
    `aid` INTEGER NOT NULL,
    `uid` INTEGER NOT NULL,
    `sina_mid` BIGINT NOT NULL,
    `sina_id` BIGINT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_article_content` (
    `cid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `aid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `idtype` VARCHAR(255) NOT NULL DEFAULT '',
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `content` TEXT NOT NULL,
    `pageorder` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `aid`(`aid`, `pageorder`),
INDEX `pageorder`(`pageorder`),

    PRIMARY KEY (`cid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_article_count` (
    `aid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `catid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `viewnum` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `commentnum` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `favtimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `sharetimes` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_article_moderate` (
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` TINYINT NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `status`(`status`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_article_related` (
    `aid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `raid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `displayorder` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `aid`(`aid`, `displayorder`),

    PRIMARY KEY (`aid`,`raid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_article_title` (
    `aid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `catid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `bid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(255) NOT NULL DEFAULT '',
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `shorttitle` VARCHAR(255) NOT NULL DEFAULT '',
    `highlight` VARCHAR(255) NOT NULL DEFAULT '',
    `author` VARCHAR(255) NOT NULL DEFAULT '',
    `from` VARCHAR(255) NOT NULL DEFAULT '',
    `fromurl` VARCHAR(255) NOT NULL DEFAULT '',
    `url` VARCHAR(255) NOT NULL DEFAULT '',
    `summary` VARCHAR(255) NOT NULL DEFAULT '',
    `pic` VARCHAR(255) NOT NULL DEFAULT '',
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `idtype` VARCHAR(255) NOT NULL DEFAULT '',
    `contents` SMALLINT NOT NULL DEFAULT 0,
    `allowcomment` BOOLEAN NOT NULL DEFAULT false,
    `owncomment` BOOLEAN NOT NULL DEFAULT false,
    `click1` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click2` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click3` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click4` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click5` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click6` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click7` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `click8` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `tag` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT false,
    `showinnernav` BOOLEAN NOT NULL DEFAULT false,
    `preaid` MEDIUMINT UNSIGNED NOT NULL,
    `nextaid` MEDIUMINT UNSIGNED NOT NULL,
    `htmlmade` BOOLEAN NOT NULL DEFAULT false,
    `htmlname` VARCHAR(255) NOT NULL DEFAULT '',
    `htmldir` VARCHAR(255) NOT NULL DEFAULT '',
INDEX `catid`(`catid`, `dateline`),

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_article_trash` (
    `aid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `content` TEXT NOT NULL,

    PRIMARY KEY (`aid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_attachment` (
    `attachid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `filetype` VARCHAR(255) NOT NULL DEFAULT '',
    `filesize` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `attachment` VARCHAR(255) NOT NULL DEFAULT '',
    `isimage` BOOLEAN NOT NULL DEFAULT false,
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `remote` BOOLEAN NOT NULL DEFAULT false,
    `aid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `aid`(`aid`, `attachid`),

    PRIMARY KEY (`attachid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_category` (
    `catid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `upid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `catname` VARCHAR(255) NOT NULL DEFAULT '',
    `articles` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `allowcomment` BOOLEAN NOT NULL DEFAULT true,
    `displayorder` SMALLINT NOT NULL DEFAULT 0,
    `notinheritedarticle` BOOLEAN NOT NULL DEFAULT false,
    `notinheritedblock` BOOLEAN NOT NULL DEFAULT false,
    `domain` VARCHAR(255) NOT NULL DEFAULT '',
    `url` VARCHAR(255) NOT NULL DEFAULT '',
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(255) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `closed` BOOLEAN NOT NULL DEFAULT false,
    `shownav` BOOLEAN NOT NULL DEFAULT false,
    `description` TEXT NOT NULL,
    `seotitle` TEXT NOT NULL,
    `keyword` TEXT NOT NULL,
    `primaltplname` VARCHAR(255) NOT NULL DEFAULT '',
    `articleprimaltplname` VARCHAR(255) NOT NULL DEFAULT '',
    `disallowpublish` BOOLEAN NOT NULL DEFAULT false,
    `foldername` VARCHAR(255) NOT NULL DEFAULT '',
    `notshowarticlesummay` VARCHAR(255) NOT NULL DEFAULT '',
    `perpage` SMALLINT NOT NULL DEFAULT 0,
    `maxpages` SMALLINT NOT NULL DEFAULT 0,
    `noantitheft` BOOLEAN NOT NULL DEFAULT false,
    `lastpublish` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`catid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_category_permission` (
    `catid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `allowpublish` BOOLEAN NOT NULL DEFAULT false,
    `allowmanage` BOOLEAN NOT NULL DEFAULT false,
    `inheritedcatid` MEDIUMINT NOT NULL DEFAULT 0,
INDEX `uid`(`uid`),

    PRIMARY KEY (`catid`,`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_comment` (
    `cid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(255) NOT NULL DEFAULT '',
    `id` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `idtype` VARCHAR(20) NOT NULL DEFAULT '',
    `postip` VARCHAR(255) NOT NULL DEFAULT '',
    `port` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT false,
    `message` TEXT NOT NULL,
INDEX `idtype`(`id`, `idtype`, `dateline`),

    PRIMARY KEY (`cid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_comment_moderate` (
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `idtype` VARCHAR(15) NOT NULL DEFAULT '',
    `status` TINYINT NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `idtype`(`idtype`, `status`, `dateline`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_rsscache` (
    `lastupdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `catid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `aid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `catname` CHAR(50) NOT NULL DEFAULT '',
    `author` CHAR(15) NOT NULL DEFAULT '',
    `subject` CHAR(80) NOT NULL DEFAULT '',
    `description` CHAR(255) NOT NULL DEFAULT '',
UNIQUE INDEX `pre_portal_rsscache.aid_unique`(`aid`),
INDEX `catid`(`catid`, `dateline`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_topic` (
    `topicid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `name` VARCHAR(255) NOT NULL DEFAULT '',
    `domain` VARCHAR(255) NOT NULL DEFAULT '',
    `summary` TEXT NOT NULL,
    `keyword` TEXT NOT NULL,
    `cover` VARCHAR(255) NOT NULL DEFAULT '',
    `picflag` BOOLEAN NOT NULL DEFAULT false,
    `primaltplname` VARCHAR(255) NOT NULL DEFAULT '',
    `useheader` BOOLEAN NOT NULL DEFAULT false,
    `usefooter` BOOLEAN NOT NULL DEFAULT false,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(255) NOT NULL DEFAULT '',
    `viewnum` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `closed` BOOLEAN NOT NULL DEFAULT false,
    `allowcomment` BOOLEAN NOT NULL DEFAULT false,
    `commentnum` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `htmlmade` BOOLEAN NOT NULL DEFAULT false,
    `htmldir` VARCHAR(255) NOT NULL DEFAULT '',
INDEX `name`(`name`),

    PRIMARY KEY (`topicid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_portal_topic_pic` (
    `picid` MEDIUMINT NOT NULL AUTO_INCREMENT,
    `topicid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filename` VARCHAR(255) NOT NULL DEFAULT '',
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `size` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `filepath` VARCHAR(255) NOT NULL DEFAULT '',
    `thumb` BOOLEAN NOT NULL DEFAULT false,
    `remote` BOOLEAN NOT NULL DEFAULT false,
INDEX `topicid`(`topicid`),

    PRIMARY KEY (`picid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_security_evilpost` (
    `pid` INTEGER UNSIGNED NOT NULL,
    `tid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `type` BOOLEAN NOT NULL DEFAULT false,
    `evilcount` INTEGER NOT NULL DEFAULT 0,
    `eviltype` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `createtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `operateresult` BOOLEAN NOT NULL DEFAULT false,
    `isreported` BOOLEAN NOT NULL DEFAULT false,
    `censorword` CHAR(50) NOT NULL,
INDEX `operateresult`(`operateresult`, `createtime`),
INDEX `type`(`tid`, `type`),

    PRIMARY KEY (`pid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_security_eviluser` (
    `uid` INTEGER UNSIGNED NOT NULL,
    `evilcount` INTEGER NOT NULL DEFAULT 0,
    `eviltype` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `createtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `operateresult` BOOLEAN NOT NULL DEFAULT false,
    `isreported` BOOLEAN NOT NULL DEFAULT false,
INDEX `operateresult`(`operateresult`, `createtime`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_security_failedlog` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `reporttype` CHAR(20) NOT NULL,
    `tid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `pid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `uid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `failcount` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `createtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `posttime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `delreason` CHAR(255) NOT NULL,
    `scheduletime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastfailtime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `extra1` INTEGER UNSIGNED NOT NULL,
    `extra2` CHAR(255) NOT NULL DEFAULT '0',
INDEX `pid`(`pid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_sendcloud_sys` (
    `skey` VARCHAR(64) NOT NULL,
    `svalue` VARCHAR(64) NOT NULL,

    PRIMARY KEY (`skey`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_sessions` (
    `SessionKey` VARCHAR(32) NOT NULL DEFAULT '',
    `SessionArray` BLOB NOT NULL,
    `SessionExpTime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `SessionKey`(`SessionKey`),

    PRIMARY KEY (`SessionKey`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_study_daily_attendance` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_study_daily_attendance_continuous_sign` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `conti_days` MEDIUMINT UNSIGNED NOT NULL DEFAULT 1,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ta7_email` (
    `tid` INTEGER NOT NULL,

    PRIMARY KEY (`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_admins` (
    `uid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` CHAR(15) NOT NULL DEFAULT '',
    `allowadminsetting` BOOLEAN NOT NULL DEFAULT false,
    `allowadminapp` BOOLEAN NOT NULL DEFAULT false,
    `allowadminuser` BOOLEAN NOT NULL DEFAULT false,
    `allowadminbadword` BOOLEAN NOT NULL DEFAULT false,
    `allowadmintag` BOOLEAN NOT NULL DEFAULT false,
    `allowadminpm` BOOLEAN NOT NULL DEFAULT false,
    `allowadmincredits` BOOLEAN NOT NULL DEFAULT false,
    `allowadmindomain` BOOLEAN NOT NULL DEFAULT false,
    `allowadmindb` BOOLEAN NOT NULL DEFAULT false,
    `allowadminnote` BOOLEAN NOT NULL DEFAULT false,
    `allowadmincache` BOOLEAN NOT NULL DEFAULT false,
    `allowadminlog` BOOLEAN NOT NULL DEFAULT false,
UNIQUE INDEX `pre_ucenter_admins.username_unique`(`username`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_applications` (
    `appid` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(16) NOT NULL DEFAULT '',
    `name` VARCHAR(20) NOT NULL DEFAULT '',
    `url` VARCHAR(255) NOT NULL DEFAULT '',
    `authkey` VARCHAR(255) NOT NULL DEFAULT '',
    `ip` VARCHAR(15) NOT NULL DEFAULT '',
    `viewprourl` VARCHAR(255) NOT NULL,
    `apifilename` VARCHAR(30) NOT NULL DEFAULT 'uc.php',
    `charset` VARCHAR(8) NOT NULL DEFAULT '',
    `dbcharset` VARCHAR(8) NOT NULL DEFAULT '',
    `synlogin` BOOLEAN NOT NULL DEFAULT false,
    `recvnote` BOOLEAN DEFAULT false,
    `extra` TEXT NOT NULL,
    `tagtemplates` TEXT NOT NULL,
    `allowips` TEXT NOT NULL,

    PRIMARY KEY (`appid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_badwords` (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `admin` VARCHAR(15) NOT NULL DEFAULT '',
    `find` VARCHAR(255) NOT NULL DEFAULT '',
    `replacement` VARCHAR(255) NOT NULL DEFAULT '',
    `findpattern` VARCHAR(255) NOT NULL DEFAULT '',
UNIQUE INDEX `pre_ucenter_badwords.find_unique`(`find`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_domains` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `domain` CHAR(40) NOT NULL DEFAULT '',
    `ip` CHAR(15) NOT NULL DEFAULT '',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_failedlogins` (
    `ip` CHAR(15) NOT NULL DEFAULT '',
    `count` BOOLEAN NOT NULL DEFAULT false,
    `lastupdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,

    PRIMARY KEY (`ip`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_feeds` (
    `feedid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `appid` VARCHAR(30) NOT NULL DEFAULT '',
    `icon` VARCHAR(30) NOT NULL DEFAULT '',
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` VARCHAR(15) NOT NULL DEFAULT '',
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `hash_template` VARCHAR(32) NOT NULL DEFAULT '',
    `hash_data` VARCHAR(32) NOT NULL DEFAULT '',
    `title_template` TEXT NOT NULL,
    `title_data` TEXT NOT NULL,
    `body_template` TEXT NOT NULL,
    `body_data` TEXT NOT NULL,
    `body_general` TEXT NOT NULL,
    `image_1` VARCHAR(255) NOT NULL DEFAULT '',
    `image_1_link` VARCHAR(255) NOT NULL DEFAULT '',
    `image_2` VARCHAR(255) NOT NULL DEFAULT '',
    `image_2_link` VARCHAR(255) NOT NULL DEFAULT '',
    `image_3` VARCHAR(255) NOT NULL DEFAULT '',
    `image_3_link` VARCHAR(255) NOT NULL DEFAULT '',
    `image_4` VARCHAR(255) NOT NULL DEFAULT '',
    `image_4_link` VARCHAR(255) NOT NULL DEFAULT '',
    `target_ids` VARCHAR(255) NOT NULL DEFAULT '',
INDEX `uid`(`uid`, `dateline`),

    PRIMARY KEY (`feedid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_friends` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `friendid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `direction` BOOLEAN NOT NULL DEFAULT false,
    `version` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `delstatus` BOOLEAN NOT NULL DEFAULT false,
    `comment` CHAR(255) NOT NULL DEFAULT '',
INDEX `friendid`(`friendid`),
INDEX `uid`(`uid`),

    PRIMARY KEY (`version`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_mailqueue` (
    `mailid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `touid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `tomail` VARCHAR(32) NOT NULL,
    `frommail` VARCHAR(100) NOT NULL,
    `subject` VARCHAR(255) NOT NULL,
    `message` TEXT NOT NULL,
    `charset` VARCHAR(15) NOT NULL,
    `htmlon` BOOLEAN NOT NULL DEFAULT false,
    `level` BOOLEAN NOT NULL DEFAULT true,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `failures` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `appid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `appid`(`appid`),
INDEX `level`(`level`, `failures`),

    PRIMARY KEY (`mailid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_memberfields` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,
    `blacklist` TEXT NOT NULL,

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_members` (
    `uid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` CHAR(15) NOT NULL DEFAULT '',
    `password` CHAR(32) NOT NULL DEFAULT '',
    `email` CHAR(32) NOT NULL DEFAULT '',
    `myid` CHAR(30) NOT NULL DEFAULT '',
    `myidkey` CHAR(16) NOT NULL DEFAULT '',
    `regip` CHAR(15) NOT NULL DEFAULT '',
    `regdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastloginip` INTEGER NOT NULL DEFAULT 0,
    `lastlogintime` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `salt` CHAR(6) NOT NULL,
    `secques` CHAR(8) NOT NULL DEFAULT '',
UNIQUE INDEX `pre_ucenter_members.username_unique`(`username`),
INDEX `email`(`email`),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_mergemembers` (
    `appid` SMALLINT UNSIGNED NOT NULL,
    `username` CHAR(15) NOT NULL,

    PRIMARY KEY (`appid`,`username`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_newpm` (
    `uid` MEDIUMINT UNSIGNED NOT NULL,

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_notelist` (
    `noteid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `operation` CHAR(32) NOT NULL,
    `closed` TINYINT NOT NULL DEFAULT 0,
    `totalnum` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `succeednum` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `getdata` MEDIUMTEXT NOT NULL,
    `postdata` MEDIUMTEXT NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `pri` TINYINT NOT NULL DEFAULT 0,
    `app1` TINYINT NOT NULL,
INDEX `closed`(`closed`, `pri`, `noteid`),
INDEX `dateline`(`dateline`),

    PRIMARY KEY (`noteid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_pm_indexes` (
    `pmid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `plid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
INDEX `plid`(`plid`),

    PRIMARY KEY (`pmid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_pm_lists` (
    `plid` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `pmtype` BOOLEAN NOT NULL DEFAULT false,
    `subject` VARCHAR(80) NOT NULL,
    `members` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `min_max` VARCHAR(17) NOT NULL,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastmessage` TEXT NOT NULL,
INDEX `authorid`(`authorid`, `dateline`),
INDEX `min_max`(`min_max`),
INDEX `pmtype`(`pmtype`),

    PRIMARY KEY (`plid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_pm_members` (
    `plid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `isnew` BOOLEAN NOT NULL DEFAULT false,
    `pmnum` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastupdate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `lastdateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `isnew`(`isnew`),
INDEX `lastdateline`(`uid`, `lastdateline`),
INDEX `lastupdate`(`uid`, `lastupdate`),

    PRIMARY KEY (`plid`,`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_pm_messages_0` (
    `pmid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `plid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `delstatus` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`plid`, `dateline`),
INDEX `plid`(`plid`, `delstatus`, `dateline`),

    PRIMARY KEY (`pmid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_pm_messages_1` (
    `pmid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `plid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `delstatus` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`plid`, `dateline`),
INDEX `plid`(`plid`, `delstatus`, `dateline`),

    PRIMARY KEY (`pmid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_pm_messages_2` (
    `pmid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `plid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `delstatus` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`plid`, `dateline`),
INDEX `plid`(`plid`, `delstatus`, `dateline`),

    PRIMARY KEY (`pmid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_pm_messages_3` (
    `pmid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `plid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `delstatus` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`plid`, `dateline`),
INDEX `plid`(`plid`, `delstatus`, `dateline`),

    PRIMARY KEY (`pmid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_pm_messages_4` (
    `pmid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `plid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `delstatus` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`plid`, `dateline`),
INDEX `plid`(`plid`, `delstatus`, `dateline`),

    PRIMARY KEY (`pmid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_pm_messages_5` (
    `pmid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `plid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `delstatus` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`plid`, `dateline`),
INDEX `plid`(`plid`, `delstatus`, `dateline`),

    PRIMARY KEY (`pmid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_pm_messages_6` (
    `pmid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `plid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `delstatus` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`plid`, `dateline`),
INDEX `plid`(`plid`, `delstatus`, `dateline`),

    PRIMARY KEY (`pmid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_pm_messages_7` (
    `pmid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `plid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `delstatus` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`plid`, `dateline`),
INDEX `plid`(`plid`, `delstatus`, `dateline`),

    PRIMARY KEY (`pmid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_pm_messages_8` (
    `pmid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `plid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `delstatus` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`plid`, `dateline`),
INDEX `plid`(`plid`, `delstatus`, `dateline`),

    PRIMARY KEY (`pmid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_pm_messages_9` (
    `pmid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `plid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `authorid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `message` TEXT NOT NULL,
    `delstatus` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
INDEX `dateline`(`plid`, `dateline`),
INDEX `plid`(`plid`, `delstatus`, `dateline`),

    PRIMARY KEY (`pmid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_protectedmembers` (
    `uid` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `username` CHAR(15) NOT NULL DEFAULT '',
    `appid` BOOLEAN NOT NULL DEFAULT false,
    `dateline` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `admin` CHAR(15) NOT NULL DEFAULT '0',
UNIQUE INDEX `username`(`username`, `appid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_settings` (
    `k` VARCHAR(32) NOT NULL DEFAULT '',
    `v` TEXT NOT NULL,

    PRIMARY KEY (`k`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_sqlcache` (
    `sqlid` CHAR(6) NOT NULL DEFAULT '',
    `data` CHAR(100) NOT NULL,
    `expiry` INTEGER UNSIGNED NOT NULL,
INDEX `expiry`(`expiry`),

    PRIMARY KEY (`sqlid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_tags` (
    `tagname` CHAR(20) NOT NULL,
    `appid` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `data` MEDIUMTEXT,
    `expiration` INTEGER UNSIGNED NOT NULL,
INDEX `tagname`(`tagname`, `appid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_ucenter_vars` (
    `name` CHAR(32) NOT NULL DEFAULT '',
    `value` CHAR(255) NOT NULL DEFAULT '',

    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pre_zzbuluo_replyemail_thread` (
    `tid` INTEGER NOT NULL DEFAULT 0,
    `status` BOOLEAN NOT NULL DEFAULT false,
INDEX `tid`(`tid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
