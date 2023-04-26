package pl.coderslab.koksownik.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.WorkoutSession;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class WorkoutSessionDao {

    @PersistenceContext
    EntityManager entityManager;


    public void save(WorkoutSession workoutSession) {entityManager.persist(workoutSession);}



}
