package pl.coderslab.koksownik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.koksownik.model.WorkoutPosition;
import pl.coderslab.koksownik.service.WorkoutPositionService;

@Controller
@RequestMapping("/workoutTemplate")
@RequiredArgsConstructor
public class WorkoutPositionController {
    private final WorkoutPositionService workoutPositionService;

    @GetMapping("/edit3/{id}")
    public String edit (Model model, @PathVariable Long id) {

        model.addAttribute("workoutLines", workoutPositionService.getWorkoutTemplatePositionsByWorkoutTemplateId(id));
        return "/workoutTemplateEdition3";
    }

    @GetMapping("/delete/{workoutTemplateId}/{positionId}")
    public String deletePosition(Model model, @PathVariable Long workoutTemplateId, @PathVariable Long positionId) {
        //workoutPositionService.deleteWorkoutPosition(workoutTemplateId, positionId);


        WorkoutPosition workoutPosition = workoutPositionService.getWorkoutPositionById(positionId);
        workoutPositionService.deleteWorkoutPosition(workoutPosition);

        model.addAttribute("workoutLines", workoutPositionService.getWorkoutTemplatePositionsByWorkoutTemplateId(workoutTemplateId));
        return "/workoutTemplateEdition3";
    }

}
