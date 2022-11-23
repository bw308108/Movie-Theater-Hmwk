SELECT *
FROM customer;

CREATE TABLE customer(
    customer_id serial primary key,
    ticket_id integer,
    firstname varchar(50),
    lastname varchar(50),
    email varchar(50)

);

CREATE TABLE tickets(
    ticket_id serial primary key,
    customer_id integer,
    theater varchar(50),
    movie varchar(50),
    showtime timestamp,
    film_id integer

);

CREATE TABLE movie(
    film_id serial primary key,
    ticket_id integer,
    movie varchar(50),
    showtime timestamp,
    rating varchar(50)
);

CREATE TABLE concessions(
    order_id serial primary key,
    food varchar(50),
    beverage varchar(50)
);

ALTER TABLE customer
add foreign key (ticket_id) references tickets(ticket_id);

ALTER TABLE tickets
add foreign key (customer_id) references customer(customer_id);

ALTER TABLE movie
add foreign key (ticket_id) references tickets(ticket_id);

ALTER TABLE tickets
add foreign key (film_id) references movie(film_id);

ALTER table customer
ALTER column lastname set not null;

ALTER table customer
ALTER column firstname set not null;