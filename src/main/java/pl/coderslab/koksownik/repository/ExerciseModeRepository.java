package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.koksownik.model.ExerciseMode;

public interface ExerciseModeRepository extends JpaRepository<ExerciseMode, Long>{

    //
    //String getExerciseModeNameByExerciseMode(ExerciseMode exerciseMode);
}


