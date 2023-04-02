package pl.coderslab.koksownik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.koksownik.model.BodyPart;

import java.util.List;

public interface BodyPartRepository extends JpaRepository<BodyPart, Long> {
    List<BodyPart> readBodyPartByName(String name);

}
