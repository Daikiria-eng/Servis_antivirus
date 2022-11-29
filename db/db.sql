CREATE TABLE users(
    id SERIAL,
    fullName VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    CONSTRAINT pk_id_user PRIMARY KEY (id)
);

CREATE TABLE stadistics(
    id_user INT NOT NULL,
    module VARCHAR(30) NOT NULL,
    date_count DATE NOT NULL,
    CONSTRAINT fk_stadistics_user
    FOREIGN KEY (id_user)
    REFERENCES users (id)
    ON DELETE CASCADE
);

CREATE INDEX date_count_idx ON stadistics(date_count)
