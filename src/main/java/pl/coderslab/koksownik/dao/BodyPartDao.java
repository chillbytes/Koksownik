package pl.coderslab.koksownik.dao;


import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.BodyPart;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class BodyPartDao {
    @PersistenceContext
    EntityManager entityManager;

    public void save(BodyPart bodyPart) {
        entityManager.persist(bodyPart);
    }
    public List<BodyPart> all() {


        return entityManager.createQuery("select b from BodyPart b").getResultList();


    }
}
