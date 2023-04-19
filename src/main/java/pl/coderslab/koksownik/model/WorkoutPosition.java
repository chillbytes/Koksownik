package pl.coderslab.koksownik.model;


import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "workoutpositions")
@Data
public class WorkoutPosition {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long positionNumber;        //pozycja na liście szablonu treningu

    private Integer repetitions;        //ilość powtórzeń

    private Float weight;                //waga

    @ManyToOne
    private ExerciseMode exerciseMode;   //tryb (rozgrzewka, seria robocza, dropset, ćwiczenie do upadku mięśniowego)

    @ManyToOne
    private Exercise exercise;



//
    @ManyToOne
    private WorkoutTemplate workoutTemplate;


}
