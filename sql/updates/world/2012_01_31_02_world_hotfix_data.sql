ALTER TABLE hotfix_data ADD `hotfixDate` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:01' AFTER `unk`;
UPDATE `hotfix_data` SET `hotfixDate`=FROM_UNIXTIME(`unk`);
ALTER TABLE `hotfix_data` DROP PRIMARY KEY;
ALTER TABLE `hotfix_data` ADD PRIMARY KEY (`entry`,`type`,`hotfixDate`);
ALTER TABLE `hotfix_data` DROP `unk`;
