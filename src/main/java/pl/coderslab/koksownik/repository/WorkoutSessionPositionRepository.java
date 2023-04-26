package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.koksownik.model.WorkoutSessionPosition;

public interface WorkoutSessionPositionRepository  extends JpaRepository<WorkoutSessionPosition, Long>  {

    //void insert(WorkoutSessionPosition workoutSessionPosition);

}
