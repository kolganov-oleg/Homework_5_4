CREATE TABLE book (
    id        SERIAL primary key,
    name      varchar(50),
    author_id integer
);
CREATE TABLE author (
    id   SERIAL primary key,
    name varchar(40)
);
INSERT INTO author (name)
values ('Александр Дюма');

INSERT INTO author (name)
values ('Джоан Роулинг');

INSERT INTO author (name)
values ('Редьярд Киплинг');

INSERT INTO author (name)
values ('Лев Толстой');

INSERT INTO book (name, author_id)
values ('Золотой ключик', 4);

INSERT INTO book (name, author_id)
values ('Три мушкетера', 1);

INSERT INTO book (name, author_id)
values ('Гарри поттер и философский камень', 2);

INSERT INTO book (name, author_id)
values ('Гарри поттер и тайная комната', 2);

INSERT INTO book (name, author_id)
values ('Маугли', 3);

SELECT book.name, book.author_id, author.name FROM book JOIN author on author.id = book.author_id and author.name = 'Джоан Роулинг'