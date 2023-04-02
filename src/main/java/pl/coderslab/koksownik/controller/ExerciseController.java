package pl.coderslab.koksownik.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.koksownik.model.Exercise;
import pl.coderslab.koksownik.service.ExerciseService;

@Controller
@RequestMapping("/exercise")
@RequiredArgsConstructor
public class ExerciseController {

    private final ExerciseService exerciseService;

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("excercise", new Exercise());
        return "/addExcercise";
    }

    @PostMapping("/add")
    public String addSave(Exercise exercise) {
        //exerciseService.save(exercise);               ///odkomentować po naprawieniu formularza//
        return "excerciseList";
    }


}
