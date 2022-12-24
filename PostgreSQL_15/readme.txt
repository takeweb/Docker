docker-compose up --build -d
docker-compose down

docker volume ls
docker volume rm postgresql-volume-pg15

psql -h localhost -p 5434 -U postgres

export PGUSER=postgres
export PGPASSWORD=postgres
psql -h localhost -p 5434

postgres=# select * from foo;
 id |  name  | price
----+--------+-------
  1 | リンゴ |   100
  2 | バナナ |   150
  3 | ナシ   |   250
(3 rows)

postgres=# select * from bar;
 id |    name    | price
----+------------+-------
  1 | リンゴ_new |   110
  2 | バナナ_new |   160
  3 | ナシ_new   |   260
  4 | イチゴ     |   200
(4 rows)

MERGE INTO foo USING bar ON (foo.id = bar.id)
WHEN MATCHED THEN UPDATE SET name = bar.name, price = bar.price
WHEN NOT MATCHED THEN INSERT(id, name, price)
    VALUES(bar.id, bar.name, bar.price)
;

postgres=# select * from foo;
 id |    name    | price
----+------------+-------
  1 | リンゴ_new |   110
  2 | バナナ_new |   160
  3 | ナシ_new   |   260
  4 | イチゴ     |   200
(4 rows)

postgres=# select * from bar;
 id |    name    | price
----+------------+-------
  1 | リンゴ_new |   110
  2 | バナナ_new |   160
  3 | ナシ_new   |   260
  4 | イチゴ     |   200
(4 rows)