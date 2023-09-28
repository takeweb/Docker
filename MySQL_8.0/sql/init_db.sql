CREATE TABLE foo (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    price INTEGER
)
;

INSERT INTO foo(id, name, price) VALUES
 (1, 'リンゴ', 100),
 (2, 'バナナ', 150),
 (3, 'ナシ', 250)
;

CREATE TABLE bar (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    price INTEGER
)
;

INSERT INTO bar(id, name, price) VALUES
 (1, 'リンゴ_new', 110),
 (2, 'バナナ_new', 160),
 (3, 'ナシ_new', 260),
 (4, 'イチゴ', 200)
;
