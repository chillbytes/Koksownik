package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.koksownik.model.WorkoutSession;

public interface WorkoutSessionRepository extends JpaRepository<WorkoutSession, Long> {

}
