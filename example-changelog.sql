--liquibase formatted sql

--changeset Developer_02:0 labels:Apply tag-version_0.0 context:example-context
UPDATE DATABASECHANGELOG SET tag = 'version_0.0' WHERE tag is null;
--rollback Delete from DATABASECHANGELOG where tag is null;

--changeset Developer_01:1 labels:example-label context:example-context
--comment: example comment
create table person (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE person;


--changeset Developer_02:2 labels:example-label context:example-context
--comment: example comment
create table company (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE company;


--changeset Developer_02:3 labels:Apply tag-version_1.0 context:example-context
UPDATE DATABASECHANGELOG SET tag = 'version_1.0' WHERE tag is null;
--rollback Delete from DATABASECHANGELOG where tag is null;


--changeset Developer_01:4 labels:example-label context:example-context
--comment: example comment
alter table person add column country varchar(2)
--rollback ALTER TABLE person DROP COLUMN country;


--changeset Developer_04:5 labels:insert data into person context:data_insertition
--comment: example comment
INSERT INTO `person` (`id`, `name`, `address1`, `address2`, `city`, `country`) VALUES (1, 'Rahul', 'VKI Road', 'VK2 Road', 'Jaipur', 'IN');
--rollback Delete from person where id=1;


--changeset Developer_02:6 labels:Apply tag-version_2.0 context:example-context
UPDATE DATABASECHANGELOG SET tag = 'version_2.0' WHERE tag is null;
--rollback Delete from DATABASECHANGELOG where tag is null;

-- changeset Developer_03:7
CREATE TABLE example_table (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    description VARCHAR(255) NOT NULL
);
--rollback Drop table if exists example_table;

--changeset Developer_04:8 labels:insert data into person context:data_insertition
--comment: example comment
INSERT INTO `person` (`id`, `name`, `address1`, `address2`, `city`, `country`) VALUES (2, 'Mohan', 'VKI Road', 'VK2 Road', 'Jaipur', 'IN');
--rollback Delete from person where id=2;

--changeset Developer_05:9 labels:Apply tag-version_5.0 context:example-context
UPDATE DATABASECHANGELOG SET tag = 'version_3.0' WHERE tag is null;
--rollback Delete from DATABASECHANGELOG where tag is null;