package pl.coderslab.koksownik.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.WorkoutSessionPosition;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;


@Repository
@Transactional
public class WorkoutSessionPositionDao {
    @PersistenceContext
    EntityManager entityManager;

    public void save(WorkoutSessionPosition workoutSessionPosition) {
        entityManager.persist(workoutSessionPosition);
    }
}
