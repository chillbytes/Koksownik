package pl.coderslab.koksownik.repositiry;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.koksownik.model.Category;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    List<Category> readCategoryByName(String name);
}
