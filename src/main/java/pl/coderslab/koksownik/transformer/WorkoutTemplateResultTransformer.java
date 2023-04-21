package pl.coderslab.koksownik.transformer;

import org.hibernate.transform.ResultTransformer;
import pl.coderslab.koksownik.model.*;

import java.util.ArrayList;
import java.util.List;

public class WorkoutTemplateResultTransformer implements ResultTransformer {

    @Override
    public Object transformTuple(Object[] tuple, String[] aliases) {
        WorkoutTemplate workoutTemplate = new WorkoutTemplate();
        workoutTemplate.setId((Long) tuple[0]);
        workoutTemplate.setName((String) tuple[1]);
        workoutTemplate.setDescription((String) tuple[2]);

        List<WorkoutPosition> workoutPositions = new ArrayList<>();

        if (tuple[3] instanceof List) {

            for (Object positionTuple : (List<Object>) tuple[3]) {
                Object[] positionArray = (Object[]) positionTuple;

                WorkoutPosition workoutPosition = new WorkoutPosition();
                workoutPosition.setId((Long) positionArray[0]);
                workoutPosition.setPositionNumber((Long) positionArray[1]);
                workoutPosition.setRepetitions((Integer) positionArray[2]);
                workoutPosition.setWeight((Float) positionArray[3]);

                ExerciseMode exerciseMode = new ExerciseMode();
                exerciseMode.setId((Long) positionArray[4]);
                exerciseMode.setName((String) positionArray[5]);
                exerciseMode.setDescription((String) positionArray[6]);
                workoutPosition.setExerciseMode(exerciseMode);

                Exercise exercise = new Exercise();
                exercise.setId((Long) positionArray[7]);
                exercise.setName((String) positionArray[8]);
                exercise.setDescription((String) positionArray[9]);

                BodyPart bodyPart = new BodyPart();
                bodyPart.setId((Long) positionArray[10]);
                bodyPart.setName((String) positionArray[11]);
                exercise.setBodyPart(bodyPart);

                Category category = new Category();
                category.setId((Long) positionArray[12]);
                category.setName((String) positionArray[13]);
                category.setMultiplier((Integer) positionArray[14]);
                exercise.setCategory(category);

                workoutPosition.setExercise(exercise);
                workoutPositions.add(workoutPosition);
            }
        }


        workoutTemplate.setWorkoutPositions(workoutPositions);
        return workoutTemplate;
    }

    @Override
    public List transformList(List list) {
        return list;
    }

}
