--  *********************************************************************
--  SQL to roll back currently unexecuted changes
--  *********************************************************************
--  Change Log: dbchangelog9.xml
--  Ran at: 11/8/24, 1:36 AM
--  Against: uddezthursf9thpo@223.184.104.157@jdbc:mysql:@bkxg4abnmdjq9yqqpy7g-mysql.services.clever-cloud.com:3306/bkxg4abnmdjq9yqqpy7g
--  Liquibase version: 4.24.0
--  *********************************************************************

--  Lock Database
UPDATE bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOGLOCK SET `LOCKED` = 1, LOCKEDBY = 'rahul (192.168.111.62)', LOCKGRANTED = NOW() WHERE ID = 1 AND `LOCKED` = 0;

--  Rolling Back ChangeSet: dbchangelog9.xml::1731007738096-1::Rahul.Panwar (generated)
--  Release Database Lock
UPDATE bkxg4abnmdjq9yqqpy7g.DATABASECHANGELOGLOCK SET `LOCKED` = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

