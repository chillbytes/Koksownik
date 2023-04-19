package pl.coderslab.koksownik.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.koksownik.dao.BodyPartDao;
import pl.coderslab.koksownik.dao.CategoryDao;
import pl.coderslab.koksownik.model.BodyPart;
import pl.coderslab.koksownik.model.Category;
import pl.coderslab.koksownik.model.Exercise;
import pl.coderslab.koksownik.service.BodyPartService;
import pl.coderslab.koksownik.service.CategoryService;
import pl.coderslab.koksownik.service.ExerciseService;

import java.util.List;

@Controller
@RequestMapping("/exercise")
@RequiredArgsConstructor
public class ExerciseController {

    private final ExerciseService exerciseService;
    private final BodyPartDao bodyPartDao;
    private final CategoryDao categoryDao;
    private final BodyPartService bodyPartService;
    private final CategoryService categoryService;

    @ModelAttribute("bodyPartList")
    public List<BodyPart> getBodyParts() {
        return bodyPartService.all();
    }

    @ModelAttribute("categoryList")
    public List<Category> getCategories() {
        return categoryService.all();
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("exercise", new Exercise());
        return "/addExercise";
    }

    @PostMapping("/add")
    public String addSave(Exercise exercise, Model model) {
        exerciseService.save(exercise);

        model.addAttribute("exercises", exerciseService.getAllExercises());

        return "exerciseList";
    }

    @GetMapping("/list")
    public String getExerciseList(Model model) {

        model.addAttribute("exercises", exerciseService.getAllExercises());

        return "/exerciseList";
    }



}
