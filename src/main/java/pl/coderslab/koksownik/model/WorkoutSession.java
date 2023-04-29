package pl.coderslab.koksownik.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "workoutSessions")
@Data
public class WorkoutSession {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    private LocalDateTime beginingDateTime;

    private boolean completed;

    @OneToMany(mappedBy="id")
    //@OneToMany(mappedBy = "workout_session_id")
    //private List<WorkoutSessionPosition> positions;
    private List<WorkoutSessionPosition> positions = new ArrayList<>();

    public WorkoutSession(String name, LocalDateTime beginingDateTime) {
        this.name = name;
        this.beginingDateTime = beginingDateTime;
    }
    public WorkoutSession(String name ) {
        this.name = name;
    }

    public WorkoutSession() {

    }
}
