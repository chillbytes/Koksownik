package pl.coderslab.koksownik.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.koksownik.model.*;
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


    @GetMapping("/add/{workoutTemplateId}")
    public String edit (Model model, @PathVariable Long workoutTemplateId) {

        WorkoutTemplate workoutTemplate = workoutTemplateService.findById(workoutTemplateId);
        List<WorkoutPosition> workoutPositions = workoutPositionService.getWorkoutTemplatePositionsByWorkoutTemplateId(workoutTemplateId);

        //generuj WorkoutSession
        WorkoutSession workoutSession = new WorkoutSession(workoutTemplate.getName(), LocalDateTime.now());
        workoutSessionService.save(workoutSession);



        System.out.println("Workout session ID:   " + workoutSession.getId());
        System.out.println("Workout session Name: " + workoutSession.getName());
        System.out.println("Workout session dt:   " + workoutSession.getBeginingDateTime());

        //model atribute
        model.addAttribute("workoutSession", workoutSession);

        List<WorkoutSessionPosition> workoutSessionPositions = new ArrayList<>();

        for (WorkoutPosition wp : workoutPositions) {
            WorkoutSessionPosition workoutSessionPosition = new WorkoutSessionPosition(workoutSession);

//            System.out.println("Workout template position id:          " + wp.getId());
//            System.out.println("Workout template position exercise id: " + wp.getExerciseId());
//            System.out.println("Exercise name by id:                   " + exerciseService.getNameById(wp.getExerciseId()));
//            System.out.println("Exercise description by id:            " + exerciseService.getDescriptionById(wp.getExerciseId()));
//            System.out.println("Category name by id:                   " + exerciseService.getCategoryNameByExerciseId(wp.getExerciseId()));
//            System.out.println("Exercise mode by line id:              " + exerciseService.getCategoryNameByExerciseId(wp.getExerciseId()));



            workoutSessionPosition.setExerciseName(exerciseService.getNameById(wp.getExerciseId()));                    //pobierz nazwę ćwiczenia wg id ćwiczenia//

            workoutSessionPosition.setExerciseDescription(exerciseService.getDescriptionById(wp.getExerciseId()));      //pobierz opis ćwiczenia wg id ćwiczenia//

            workoutSessionPosition.setCategory(exerciseService.getCategoryNameByExerciseId(wp.getExerciseId()));        //pobierz nazwę kategorii ćwiczenia wg id kategorii//

            workoutSessionPosition.setRepetitions(wp.getRepetitions());

            workoutSessionPosition.setWeight(wp.getWeight());

            workoutSessionPosition.setExerciseMode( exerciseModeService.getExerciseModeName(wp.getExerciseMode()) );     //pobierz tryb ćwiczenia wg id tryb//


            workoutSessionPositions.add(workoutSessionPosition);
        }

        //workoutSessionPositionService.insert(workoutSessionPosition);
        for (WorkoutSessionPosition wsp : workoutSessionPositions) {
            workoutSessionPositionService.insert(wsp);
        }

        //model atribute
        model.addAttribute("workoutSessionPositions", workoutSessionPositions);



        return "/workoutSessionEdition";
    }





    @PostMapping("/add/{workoutTemplateId}")
        public String editAndSave(Model model, WorkoutSession workoutSession, List<WorkoutSessionPosition> workoutSessionPositions, @PathVariable Long workoutTemplateId){

        workoutSessionService.save(workoutSession);

        for (WorkoutSessionPosition wsp : workoutSessionPositions) {
            workoutSessionPositionService.insert(wsp);
        }

        return "/workoutTemplateList"; //tylko tymczasowo - docelowo przegląd zrealizowanych sesji treningowych//


    }
}
