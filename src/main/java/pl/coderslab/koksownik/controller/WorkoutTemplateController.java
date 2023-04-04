package pl.coderslab.koksownik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.koksownik.model.Exercise;
import pl.coderslab.koksownik.model.WorkoutTemplate;
import pl.coderslab.koksownik.service.ExerciseService;
import pl.coderslab.koksownik.service.WorkoutTemplateService;

import java.util.List;

@Controller
@RequestMapping("/workoutTemplate")
@RequiredArgsConstructor
public class WorkoutTemplateController {
    private final WorkoutTemplateService workoutTemplateService;
    private final ExerciseService exerciseService;

    @ModelAttribute("exerciseList")
    public List<Exercise> getExercises() {
        return exerciseService.all();
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("workoutTemplate", new WorkoutTemplate());
        return "/addWorkoutTemplate";
    }

    @PostMapping("/add")
    public String addSave(WorkoutTemplate workoutTemplate) {
        workoutTemplateService.save(workoutTemplate);
        return "WorkoutTemplateEdition";
    }




}
