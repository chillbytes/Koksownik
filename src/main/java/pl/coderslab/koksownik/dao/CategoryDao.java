package pl.coderslab.koksownik.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.Category;


@Repository
@Transactional
public class CategoryDao {
    @PersistenceContext
    EntityManager entityManager;
    public void save(Category category) {entityManager.persist(category);}
}
