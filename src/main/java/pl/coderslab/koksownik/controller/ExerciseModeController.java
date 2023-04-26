package pl.coderslab.koksownik.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.koksownik.model.ExerciseMode;
import pl.coderslab.koksownik.service.ExerciseModeService;

@Controller
@RequestMapping("/exerciseMode")
@RequiredArgsConstructor
public class ExerciseModeController {
    private final ExerciseModeService exerciseModeService;


    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("exerciseModes", new ExerciseMode());
        return "/addExerciseMode";
    }

    @PostMapping("/add")
    public String addSave(ExerciseMode exerciseMode, Model model) {
        exerciseModeService.save(exerciseMode);

        model.addAttribute("exerciseModes", exerciseModeService.getAllExerciseModes());

        return "exerciseModesList";
    }

    @GetMapping("/list")
    public String getExerciseList(Model model) {

        model.addAttribute("exerciseModes", exerciseModeService.getAllExerciseModes());

        return "/exerciseModesList";
    }
}
