package pl.coderslab.koksownik.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.koksownik.dao.WorkoutSessionPositionDao;
import pl.coderslab.koksownik.model.WorkoutSessionPosition;
import pl.coderslab.koksownik.repository.WorkoutSessionPositionRepository;
import pl.coderslab.koksownik.repository.WorkoutSessionRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class WorkoutSessionPositionService {
    private final WorkoutSessionRepository workoutSessionRepository;
    private final WorkoutSessionPositionRepository workoutSessionPositionRepository;
    private final WorkoutSessionPositionDao workoutSessionPositionDao;

    public void insert(WorkoutSessionPosition workoutSessionPosition) {
        //workoutSessionPositionRepository.insert(workoutSessionPosition);
        workoutSessionPositionDao.save(workoutSessionPosition);

    }

    public WorkoutSessionPosition findById(Long id){
        return workoutSessionPositionDao.findById(id);
    }

    public void save(WorkoutSessionPosition workoutSessionPosition) {
        workoutSessionPositionDao.save(workoutSessionPosition);
    }


    public List<WorkoutSessionPosition> findByWorkoutSessionId(Long id) {

        return workoutSessionPositionRepository.readWorkoutSessionPositionByWorkoutSessionId(id);
    }
}
