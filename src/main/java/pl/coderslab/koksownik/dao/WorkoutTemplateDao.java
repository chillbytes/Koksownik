package pl.coderslab.koksownik.dao;


import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.WorkoutTemplate;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class WorkoutTemplateDao {
    @PersistenceContext
    EntityManager entityManager;
    public Long save(WorkoutTemplate workoutTemplate) {

        entityManager.persist(workoutTemplate);
        return workoutTemplate.getId();
    }
    public List<WorkoutTemplate> all() {
        return entityManager.createQuery("select w from WorkoutTemplate w order by w.name").getResultList();
    }

    public WorkoutTemplate findById(Long id) {
        return entityManager.find(WorkoutTemplate.class, id);
    }



    public List<WorkoutTemplate> getWorkoutTemplateById(Long id) {
        Query query = entityManager.createQuery("SELECT DISTINCT wt FROM WorkoutTemplate wt   JOIN FETCH wt.workoutPositions wp   JOIN FETCH wp.exercise e   JOIN FETCH wp.exerciseMode em WHERE wt.id=:id");
        query.setParameter("id", id);

        return query.getResultList();
    }



}
