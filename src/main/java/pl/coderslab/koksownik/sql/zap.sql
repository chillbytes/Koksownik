use koksownik;






select * from exercises

# delete from exercises where 1 = 1

select * from bodyparts
delete from bodyparts where id > 5

select * from categories

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