package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.koksownik.model.WorkoutTemplate;

import java.util.List;

public interface WorkoutTemplateRepository extends JpaRepository<WorkoutTemplate, Long>  {
    List<WorkoutTemplate> readWorkoutTemplateByName(String name);
}
