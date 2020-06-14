--ANIMALテーブル
INSERT INTO animal."ANIMAL"(id,name,gender_type,birthday,favorite,delete) VALUES (1,'マーサ',2,'2020-03-14',TRUE,FALSE);
INSERT INTO animal."ANIMAL"(id,name,gender_type,birthday,favorite,delete) VALUES (2,'メリヤス',2,'2020-04-16',TRUE,FALSE);


--好きな服テーブル
INSERT INTO animal."FAVORITE_CLOTHES"(id,animal_id,favorite_clothes) VALUES (1,1,'シンプル');
INSERT INTO animal."FAVORITE_CLOTHES"(id,animal_id,favorite_clothes) VALUES (2,1,'キュート');
INSERT INTO animal."FAVORITE_CLOTHES"(id,animal_id,favorite_clothes) VALUES (3,2,'シンプル');
INSERT INTO animal."FAVORITE_CLOTHES"(id,animal_id,favorite_clothes) VALUES (4,2,'キュート');