package pl.coderslab.koksownik.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.Exercise;
import pl.coderslab.koksownik.model.ExerciseMode;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class ExerciseModeDao {
    @PersistenceContext
    EntityManager entityManager;
    public void save(Exercise exercise) {entityManager.persist(exercise);}
    public List<ExerciseMode> all() {
        return entityManager.createQuery("select e from ExerciseMode e order by e.name").getResultList();
    }
}
