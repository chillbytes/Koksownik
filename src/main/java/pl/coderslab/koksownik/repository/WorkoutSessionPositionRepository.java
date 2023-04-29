package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.koksownik.model.WorkoutSessionPosition;

import java.util.List;

public interface WorkoutSessionPositionRepository  extends JpaRepository<WorkoutSessionPosition, Long>  {

    //void insert(WorkoutSessionPosition workoutSessionPosition);

//    public List<WorkoutSessionPosition> findByWorkoutSessionId(Long id){
//
//        return entityManager.find(WorkoutSessionPosition.class, id);
//    }

//    List<WorkoutPosition> readWorkoutPositionsByWorkoutTemplateId(Long id);


    List<WorkoutSessionPosition> readWorkoutSessionPositionByWorkoutSessionId(Long id);

}
