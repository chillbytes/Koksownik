package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.koksownik.model.WorkoutSessionPosition;

import java.util.List;

public interface WorkoutSessionPositionRepository  extends JpaRepository<WorkoutSessionPosition, Long>  {

    List<WorkoutSessionPosition> readWorkoutSessionPositionByWorkoutSessionId(Long id);

}
