package pl.coderslab.koksownik.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.koksownik.dao.WorkoutTemplateDao;
import pl.coderslab.koksownik.model.WorkoutModel;
import pl.coderslab.koksownik.model.WorkoutTemplate;
import pl.coderslab.koksownik.repository.WorkoutTemplateRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class WorkoutTemplateService {
    private final WorkoutTemplateDao workoutTemplateDao;
    private final WorkoutTemplateRepository workoutTemplateRepository;

    public Long save(WorkoutTemplate workoutTemplate) {

        return workoutTemplateDao.save(workoutTemplate);

    }
    public List<WorkoutTemplate> all() {

        return workoutTemplateDao.all();

    }

    public WorkoutTemplate findById(Long id ) {


        return workoutTemplateDao.findById(id);

    }

    public List<WorkoutTemplate> getWorkoutTemplateById(Long id) {

        return workoutTemplateDao.getWorkoutTemplateById(id);

    }

    public List<WorkoutModel> getWorkoutTemplateById3(Long id) {
        return workoutTemplateDao.getWorkoutTemplateById2(id);
    }


    public List<WorkoutTemplate> getWorkoutTemplateById2(Long id) {

        return workoutTemplateRepository.getWorkoutTemplateById(id);

    }

}