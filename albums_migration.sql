USE codeup_test_db,

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED AUTO_INCREMENT,
         artist VARCHAR(100),
         name VARCHAR(100),
         release_date DATE,
         sales float,
         genre TEXT NOT NULL,
         PRIMARY KEY(id)

)

