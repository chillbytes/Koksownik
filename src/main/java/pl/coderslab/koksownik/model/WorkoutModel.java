package pl.coderslab.koksownik.model;



public class WorkoutModel {
    private Integer id;
    private Integer position_number;
    private String workoutName;
    private String workoutDesc;
    private String elementName;
    private String elementDesc;
    private Float weight;
    private Integer repetitions;
    private String excerciseModeName;


    public WorkoutModel(Integer id, Integer position_number, String workoutName, String workoutDesc, String elementName, String elementDesc, Float weight, Integer repetitions, String excerciseModeName) {
        this.id = id;
        this.position_number = position_number;
        this.workoutName = workoutName;
        this.workoutDesc = workoutDesc;
        this.elementName = elementName;
        this.elementDesc = elementDesc;
        this.weight = weight;
        this.repetitions = repetitions;
        this.excerciseModeName = excerciseModeName;
    }

    public WorkoutModel() {
    }


    // @Id
    // @Column(name="id", columnDefinition = "int")
    public Integer getId() {
        return id;
    }

    // @Column(name="position_number", columnDefinition = "int")
    public Integer getPosition_number() {
        return position_number;
    }

    // @Column(name="workoutName", length = 255)
    public String getWorkoutName() {
        return workoutName;
    }

    // @Column(name="workoutDesc", length = 255)
    public String getWorkoutDesc() {
        return workoutDesc;
    }

    // @Column(name="elementName", length = 255)
    public String getElementName() {
        return elementName;
    }

    // @Column(name="elementDesc", length = 255)
    public String getElementDesc() {
        return elementDesc;
    }

    // @Column(name="weight", columnDefinition = "float")
    public Float getWeight() {
        return weight;
    }
    // @Column(name="repetitions", columnDefinition = "int")
    public Integer getRepetitions() {
        return repetitions;
    }

    // @Column(name="excerciseModeName", length = 255)
    public String getExcerciseModeName() {
        return excerciseModeName;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public void setPosition_number(Integer position_number) {
        this.position_number = position_number;
    }

    public void setWorkoutName(String workoutName) {
        this.workoutName = workoutName;
    }

    public void setWorkoutDesc(String workoutDesc) {
        this.workoutDesc = workoutDesc;
    }

    public void setElementName(String elementName) {
        this.elementName = elementName;
    }

    public void setElementDesc(String elementDesc) {
        this.elementDesc = elementDesc;
    }

    public void setWeight(Float weight) {
        this.weight = weight;
    }

    public void setRepetitions(Integer repetitions) {
        this.repetitions = repetitions;
    }

    public void setExcerciseModeName(String excerciseModeName) {
        this.excerciseModeName = excerciseModeName;
    }
}
