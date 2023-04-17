package pl.coderslab.koksownik.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "exerciseModes")
@Data
public class ExerciseMode {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;    //warm-up
                            //working set
                            //drop set
                            //failurea

    private String description;





}
