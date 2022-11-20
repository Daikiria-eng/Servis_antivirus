CREATE TABLE users(
    id SERIAL,
    fullName VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    CONSTRAINT pk_id_user PRIMARY KEY (id)
);

CREATE TABLE stadistics(
    security INT NOT NULL,
    information INT NOT NULL,
    prevention INT NOT NULL
);
