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
        System.out.println("before DB query, id" + id);

        Query query = entityManager.createQuery("SELECT wt.id, wt.name, wt.description, wp.id, wp.positionNumber, wp.repetitions, wp.weight, e.id, e.name, e.description, wt FROM WorkoutTemplate wt JOIN FETCH wt.workoutPositions wp JOIN FETCH wp.exercise e WHERE wt.id=:id");
        //Query query = entityManager.createQuery("SELECT wt FROM WorkoutTemplate wt JOIN wt.workoutPositions WHERE wt.id=:id");
        query.setParameter("id", id);


        List<WorkoutTemplate> resultList = query.getResultList();
        System.out.println("resultListSize: " + resultList.size());


        return query.getResultList();
    }

}
