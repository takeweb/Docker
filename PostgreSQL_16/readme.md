# PostgreSQLの新しいバージョンがリリースされたらやること

## Docker イメージ探しはここ
https://hub.docker.com/_/postgres

## Dockerfileの編集
下記部分のバージョンを上記で見つけたバージョンに書き換える
FROM postgres:16.0

## docker-compose.ymlの編集
container_name: local_db_container_pg16
postgresql-volume-pg16:/var/lib/postgresql/data
postgresql-volume-pg16
postgresql-volume-pg16

# 起動
docker-compose up --build -d

# .pgpassに追加
localhost:5435:postgres:postgres:postgres

# psql_utilで選択して接続
どのサーバに接続しますか?
1) database-1.cosgrtzynkks.ap-northeast-1.rds.amazonaws.com:5432:postgres:postgres
2) debian-sv:5435:my_db:takeweb
3) localhost:5435:postgres:postgres
#? 3

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