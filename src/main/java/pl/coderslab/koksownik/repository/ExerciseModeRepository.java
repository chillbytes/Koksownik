package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.coderslab.koksownik.model.ExerciseMode;

public interface ExerciseModeRepository extends JpaRepository<ExerciseMode, Long>{

    //
    //String getExerciseModeNameByExerciseMode(ExerciseMode exerciseMode);

    @Query("SELECT e.name FROM ExerciseMode e WHERE e.id = :exerciseModeId")
    String getExerciseModeNameById(@Param("exerciseModeId") Long exerciseModeId);


}


