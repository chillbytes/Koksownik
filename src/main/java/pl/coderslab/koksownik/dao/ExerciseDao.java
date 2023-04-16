package pl.coderslab.koksownik.dao;


import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.Exercise;

import java.util.List;

@Repository
@Transactional
public class ExerciseDao {
    @PersistenceContext
    EntityManager entityManager;
    public void save(Exercise exercise) {entityManager.persist(exercise);}
    public List<Exercise> all() {
        return entityManager.createQuery("select e from Exercise e order by e.name").getResultList();
    }

    public Exercise findById(long id) {
        return entityManager.find(Exercise.class, id);
    }




}
