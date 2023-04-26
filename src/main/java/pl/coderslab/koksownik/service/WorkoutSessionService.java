package pl.coderslab.koksownik.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.koksownik.dao.WorkoutSessionDao;
import pl.coderslab.koksownik.model.WorkoutSession;
import pl.coderslab.koksownik.repository.WorkoutSessionPositionRepository;
import pl.coderslab.koksownik.repository.WorkoutSessionRepository;

@Service
@RequiredArgsConstructor
public class WorkoutSessionService {
    private final WorkoutSessionRepository workoutSessionRepository;
    private final WorkoutSessionDao workoutSessionDao;
    private final WorkoutSessionPositionRepository workoutSessionPositionRepository;

    public void save(WorkoutSession workoutSession) {
        workoutSessionDao.save(workoutSession);
    }

}
