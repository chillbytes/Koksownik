package pl.coderslab.koksownik.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.time.LocalDateTime;
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

    @OneToMany(mappedBy="id")
    private List<WorkoutSessionPosition> positions;


    public WorkoutSession(String name, LocalDateTime beginingDateTime) {
        this.name = name;
        this.beginingDateTime = beginingDateTime;
    }
}
