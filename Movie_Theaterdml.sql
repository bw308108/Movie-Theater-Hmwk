SELECT *
FROM customer;

INSERT INTO customer(
    firstname,
    lastname,
    email
)
values (
    'Brian',
    'Wright',
    'wright@yahoo.com'
);

SELECT *
FROM tickets;

INSERT INTO tickets (
    theater,
    movie,
    showtime
)
values (
    'Parma Theater',
    'Black Panther',
    '2022-11-30 13:35:00'
);

SELECT *
FROM movie;

INSERT INTO movie (
    movie,
    showtime,
    rating
)
values (
    'Black Panther',
    '2022-11-30 13:35:00',
    'PG-13'

);

SELECT *
FROM concessions;

INSERT INTO concessions (
    food,
    beverage
)
values (
    'popcorn',
    'diet coke'
);