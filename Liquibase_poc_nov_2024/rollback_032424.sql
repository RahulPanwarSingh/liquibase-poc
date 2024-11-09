--  *********************************************************************
--  SQL to roll back currently unexecuted changes
--  *********************************************************************
--  Change Log: example-changelog.sql
--  Ran at: 11/8/24, 1:31 AM
--  Against: uddezthursf9thpo@223.184.104.157@jdbc:mysql:@bkxg4abnmdjq9yqqpy7g-mysql.services.clever-cloud.com:3306/bkxg4abnmdjq9yqqpy7g
--  Liquibase version: 4.24.0
--  *********************************************************************

--  Lock Database
UPDATE bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOGLOCK SET `LOCKED` = 1, LOCKEDBY = 'rahul (192.168.111.62)', LOCKGRANTED = NOW() WHERE ID = 1 AND `LOCKED` = 0;

--  Rolling Back ChangeSet: example-changelog.sql::9::Developer_05
Delete from DATABASECHANGELOG where tag is null;

DELETE FROM bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOG WHERE ID = '9' AND AUTHOR = 'Developer_05' AND FILENAME = 'example-changelog.sql';

--  Rolling Back ChangeSet: example-changelog.sql::8::Developer_04
Delete from person where id=2;

DELETE FROM bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOG WHERE ID = '8' AND AUTHOR = 'Developer_04' AND FILENAME = 'example-changelog.sql';

--  Rolling Back ChangeSet: example-changelog.sql::7::Developer_03
Drop table if exists example_table;

DELETE FROM bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOG WHERE ID = '7' AND AUTHOR = 'Developer_03' AND FILENAME = 'example-changelog.sql';

--  Rolling Back ChangeSet: example-changelog.sql::6::Developer_02
Delete from DATABASECHANGELOG where tag is null;

DELETE FROM bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOG WHERE ID = '6' AND AUTHOR = 'Developer_02' AND FILENAME = 'example-changelog.sql';

--  Rolling Back ChangeSet: example-changelog.sql::5::Developer_04
Delete from person where id=1;

DELETE FROM bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOG WHERE ID = '5' AND AUTHOR = 'Developer_04' AND FILENAME = 'example-changelog.sql';

--  Rolling Back ChangeSet: example-changelog.sql::4::Developer_01
ALTER TABLE person DROP COLUMN country;

DELETE FROM bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOG WHERE ID = '4' AND AUTHOR = 'Developer_01' AND FILENAME = 'example-changelog.sql';

--  Rolling Back ChangeSet: example-changelog.sql::3::Developer_02
Delete from DATABASECHANGELOG where tag is null;

DELETE FROM bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOG WHERE ID = '3' AND AUTHOR = 'Developer_02' AND FILENAME = 'example-changelog.sql';

--  Rolling Back ChangeSet: example-changelog.sql::2::Developer_02
DROP TABLE company;

DELETE FROM bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOG WHERE ID = '2' AND AUTHOR = 'Developer_02' AND FILENAME = 'example-changelog.sql';

--  Rolling Back ChangeSet: example-changelog.sql::1::Developer_01
DROP TABLE person;

DELETE FROM bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOG WHERE ID = '1' AND AUTHOR = 'Developer_01' AND FILENAME = 'example-changelog.sql';

--  Release Database Lock
UPDATE bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOGLOCK SET `LOCKED` = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

