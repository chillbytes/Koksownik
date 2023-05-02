package pl.coderslab.koksownik.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.koksownik.dao.BodyPartDao;
import pl.coderslab.koksownik.model.BodyPart;
import pl.coderslab.koksownik.repository.BodyPartRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class BodyPartService {

    private final BodyPartDao bodyPartDao;
    private final BodyPartRepository bodyPartRepository;


    public void save(BodyPart bodyPart) {
        bodyPartDao.save(bodyPart);
    }

    public List<BodyPart> all() {
        return bodyPartDao.all();
    }

    public List<BodyPart> allBodyParts() {

        return bodyPartRepository.findAllBodyParts();

    }

}
