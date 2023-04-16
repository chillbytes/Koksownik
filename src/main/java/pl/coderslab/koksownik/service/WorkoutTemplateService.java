package pl.coderslab.koksownik.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.koksownik.dao.WorkoutTemplateDao;
import pl.coderslab.koksownik.model.WorkoutTemplate;
import pl.coderslab.koksownik.repository.WorkoutTemplateRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class WorkoutTemplateService {
    private final WorkoutTemplateDao workoutTemplateDao;
    private final WorkoutTemplateRepository workoutTemplateRepository;

    public void save(WorkoutTemplate workoutTemplate) {
        workoutTemplateDao.save(workoutTemplate);
    }
    public List<WorkoutTemplate> all() {return workoutTemplateDao.all();}

    public WorkoutTemplate findById(Long id ) {
         return workoutTemplateDao.findById(id);
    }
}
