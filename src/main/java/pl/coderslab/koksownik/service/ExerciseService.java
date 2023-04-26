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
    public List<Exercise> all() {

        return exerciseDao.all();

    }


    public List<Exercise> findByWorkoutTemplateId(Long id) {

        return exerciseRepository.findExcercisesOfWorkoutTemplate(id);

    }

    public List<Exercise> getAllExercises () {

        return exerciseDao.all();

    }

    public Exercise getExerciseById(Long id){

        //return exerciseRepository.getExerciseById(id);
        return exerciseDao.getExerciseById(id);

    }

    public Exercise findById(Long id){
        return exerciseRepository.getExerciseById(id);
    }

    public String getNameById(Long id) {

        //return exerciseRepository.getExerciseNameById(id);
        return exerciseRepository.findNameById(id);

    }

    public String getDescriptionById(Long id) {
        return exerciseRepository.getExerciseDescriptionById(id);
    }



    public String getCategoryNameByExerciseId(Long id) {
        return exerciseRepository.getCategoryNameByExerciseId(id);
    }
}
