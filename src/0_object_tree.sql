create table users(id int primary key, json text);
insert into users values(1, '{"status": {"id": 1, "name": "yamada", "class": "A"}}');
insert into users values(2, '{"status": {"id": 2, "name": "suzuki", "class": "B"}}');
insert into users values(3, '{}');
.headers on
.mode column
select * from users, json_tree(json_extract(users.json, '$.status'));

