CREATE TABLE IF NOT EXISTS users (
    id serial primary key,
    name varchar(255),
    email varchar(255) unique not null,
    password varchar(255) not null
);
