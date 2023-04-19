package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.coderslab.koksownik.model.WorkoutTemplate;

import java.util.List;

public interface WorkoutTemplateRepository extends JpaRepository<WorkoutTemplate, Long>  {


    @Query(nativeQuery = true, value = "select w2.position_number, w.name,  w.description, e.name, e.description, w2.weight, w2.repetitions, em.name from workouts w left join workoutpositions w2 on w.id = w2.workout_template_id left join exercises e on w2.exercise_id = e.id left join exercise_modes em on w2.exercise_mode_id = em.id where w.id = :workoutTemplateId order by w2.position_number")
    List<WorkoutTemplate> getWorkoutTemplateById(@Param("workoutTemplateId") Long id);

    List<WorkoutTemplate> readWorkoutTemplateByName(String name);



}
