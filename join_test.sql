drop table if exists roles;

drop table if exists users;


CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);


CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null),
('new1', 'new1@example.com', null),
('new2', 'new2@example.com', 2),
('new3', 'new3@example.com', 2),
('new4', 'new4@example.com', 2);


select * from roles;

select * from users;

select users.name as user_name, roles.name as roles_name
from users
join roles on users.role_id = roles.id;

select users.name as user_name, roles.name as roles_name
from users
left join roles on users.role_id = roles.id;

select users.name as user_name, roles.name as roles_name
from users
right join roles on users.role_id = roles.id;


select count(users.name and roles.name)
from users
right join roles on users.role_id = roles.id group by role_id

select count(users.name and roles.name)
from users
join roles on users.role_id = roles.id group by role_id

select count(users.name and roles.name)
from users
left join roles on users.role_id = roles.id group by role_id