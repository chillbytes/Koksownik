package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.coderslab.koksownik.model.Category;
import pl.coderslab.koksownik.model.Exercise;

import java.util.List;

public interface ExerciseRepository extends JpaRepository<Category, Long> {

    List<Exercise> readExerciseByName(String name);

    @Query (nativeQuery = true, value = "SELECT e.* FROM workouts w INNER JOIN workouts_excercises we ON w.id = we.workout_id INNER JOIN exercises e ON we.excercise_id = e.id WHERE w.id =:workoutId")
    List<Exercise> findExcercisesOfWorkoutTemplate(@Param("workoutId") Long id);
}
