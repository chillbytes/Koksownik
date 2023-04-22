package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.koksownik.model.WorkoutPosition;

import java.util.List;

public interface WorkoutPositionRepository extends JpaRepository<WorkoutPosition, Long> {

    List<WorkoutPosition> readWorkoutPositionsByWorkoutTemplateId(Long id);

    WorkoutPosition deleteWorkoutPositionByWorkoutTemplateIdAndId(Long workoutTemplateId, Long workoutPositionId);

    WorkoutPosition getWorkoutPositionById(Long id);

}
