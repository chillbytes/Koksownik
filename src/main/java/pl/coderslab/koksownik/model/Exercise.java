package pl.coderslab.koksownik.model;


import lombok.Data;

import javax.persistence.*;
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

    private Integer repetitions;

    private Float weight;

    @ManyToOne
    private ExerciseMode exerciseMode;

    private Integer orderId;

}
