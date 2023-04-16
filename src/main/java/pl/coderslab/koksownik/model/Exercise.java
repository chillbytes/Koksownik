package pl.coderslab.koksownik.model;


import jakarta.persistence.*;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;


@Entity
@Table(name = "exercises")
@Data
public class Exercise {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    private String description;

    @NotNull
    @ManyToOne
    private BodyPart bodyPart;

    @NotNull
    @ManyToOne
    private Category category;

//powtórzenia
//tryb
//masa

}
