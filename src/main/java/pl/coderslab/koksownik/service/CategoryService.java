package pl.coderslab.koksownik.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.koksownik.dao.CategoryDao;
import pl.coderslab.koksownik.model.Category;
import pl.coderslab.koksownik.repository.CategoryRepository;

@Service
@RequiredArgsConstructor
public class CategoryService {
    private final CategoryDao categoryDao;
    private final CategoryRepository categoryRepository;

    public void save(Category category) {
        categoryDao.save(category);
    }
}
