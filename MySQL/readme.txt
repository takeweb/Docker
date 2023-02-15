docker-compose up --build -d
docker-compose down

docker volume ls
docker volume rm volume-mysql8

OK: mysql -h 127.0.0.1 -P 13306 -u root -p
→my-secret-pw

# OK: ローカル(127.0.0.1)のMySQL・ポート「13306」・ユーザ「mysql」・パスワード
mysql -h 127.0.0.1 -P 13306 -u mysql -p
→mysql

# OK: ローカル(127.0.0.1)のMySQL・ポート「13306」・ユーザ「mysql」・パスワード・データベース「test_db」
mysql -h 127.0.0.1 -P 13306 -u mysql -p test_db
→mysql

# OK: ローカル(127.0.0.1)のMySQL・ポート「13306」・ユーザ「mysql」・パスワード・データベース「test_db」
# 接続に必要な情報をmysql-dbaccess.cnfに記述して接続する
mysql --defaults-extra-file=mysql-dbaccess.cnf

NG: mysql -h localhost -u mysql -ppassword mysql --port=13306
NG: mysql -h 127.0.0.1 -P 13306 -u mysql -ppassword mysql

NG:
export MYSQL_USER=mysql
export MYSQL_PASSWORD=mysql
mysql -h localhost -P 13306

NG:
export MYSQL_USER=mysql
export MYSQL_PASSWORD=mysql
mysql -h 127.0.0.1 -P 13306

show databases;
use test_db;

mysql> select * from foo;
+----+-----------+-------+
| id | name      | price |
+----+-----------+-------+
|  1 | リンゴ    |   100 |
|  2 | バナナ    |   150 |
|  3 | ナシ      |   250 |
+----+-----------+-------+
3 rows in set (0.01 sec)

mysql> select * from bar;
+----+---------------+-------+
| id | name          | price |
+----+---------------+-------+
|  1 | リンゴ_new    |   110 |
|  2 | バナナ_new    |   160 |
|  3 | ナシ_new      |   260 |
|  4 | イチゴ        |   200 |
+----+---------------+-------+
4 rows in set (0.01 sec)
