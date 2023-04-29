package pl.coderslab.koksownik.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.koksownik.model.WorkoutPosition;
import pl.coderslab.koksownik.model.WorkoutSession;
import pl.coderslab.koksownik.model.WorkoutSessionPosition;
import pl.coderslab.koksownik.model.WorkoutTemplate;
import pl.coderslab.koksownik.service.*;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/workoutSession")
@RequiredArgsConstructor
public class WorkoutSessionController {

    private final WorkoutSessionPositionService workoutSessionPositionService;
    private final WorkoutSessionService workoutSessionService;
    private final WorkoutTemplateService workoutTemplateService;
    private final WorkoutPositionService workoutPositionService;
    private final ExerciseService exerciseService;
    private final ExerciseModeService exerciseModeService;

//    private final List<WorkoutSessionPosition> workoutSessionPositions;

//    public WorkoutSessionController(List<WorkoutSessionPosition> workoutSessionPositions) {
//        this.workoutSessionPositions = workoutSessionPositions;
//    }

//
//    private final WorkoutSessionPositionService workoutSessionPositionService;
//    private final WorkoutSessionService workoutSessionService;
//    private final WorkoutTemplateService workoutTemplateService;
//    private final WorkoutPositionService workoutPositionService;
//    private final ExerciseService exerciseService;
//    private final ExerciseModeService exerciseModeService;
//    private final List<WorkoutSessionPosition> workoutSessionPositions;
//
//    @Autowired
//    public WorkoutSessionController(
//            WorkoutSessionPositionService workoutSessionPositionService,
//            WorkoutSessionService workoutSessionService,
//            WorkoutTemplateService workoutTemplateService,
//            WorkoutPositionService workoutPositionService,
//            ExerciseService exerciseService,
//            ExerciseModeService exerciseModeService,
//            List<WorkoutSessionPosition> workoutSessionPositions) {
//
//        this.workoutSessionPositionService = workoutSessionPositionService;
//        this.workoutSessionService = workoutSessionService;
//        this.workoutTemplateService = workoutTemplateService;
//        this.workoutPositionService = workoutPositionService;
//        this.exerciseService = exerciseService;
//        this.exerciseModeService = exerciseModeService;
//        this.workoutSessionPositions = workoutSessionPositions;
//    }


    @GetMapping("/add/{workoutTemplateId}")
    public String edit (Model model, @PathVariable Long workoutTemplateId) {

        System.out.println("workoutTemplateId: " + workoutTemplateId);


        WorkoutTemplate workoutTemplate = workoutTemplateService.findById(workoutTemplateId);
        List<WorkoutPosition> workoutPositions = workoutPositionService.getWorkoutTemplatePositionsByWorkoutTemplateId(workoutTemplateId);


        //System.out.println("workoutTemplate: " + workoutTemplate.getName());


        WorkoutSession workoutSession = new WorkoutSession(workoutTemplate.getName(), LocalDateTime.now());
        workoutSessionService.save(workoutSession);

        model.addAttribute("workoutSession", workoutSession);

        List<WorkoutSessionPosition> workoutSessionPositions = new ArrayList<>();

        for (WorkoutPosition wp : workoutPositions) {
            WorkoutSessionPosition workoutSessionPosition = new WorkoutSessionPosition(workoutSession);
            workoutSessionPosition.setExerciseName(exerciseService.getNameById(wp.getExerciseId()));                    //pobierz nazwę ćwiczenia wg id ćwiczenia//
            workoutSessionPosition.setExerciseDescription(exerciseService.getDescriptionById(wp.getExerciseId()));      //pobierz opis ćwiczenia wg id ćwiczenia//
            workoutSessionPosition.setCategory(exerciseService.getCategoryNameByExerciseId(wp.getExerciseId()));        //pobierz nazwę kategorii ćwiczenia wg id kategorii//
            workoutSessionPosition.setRepetitions(wp.getRepetitions());
            workoutSessionPosition.setWeight(wp.getWeight());
            workoutSessionPosition.setExerciseMode( exerciseModeService.getExerciseModeName(wp.getExerciseMode()) );     //pobierz tryb ćwiczenia wg id tryb//

            workoutSessionPositions.add(workoutSessionPosition);
        }

        for (WorkoutSessionPosition wsp : workoutSessionPositions) {
            workoutSessionPositionService.insert(wsp);
        }

        model.addAttribute("workoutSessionPositions", workoutSessionPositions);




        return "/workoutSessionEdition";
    }


    @PostMapping("/edit/{id}")
    //public String editAndSave(@RequestParam Long workoutSessionId, @RequestParam Integer repetitions, @RequestParam Integer weight, @RequestParam Boolean completed, @PathVariable Long id) {
    public String editAndSave(@RequestParam Long workoutSessionId, @PathVariable Long id , Model model) {

        //List<WorkoutSessionPosition> workoutSessionPositions = workoutSessionPositionService.findByWorkoutSessionId(workoutSessionId);
//        List<WorkoutSessionPosition> workoutSessionPositions = workoutSessionPositionService.findByWorkoutSessionId(id);
//
//        for (WorkoutSessionPosition wsp : workoutSessionPositions) {
//
//            //wsp.setRepetitions(repetitions);
//            //wsp.setWeight(Float.valueOf(weight));
//            //wsp.setCompleted(completed);
//            workoutSessionPositionService.save(wsp);
//        }

        //return "redirect:/workoutSession/add/" + workoutSessionId;

        List<WorkoutSession> workoutSessions = workoutSessionService.getAllSessions();
        model.addAttribute("workoutSessions", workoutSessions);

        return "allWorkoutSessionList";

    }


    @GetMapping("all")
    public String showAllSessions(Model model) {
        List<WorkoutSession> workoutSessions = workoutSessionService.getAllSessions();

        model.addAttribute("workoutSessions", workoutSessions);

        return "allWorkoutSessionList";
    }


    @GetMapping("position/{workoutSessionId}")
    public String showWorkoutSessionById(Model model, @PathVariable Long workoutSessionId) {

        WorkoutSession workoutSession = workoutSessionService.getWorkoutSession(workoutSessionId);
        List<WorkoutSessionPosition> workoutSessionPositions = workoutSessionPositionService.findByWorkoutSessionId(workoutSessionId);

        System.out.println("workoutSessionPositions (size): " + workoutSessionPositions.size());

        model.addAttribute("workoutSession", workoutSession) ;
        model.addAttribute("workoutSessionPositions", workoutSessionPositions );

        return "workoutSessionPositionsList";
    }

}
