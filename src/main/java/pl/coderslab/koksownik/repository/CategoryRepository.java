package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.koksownik.model.Category;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    List<Category> readCategoryByName(String name);

    @Query(nativeQuery = true, value = "select * from categories order by id")
    List<Category> findAllCategories();
}
