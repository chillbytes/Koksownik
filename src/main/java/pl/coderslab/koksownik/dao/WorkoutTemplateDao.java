package pl.coderslab.koksownik.dao;


import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.WorkoutModel;
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

        System.out.println("++++++++++++++++++++++++++++++++++++\n\n");
        List<WorkoutTemplate> resultList = query.getResultList();
        System.out.println("resultListSize: " + resultList.size());
        System.out.println("\n\n++++++++++++++++++++++++++++++++++++");


        System.out.println("\n\n++++++++++++++++++++++++++++++++++++");
        return query.getResultList();
    }

    //    zapytanie z joinaami zamieniłem na widok w bazie i z java odpytuję widok
    //    Query q2 = entityManager.createNativeQuery("select * from workouts_vw where id=?");
    //    q2.setParameter(1,id);
    //    List<WorkoutModel> r2 = q2.getResultList();
    //System.out.println("******BR****** dao result q2r2 "+r2.size());

    public List<WorkoutModel> getWorkoutTemplateById2(Long id) {
        Query q2 = entityManager.createNativeQuery("select * from v_workouts where wid=?");
        q2.setParameter(1,id);
        List<WorkoutModel> r2 = q2.getResultList();
        return q2.getResultList();

    }

//    public List<WorkoutTemplate> getWorkoutTemplateById(Long id) {
//        Query query = entityManager.createQuery("SELECT wt.id, wt.name, wt.description, " +
//                "wp.id, wp.positionNumber, wp.repetitions, wp.weight, em.id, em.name, em.description, " +
//                "ex.id, ex.name, ex.description, bp.id, bp.name, " +
//                "cat.id, cat.name, cat.multiplier " +
//                "FROM WorkoutTemplate wt " +
//                "JOIN wt.workoutPositions wp " +
//                "JOIN wp.exercise ex " +
//                "JOIN ex.bodyPart bp " +
//                "JOIN ex.category cat " +
//                "LEFT JOIN wp.exerciseMode em " +
//                "WHERE wt.id=:id");
//        query.setParameter("id", id);
//        //query.unwrap(org.hibernate.query.Query.class).setResultTransformer(new WorkoutTemplateResultTransformer());
//        return query.getResultList();
//    }




}
