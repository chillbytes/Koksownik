package pl.coderslab.koksownik.model;


import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;


@Entity
@Table(name = "bodyparts")
@Data
public class BodyPart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;
}
//legs
//chest
//back
//shoulders
//arms