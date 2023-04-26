package pl.coderslab.koksownik.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "workoutSessionPositions")
@Data
public class WorkoutSessionPosition {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private WorkoutSession workoutSession;

    private String exerciseName;

    private String exerciseDescription;

    private String category;

    private Integer repetitions;

    private Float weight;

    private String exerciseMode;

    private boolean completed;


    public WorkoutSessionPosition(WorkoutSession workoutSession) {
        this.workoutSession = workoutSession;
    }


    public WorkoutSessionPosition() {

    }
}
