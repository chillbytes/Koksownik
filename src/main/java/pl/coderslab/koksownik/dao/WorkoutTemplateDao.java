package pl.coderslab.koksownik.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.WorkoutTemplate;

import java.util.List;

@Repository
@Transactional
public class WorkoutTemplateDao {
    @PersistenceContext
    EntityManager entityManager;
    public void save(WorkoutTemplate workoutTemplate) {
        entityManager.persist(workoutTemplate);
    }
    public List<WorkoutTemplate> all() {
        return entityManager.createQuery("select w from WorkoutTemplate w order by w.name").getResultList();
    }

    public WorkoutTemplate findById(Long id) {
        return entityManager.find(WorkoutTemplate.class, id);
    }
}
