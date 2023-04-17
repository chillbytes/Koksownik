use koksownik;






select * from exercises

# delete from exercises where 1 = 1

select * from bodyparts
delete from bodyparts where id > 5

select * from categories order by id

select * from workouts

select * from workouts_excercises



SELECT e.*
FROM workouts w
INNER JOIN workouts_excercises we ON w.id = we.workout_id
INNER JOIN exercises e ON we.excercise_id = e.id
WHERE w.id = 13

#
#
# 13
#
# 2
#
# # insert into  workouts_excercises(workout_id, excercise_id) values( 13, 2)


SELECT e.* FROM workouts w INNER JOIN workouts_excercises we ON w.id = we.workout_id INNER JOIN exercises e ON we.excercise_id = e.id WHERE w.id =2



select * from bodyparts b order by id



select * from exercise_modes;

select * from exercises


insert into  exercise_modes (description, name) VALUES ('warm-up', 'Warming up!');

insert into  exercise_modes (description, name) VALUES ('working set', 'Working set');

insert into  exercise_modes (description, name) VALUES ('drop set', 'Drop set');

insert into  exercise_modes (description, name) VALUES ('Failure', 'Working to failure');




select distinct e.id, e.name, b.name, c.name from exercises e inner join bodyparts b on e.body_part_id = b.id inner join categories c on e.category_id = c.id where  1 = 1 order by e.id
