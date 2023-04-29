package pl.coderslab.koksownik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.koksownik.model.Exercise;
import pl.coderslab.koksownik.model.ExerciseMode;
import pl.coderslab.koksownik.model.WorkoutPosition;
import pl.coderslab.koksownik.model.WorkoutTemplate;
import pl.coderslab.koksownik.repository.ExerciseRepository;
import pl.coderslab.koksownik.service.ExerciseModeService;
import pl.coderslab.koksownik.service.ExerciseService;
import pl.coderslab.koksownik.service.WorkoutPositionService;
import pl.coderslab.koksownik.service.WorkoutTemplateService;

import java.util.List;

@Controller
@RequestMapping("/workoutTemplate")
@RequiredArgsConstructor
public class WorkoutPositionController {
    private final WorkoutTemplateService workoutTemplateService;
    private final WorkoutPositionService workoutPositionService;
    private final ExerciseService exerciseService;
    private final ExerciseRepository exerciseRepository;
    private final ExerciseModeService exerciseModeService;

    @ModelAttribute("exerciseList")
    public List<Exercise> getExerciseList(){
        return exerciseService.all();
    }
    @ModelAttribute("exerciseModesList")
    public List<ExerciseMode> getExerciseModesList(){
        return exerciseModeService.getExerciseModesList();
    }


    @GetMapping("/edit/{id}")
    public String edit (Model model, @PathVariable Long id) {
        model.addAttribute("workoutTemplate", workoutTemplateService.findById(id));

        WorkoutTemplate workoutTemplate = workoutTemplateService.findById(id);

        model.addAttribute("workoutLines", workoutPositionService.getWorkoutTemplatePositionsByWorkoutTemplateId(id));
        return "/workoutTemplateEdition";
    }

    @GetMapping("/delete/{workoutTemplateId}/{positionId}")
    public String deletePosition(Model model, @PathVariable Long workoutTemplateId, @PathVariable Long positionId) {
        WorkoutPosition workoutPosition = workoutPositionService.getWorkoutPositionById(positionId);
        workoutPositionService.deleteWorkoutPosition(workoutPosition);

        model.addAttribute("workoutTemplate", workoutTemplateService.findById(workoutTemplateId));

        model.addAttribute("workoutLines", workoutPositionService.getWorkoutTemplatePositionsByWorkoutTemplateId(workoutTemplateId));

        return "/workoutTemplateEdition";
    }

    //add exercise(workout position)
    @GetMapping("/addPosition/{workoutTemplateId}")
    public String addWorkoutTemplatePosition(Model model, @PathVariable Long workoutTemplateId) {

        WorkoutTemplate workoutTemplate = workoutTemplateService.findById(workoutTemplateId);
        model.addAttribute("workoutPosition", new WorkoutPosition(workoutTemplate));

        return "/addWorkoutTemplatePosition";
    }

    @PostMapping("/addPosition/{workoutTemplateId}")

    //public String addAndSaveWorkoutTemplatePosition(WorkoutPosition workoutPosition, Model model, @PathVariable Long workoutTemplateId){
    public String addAndSaveWorkoutTemplatePosition(@RequestParam Long exerciseId, WorkoutPosition workoutPosition, Model model, @PathVariable Long workoutTemplateId){

        Exercise exercise = exerciseService.getExerciseById(exerciseId);
        workoutPosition.setExercise(exercise);

        WorkoutTemplate workoutTemplate = workoutTemplateService.findById(workoutTemplateId);
        workoutPosition.setWorkoutTemplate(workoutTemplate);

        workoutPositionService.save(workoutPosition);

        model.addAttribute("workoutLines", workoutPositionService.getWorkoutTemplatePositionsByWorkoutTemplateId(workoutTemplateId));
        return "/workoutTemplateEdition";
    }



}
