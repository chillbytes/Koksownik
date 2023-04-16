package pl.coderslab.koksownik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
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

//    @ModelAttribute("templateExerciseList")
//    public List<Exercise> getWorkoutTemplatesExercises(Long id) {
//        return exerciseService.findByWorkoutTemplateId(id);
//    }


    @GetMapping("/edit/{id}")
    public String edit (Model model, @PathVariable Long id) {
        model.addAttribute("workoutTemplate", workoutTemplateService.findById(id));

        model.addAttribute("workoutExercises", exerciseService.findByWorkoutTemplateId(id));

        return "/workoutTemplateEdition";
    }




    @PostMapping("/edit/{id}")
    public String editSave (WorkoutTemplate workoutTemplate) {
        workoutTemplateService.save(workoutTemplate);
        return "workoutTemplateList";
    }


    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("workoutTemplate", new WorkoutTemplate());

        System.out.println("\n\n");
        System.out.println("Go to '/addWorkoutTemplate' jsp file! ");
        System.out.println("\n\n");

        return "/addWorkoutTemplate";
    }

    @PostMapping("/add")
    public String addSave(WorkoutTemplate workoutTemplate) {
        workoutTemplateService.save(workoutTemplate);
        return "/workoutTemplateEdition";
    }




}
