package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.koksownik.model.Category;
import pl.coderslab.koksownik.model.Exercise;

import java.util.List;

public interface ExerciseRepository extends JpaRepository<Category, Long> {

    List<Exercise> readExerciseByName(String name);

}
