package pl.coderslab.koksownik.converter;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.koksownik.model.Exercise;
import pl.coderslab.koksownik.service.ExerciseService;

public class ExerciseConverter implements Converter<String, Exercise> {

    @Autowired
    private ExerciseService exerciseService;

    @Override
    public Exercise convert(String s) {
        return exerciseService.getExerciseById(Long.parseLong(s));
    }

}
