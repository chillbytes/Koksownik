package pl.coderslab.koksownik.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "series")
@Data
public class Series {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    String type;
    //Warmout
    //Workout
    //Dropset
    //toFailure

    String name;  //???

    Integer repetition;

    Integer mass;


}
