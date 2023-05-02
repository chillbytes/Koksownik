package pl.coderslab.koksownik.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.koksownik.dao.WorkoutPositionDao;
import pl.coderslab.koksownik.model.WorkoutPosition;
import pl.coderslab.koksownik.repository.WorkoutPositionRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class WorkoutPositionService {
    private final WorkoutPositionDao workoutPositionDao;
    private final WorkoutPositionRepository workoutPositionRepository;

    public WorkoutPosition findById(Long id) {
        return workoutPositionRepository.getWorkoutPositionById(id);
    }

    public List<WorkoutPosition> getWorkoutTemplatePositionsByWorkoutTemplateId(Long id) {
        return workoutPositionRepository.readWorkoutPositionsByWorkoutTemplateId(id);
    }

    public void deleteWorkoutPosition(Long workoutTemplateId, Long workoutPositionId) {
        workoutPositionRepository.deleteWorkoutPositionByWorkoutTemplateIdAndId(workoutTemplateId, workoutPositionId);
    }

    public void deleteWorkoutPosition(WorkoutPosition workoutPosition) {
        workoutPositionDao.deleteWorkoutPosition(workoutPosition);
    }
    public WorkoutPosition getWorkoutPositionById(Long id) {
        return workoutPositionRepository.getWorkoutPositionById(id);
    }

    public void save(WorkoutPosition workoutPosition) {

        workoutPositionDao.save(workoutPosition);

    }

}

