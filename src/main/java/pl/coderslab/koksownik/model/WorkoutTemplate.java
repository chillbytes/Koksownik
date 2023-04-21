package pl.coderslab.koksownik.model;


import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.List;

@Entity
@Table(name = "workouts")
@Data
public class WorkoutTemplate {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    private String description;

    @OneToMany(mappedBy="id")
    private List<WorkoutPosition> workoutPositions;

}





//    @NotEmpty
//    @ManyToMany
//    @JoinTable(name = "workouts_exercises",
//                joinColumns = @JoinColumn(name = "workout_id"),
//                inverseJoinColumns = @JoinColumn(name = "exercise_id"))
//    private List<Exercise> exercises;