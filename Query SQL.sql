# created by Juan and Andy

#select count(*) type from type_game where type ='sport'

#select * from person_game order by person, type_game_id desc

#select person_game_id, sum(time) from game_time group by game_time.person_game_id

#select * from game_time
#join person_game on game_time.person_game_id= person_game.id where person = 'Dominik'