package pl.coderslab.koksownik.dao;


import org.springframework.stereotype.Repository;
import pl.coderslab.koksownik.model.Category;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;


@Repository
@Transactional
public class CategoryDao {
    @PersistenceContext
    EntityManager entityManager;
    public void save(Category category) {
        entityManager.persist(category);
    }
    public List<Category> all() {
        return entityManager.createQuery("select c from Category c order by c.name").getResultList();
    }
}
