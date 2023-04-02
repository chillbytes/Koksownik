package pl.coderslab.koksownik.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.BodyPart;

@Repository
@Transactional
public class BodyPartDao {
    @PersistenceContext
    EntityManager entityManager;

    public void save(BodyPart bodyPart) {
        entityManager.persist(bodyPart);
    }
}
