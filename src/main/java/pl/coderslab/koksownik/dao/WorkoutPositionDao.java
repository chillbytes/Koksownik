package pl.coderslab.koksownik.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.WorkoutPosition;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class WorkoutPositionDao {
    @PersistenceContext
    EntityManager entityManager;


    @Transactional
    public void deleteWorkoutPosition(WorkoutPosition workoutPosition) {
        entityManager.remove(workoutPosition);
    }



}
