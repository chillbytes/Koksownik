package pl.coderslab.koksownik;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import pl.coderslab.koksownik.converter.ExerciseConverter;

@SpringBootApplication
public class KoksownikApplication {

    public static void main(String[] args) {
        SpringApplication.run(KoksownikApplication.class, args);
    }

    @Bean
    public ExerciseConverter getExerciseConverter() {
        return new ExerciseConverter();
    }

}
