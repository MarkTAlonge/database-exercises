use employees;

describe salaries;

describe departments;

describe dept_emp;

describe employees;

describe titles;

describe dept_manager;

use codeup_test_db;

create table if not exists authors
(
    id           int          not null auto_increment,
    artist       varchar(100) not null,
    name         varchar(100) not null,
    release_date smallint         not null,
    genre        text         not null,
    sales        float
    PRIMARY KEY(id)
);


# select * from titles where titles;