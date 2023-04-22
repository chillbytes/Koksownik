package pl.coderslab.koksownik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.koksownik.service.WorkoutModelService;

@Controller
@RequestMapping("/workoutTemplate")
@RequiredArgsConstructor
public class WorkoutModelController {
    private final WorkoutModelService workoutModelService;


//    @GetMapping("/edit2/{id}")
//    public String edit2(Model model, @PathVariable Long id) {
//        model.addAttribute("workoutLines2", workoutModelService.getWorkoutTemplateById(id));
//        return "/workoutTemplateEdition2";
//    }
}
