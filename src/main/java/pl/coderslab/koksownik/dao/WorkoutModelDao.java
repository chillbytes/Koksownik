package pl.coderslab.koksownik.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.WorkoutModel;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class WorkoutModelDao {
    @PersistenceContext
    EntityManager entityManager;


    public List<WorkoutModel> getWorkoutTemplateById(Long id) {
        Query q2 = entityManager.createNativeQuery("select * from v_workouts where id=?");
        q2.setParameter(1, id);
        List<WorkoutModel> r2 = q2.getResultList();
        return q2.getResultList();

    }



}
