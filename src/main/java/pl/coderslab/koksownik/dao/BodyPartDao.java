package pl.coderslab.koksownik.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.BodyPart;

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
