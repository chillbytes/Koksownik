package pl.coderslab.koksownik.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.koksownik.service.WorkoutSessionPositionService;
import pl.coderslab.koksownik.service.WorkoutSessionService;

@Controller
@RequestMapping("/workoutSession")
@RequiredArgsConstructor
public class WorkoutSessionPositionController {

    private final WorkoutSessionPositionService workoutSessionPositionService;
    private final WorkoutSessionService workoutSessionService;



}
