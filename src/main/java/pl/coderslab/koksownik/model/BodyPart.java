package pl.coderslab.koksownik.model;

import jakarta.persistence.*;
import lombok.Data;

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


    //legs
    //chest
    //back
    //shoulders
    //arms

}
