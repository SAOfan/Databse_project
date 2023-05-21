#created by Juan and Andy

create table type_game (
id serial, 
type varchar,
game varchar,
primary key(id)
);

insert into type_game (game,type) values
('Rocket League','sport'),('Deep Rock Galactic ','First-person shooter'),('BeamNG Drive','vehicle simulator'),
('Minecraft','sandbox'),('Fifa ','sport'),('Rust','multiplater survival'),('Fortnite','survival'),('roblox','3D online'),
('portal 2','first-person'),('dragonball fighterz','fighting'),('Apex Legends','first-person shooter'),
('Dragon Ball Xenoverse 2','fighting'),('Far Cry 5','First-person shoote'),('portal','first-person'),('Idol showdown','fighting'),
('God of War ','action-aventure');

create table person_game(
person varchar,
type_game_id integer,
id serial, 
  primary key(id),
constraint fk_game_id foreign key(type_game_id) references type_game(id)
);
 
insert into person_game (person, type_game_id) values
('Joseph', 1),('Joseph', 8),('Joseph', 12),
('Dominik', 2),('Dominik', 4),('Dominik', 13),
('Aydan', 3),('Aydan', 9),('Aydan', 14),
('Andy', 4),('Andy', 10),('Andy', 15),
('Santiago', 5),('Santiago', 7),('Santiago', 16),
('marco', 6),('marco', 11),('marco', 1),
('juan', 7),('juan',5),('juan', 1);


create table game_time(
id serial,
time integer,
person_game_id integer,
constraint fk_game_id foreign key(person_game_id) references person_game(id)
);

insert into game_time (time, person_game_id) values
(782, 1),(92, 2),(89, 3),(300, 4),(1000, 5),(750, 6),(300, 7),(100, 8),(50, 8),(1000, 9),(65, 10),
(1, 11),(10, 12),(8, 13),(100, 14),(100, 15),(140, 16),(100, 17),(120, 18),(90, 19),(50, 20);

create table device_game (
person_game_id integer,
device varchar,
constraint fk_game_id foreign key(person_game_id) references person_game(id)
);


insert into device_game (person_game_id,device) values
(1, 'PS4'),(2, 'PS4'),(3, 'PS4'),(4, 'PC'),(5,'PC' ),(6, 'PC'),(7, 'PC'),(8, 'PC'),(9, 'PC'),
(10, 'PC'),(11, 'switch'),(12, 'PC'),(13, 'PS4'),(14, 'PS4'),(15, 'PS4'),(16, 'PC'),(17, 'PC'),
(18, 'PC'),(19, 'PS5'),(20, 'PS5'),(21, 'PS5');

create table person_when(
person_game_id integer,
when_play varchar,
constraint fk_game_id foreign key(person_game_id) references person_game(id)
);

insert into person_when(person_game_id, when_play) values
(1, 'weekend'),(2, 'weekend'),(3, 'weekend'),(4, 'weekend'),(5, 'weekend'),(6, 'weekend'),
(7, 'weekend'),(8,'‘weekend'),(9, 'weekend'),(10, 'weekend'),(11, 'weekend'),(12, 'weekend'),
(13, 'weekend'),(14, 'weekend'),(15, 'weekend'),(16, 'weekend'),(17, 'weekend'),(18, 'weekend'),
(19, 'weekend'),(20, 'weekend'),(21, 'weekend');
