--liquibase formatted sql

--changeset Developer_01:1 labels:example-label context:example-context
--comment: example comment
create table person_new (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE person_new;



--changeset Developer_01:2 labels:example-label context:example-context
--comment: insert sample data into person_new

insert into person_new (name, address1, address2, city) 
values 
    ('John Doe', '123 Main St', 'Apt 4B', 'Springfield'),
    ('Jane Smith', '456 Oak St', NULL, 'Shelbyville'),
    ('Alice Johnson', '789 Pine St', 'Suite 5C', 'Capital City');

--rollback DELETE FROM person_new WHERE name IN ('John Doe', 'Jane Smith', 'Alice Johnson');

