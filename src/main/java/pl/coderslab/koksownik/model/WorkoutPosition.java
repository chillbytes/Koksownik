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


    private Integer repetitions;

    private Float weight;

    @ManyToOne
    private ExerciseMode exerciseMode;
    @ManyToOne
    private Exercise exercise;

    @ManyToOne
    private WorkoutTemplate workoutTemplate;


    public WorkoutPosition() {
    }

    public WorkoutPosition(WorkoutTemplate workoutTemplate) {
        this.workoutTemplate = workoutTemplate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getExerciseId() {
        return exercise != null ? exercise.getId() : null;
    }


    public Integer getRepetitions() {
        return repetitions;
    }

    public void setRepetitions(Integer repetitions) {
        this.repetitions = repetitions;
    }

    public Float getWeight() {
        return weight;
    }

    public void setWeight(Float weight) {
        this.weight = weight;
    }

    public ExerciseMode getExerciseMode() {
        return exerciseMode;
    }

    public void setExerciseMode(ExerciseMode exerciseMode) {
        this.exerciseMode = exerciseMode;
    }

    public Exercise getExercise() {
        return exercise;
    }

    public void setExercise(Exercise exercise) {
        this.exercise = exercise;
    }

    public WorkoutTemplate getWorkoutTemplate() {
        return workoutTemplate;
    }

    public void setWorkoutTemplate(WorkoutTemplate workoutTemplate) {
        this.workoutTemplate = workoutTemplate;
    }
}
