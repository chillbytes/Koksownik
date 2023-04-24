package pl.coderslab.koksownik.dao;


import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.Exercise;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
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

    public Exercise getExerciseById(Long id) {
        return entityManager.find(Exercise.class, id);
    }

}
