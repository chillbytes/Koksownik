package pl.coderslab.koksownik.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.koksownik.model.BodyPart;
import pl.coderslab.koksownik.service.BodyPartService;

import javax.validation.Valid;

@Controller
@RequestMapping("/bodyPart")
@RequiredArgsConstructor
public class BodyPartController {
    private final BodyPartService bodyPartService;


    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("bodyPart", new BodyPart());
        return "/addBodyPart";
    }

    @PostMapping("/add")
    public String addSave(@Valid BodyPart bodyPart, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/addBodyPart";
        }
        bodyPartService.save(bodyPart);
        //model.addAttribute("books", bodyPartService.allWithAuthors());
        return "/BodyPartlist";
    }
}
