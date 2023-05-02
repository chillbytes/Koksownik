package pl.coderslab.koksownik.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.koksownik.model.BodyPart;
import pl.coderslab.koksownik.service.BodyPartService;

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
    public String addSave(BodyPart bodyPart, Model model) {
        bodyPartService.save(bodyPart);

        model.addAttribute("bodyParts", bodyPartService.allBodyParts());

        return "/bodyPartList";
    }


    @GetMapping("/list")
    public String getBodyPartList(Model model) {

        model.addAttribute("bodyParts", bodyPartService.allBodyParts());

        return "/bodyPartList";
    }

}
