package pl.coderslab.koksownik.dao;


import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.Exercise;

@Repository
@Transactional
public class ExerciseDao {
    @PersistenceContext
    EntityManager entityManager;
    public void save(Exercise exercise) {entityManager.persist(exercise);}
}
