--  *********************************************************************
--  SQL to roll back currently unexecuted changes
--  *********************************************************************
--  Change Log: dbchangelog.xml
--  Ran at: 11/8/24, 1:34 AM
--  Against: uddezthursf9thpo@223.184.104.157@jdbc:mysql:@bkxg4abnmdjq9yqqpy7g-mysql.services.clever-cloud.com:3306/bkxg4abnmdjq9yqqpy7g
--  Liquibase version: 4.24.0
--  *********************************************************************

--  Lock Database
UPDATE bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOGLOCK SET `LOCKED` = 1, LOCKEDBY = 'rahul (192.168.111.62)', LOCKGRANTED = NOW() WHERE ID = 1 AND `LOCKED` = 0;

--  Rolling Back ChangeSet: dbchangelog.xml::1731006966187-3::Rahul.Panwar (generated)
DROP TABLE bkxg4abnmdjq9yqqpy7g.person;

DELETE FROM bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOG WHERE ID = '1731006966187-3' AND AUTHOR = 'Rahul.Panwar (generated)' AND FILENAME = 'dbchangelog.xml';

--  Rolling Back ChangeSet: dbchangelog.xml::1731006966187-2::Rahul.Panwar (generated)
DROP TABLE bkxg4abnmdjq9yqqpy7g.example_table;

DELETE FROM bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOG WHERE ID = '1731006966187-2' AND AUTHOR = 'Rahul.Panwar (generated)' AND FILENAME = 'dbchangelog.xml';

--  Rolling Back ChangeSet: dbchangelog.xml::1731006966187-1::Rahul.Panwar (generated)
DROP TABLE bkxg4abnmdjq9yqqpy7g.company;

DELETE FROM bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOG WHERE ID = '1731006966187-1' AND AUTHOR = 'Rahul.Panwar (generated)' AND FILENAME = 'dbchangelog.xml';

--  Release Database Lock
UPDATE bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOGLOCK SET `LOCKED` = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

