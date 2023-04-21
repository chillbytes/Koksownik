package pl.coderslab.koksownik.model;

import lombok.Data;

@Data
public class WorkoutModel {

    private Long workoutId;
    private Long lineId;
    private Integer position_number;
    private String workoutName;
    private String workoutDescription;
    private String exerciseName;
    private String exerciseDescription;
    private Float weight;
    private Integer repetitions;
    private String exerciseModeName;

}
