package pl.coderslab.koksownik.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.koksownik.dao.BodyPartDao;
import pl.coderslab.koksownik.model.BodyPart;
import pl.coderslab.koksownik.repositiry.BodyPartRepository;
@Service
@RequiredArgsConstructor
public class BodyPartService {

    private final BodyPartDao bodyPartDao;
    private final BodyPartRepository bodyPartRepository;
    public void save(BodyPart bodyPart) {
        bodyPartDao.save(bodyPart);
    }

}
