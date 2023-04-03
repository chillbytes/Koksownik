package pl.coderslab.koksownik.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.koksownik.dao.ExerciseDao;
import pl.coderslab.koksownik.model.Exercise;
import pl.coderslab.koksownik.repository.ExerciseRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ExerciseService {
    private final ExerciseDao exerciseDao;
    private final ExerciseRepository exerciseRepository;

    public void save(Exercise exercise) {
        exerciseDao.save(exercise);
    }
    public List<Exercise> all() {return exerciseDao.all();}

    public Exercise findById(long id) {
        return exerciseDao.findById(id);
    }
}
