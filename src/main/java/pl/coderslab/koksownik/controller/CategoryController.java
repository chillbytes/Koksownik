package pl.coderslab.koksownik.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.koksownik.model.Category;
import pl.coderslab.koksownik.service.CategoryService;

@Controller
@RequestMapping("/category")
@RequiredArgsConstructor
public class CategoryController {

    private final CategoryService categoryService;

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("category", new Category());
        return "/addCategory";
    }

    @PostMapping("/add")
    public String addSave(Category category, Model model) {
        categoryService.save(category);
        model.addAttribute("categories", categoryService.getAllCategories());
        return "categoryList";
    }

    @GetMapping("/list")
    public String getCategoryList(Model model) {

        model.addAttribute("categories", categoryService.getAllCategories());

        return "/categoryList";
    }



}
