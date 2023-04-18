
CREATE DATABASE koksownik CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use koksownik;

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

select * from workoutpositions

insert into workoutpositions (position_number, repetitions, weight, exercise_id, workout_template_id) values(1, 10, 50, 1, 1);


select
    w2.position_number,
    w.name,
    w.description,
    e.name,
    e.description,
    w2.weight,
    w2.repetitions,
    em.name
from workouts w
left join workoutpositions w2 on w.id = w2.workout_template_id
left join exercises e on w2.exercise_id = e.id
left join exercise_modes em on w2.exercise_mode_id = em.id
where w.id = 1;