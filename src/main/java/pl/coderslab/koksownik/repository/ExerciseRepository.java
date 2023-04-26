package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.coderslab.koksownik.model.Category;
import pl.coderslab.koksownik.model.Exercise;

import java.util.List;

public interface ExerciseRepository extends JpaRepository<Category, Long> {

    List<Exercise> readExerciseByName(String name);

    Exercise getExerciseById(Long id);

    @Query (nativeQuery = true, value = "SELECT e.* FROM workouts w INNER JOIN workouts_excercises we ON w.id = we.workout_id INNER JOIN exercises e ON we.excercise_id = e.id WHERE w.id =:workoutId")
    List<Exercise> findExcercisesOfWorkoutTemplate(@Param("workoutId") Long id);





    @Query(nativeQuery = true, value = "SELECT   * FROM exercises ORDER BY id")
    //@Query(nativeQuery = true, value = "select distinct e.id, e.name as ename, b.name as bname, c.name as cname from exercises e inner join bodyparts b on e.body_part_id = b.id inner join categories c on e.category_id = c.id where  1 = 1 order by e.id")
    List<Exercise> findAllExercises();

    @Query(nativeQuery = true, value = "SELECT   * FROM exercises ORDER BY id")
        //@Query(nativeQuery = true, value = "select distinct e.id, e.name as ename, b.name as bname, c.name as cname from exercises e inner join bodyparts b on e.body_part_id = b.id inner join categories c on e.category_id = c.id where  1 = 1 order by e.id")
    List<Exercise> getAllExercises();


    String getExerciseNameById(Long id);
    String getExerciseDescriptionById(Long id);

//    String getCategoryNameByExerciseId(Long id);

}
