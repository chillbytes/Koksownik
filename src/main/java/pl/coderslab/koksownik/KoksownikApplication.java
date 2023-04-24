package pl.coderslab.koksownik;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import pl.coderslab.koksownik.converter.ExerciseConverter;
import pl.coderslab.koksownik.repository.ExerciseRepository;

@SpringBootApplication
public class KoksownikApplication {
    private ExerciseRepository exerciseRepository;

    public static void main(String[] args) {

        SpringApplication.run(KoksownikApplication.class, args

        );
    }



    @Bean
    public ExerciseConverter getExerciseConverter() {

        return new ExerciseConverter(    );

    }

}
