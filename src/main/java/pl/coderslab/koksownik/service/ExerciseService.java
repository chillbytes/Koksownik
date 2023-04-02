package pl.coderslab.koksownik.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.koksownik.dao.ExerciseDao;
import pl.coderslab.koksownik.model.Exercise;
import pl.coderslab.koksownik.repository.ExerciseRepository;

@Service
@RequiredArgsConstructor
public class ExerciseService {
    private final ExerciseDao exerciseDao;
    private final ExerciseRepository exerciseRepository;

    public void save(Exercise exercise) {
        exerciseDao.save(exercise);
    }
}
