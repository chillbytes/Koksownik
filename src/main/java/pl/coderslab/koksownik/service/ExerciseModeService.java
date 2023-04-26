package pl.coderslab.koksownik.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.koksownik.dao.ExerciseModeDao;
import pl.coderslab.koksownik.model.ExerciseMode;
import pl.coderslab.koksownik.repository.ExerciseModeRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ExerciseModeService {

    private final ExerciseModeRepository exerciseModeRepository;
    private final ExerciseModeDao exerciseModeDao;

    public List<ExerciseMode> getExerciseModesList() {
        //return exerciseModeRepository.a();
        return exerciseModeDao.all();
    }



    public void save(ExerciseMode exerciseMode) {
        exerciseModeDao.saveMode(exerciseMode);

    }

    public List<ExerciseMode> getAllExerciseModes() {
        return exerciseModeDao.all();
    }


}
