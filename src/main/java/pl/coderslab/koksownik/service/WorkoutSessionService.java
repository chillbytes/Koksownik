package pl.coderslab.koksownik.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.koksownik.dao.WorkoutSessionDao;
import pl.coderslab.koksownik.model.WorkoutSession;
import pl.coderslab.koksownik.repository.WorkoutSessionPositionRepository;
import pl.coderslab.koksownik.repository.WorkoutSessionRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class WorkoutSessionService {
    private final WorkoutSessionRepository workoutSessionRepository;
    private final WorkoutSessionDao workoutSessionDao;
    private final WorkoutSessionPositionRepository workoutSessionPositionRepository;

    public void save(WorkoutSession workoutSession) {
        workoutSessionDao.save(workoutSession);
    }

    public List<WorkoutSession> getAllSessions() {
        return workoutSessionRepository.getWorkoutSessionsBy();
    }

    public WorkoutSession getWorkoutSession(Long id ) {

        return workoutSessionDao.findById(id);

    }

}
