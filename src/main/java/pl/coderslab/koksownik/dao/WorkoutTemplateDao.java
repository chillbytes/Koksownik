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

//    public List<WorkoutTemplate> getWorkoutTemplateById(Long id) {
//        System.out.println("before DB query, id" + id);
//
//        Query query = entityManager.createQuery("SELECT wt.id, wt.name, wt.description, wp.id, wp.positionNumber, wp.repetitions, wp.weight, e.id, e.name, e.description, wt FROM WorkoutTemplate wt JOIN FETCH wt.workoutPositions wp JOIN FETCH wp.exercise e WHERE wt.id=:id");
//        query.setParameter("id", id);
//
//
//        List<WorkoutTemplate> resultList = query.getResultList();
//        System.out.println("resultListSize: " + resultList.size());
//
//        return query.getResultList();
//    }

    public List<WorkoutTemplate> getWorkoutTemplateById(Long id) {
        Query query = entityManager.createQuery("SELECT DISTINCT wt FROM WorkoutTemplate wt   JOIN FETCH wt.workoutPositions wp   JOIN FETCH wp.exercise e   JOIN FETCH wp.exerciseMode em WHERE wt.id=:id");
        query.setParameter("id", id);

        System.out.println("++++++++++++++++++++++++++++++++++++\n\n");
        List<WorkoutTemplate> resultList = query.getResultList();
        System.out.println("resultListSize: " + resultList.size());
        System.out.println("\n\n++++++++++++++++++++++++++++++++++++");
//        TypedQuery<WorkoutTemplate> query1 = entityManager.createQuery(
//                "SELECT wt FROM WorkoutTemplate wt " +
//                        "  JOIN wt.workoutPositions wp " +
//                        "  JOIN wp.exercise e " +
//                        "  JOIN wp.exerciseMode em " +
//                        "WHERE wt.id=:id", WorkoutTemplate.class);
//        query.setParameter("id", id);
//
//        List<WorkoutTemplate> resultList1 = query.getResultList();
//
//        for (WorkoutTemplate wt : resultList1) {
//            System.out.println(wt.getName());
//            for (WorkoutPosition wp : wt.getWorkoutPositions()) {
//                //System.out.println(wp.getPosition());
//                System.out.println(wp.getExercise().getName());
//                System.out.println(wp.getExerciseMode().getName());
//            }
//        }

        System.out.println("\n\n++++++++++++++++++++++++++++++++++++");
        return query.getResultList();
    }


}
