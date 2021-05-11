package backend.pc.mainboard;

import backend.pc.cpu.CentralProcessor;
import backend.pc.cpu.CpuController;
import backend.security.model.AuthenticationResponse;
import backend.security.utils.JwtUtils;
import backend.user.User;
import backend.user.UserActivity;
import backend.user.UserActivityRepository;
import backend.user.UserRepository;
import backend.util.ClientLevel;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.persistence.criteria.Predicate;
import java.util.Objects;

@RestController
public class MainController {

    private static final Logger logger = LogManager.getLogger(MainController.class);

    @Autowired
    private JwtUtils jwtUtil;
    private final UserActivityRepository userActivityRepository;
    private final UserRepository userRepository;

    private final MainRepository mainRepository;

    public MainController(UserActivityRepository userActivityRepository, UserRepository userRepository, MainRepository mainRepository) {
        this.userActivityRepository = userActivityRepository;
        this.userRepository = userRepository;
        this.mainRepository = mainRepository;
    }

    @GetMapping("/api/mainboard")
    public Page<Mainboard> list(@RequestParam(name = "name", required = false) String name,
                                @RequestParam(name = "chipset", required = false) String chipset,
                                @RequestParam(name = "socket", required = false) String socket,
                                @RequestParam(name = "manufacturer", required = false) String manufacturer,
                                @RequestParam(name = "sizeofram", required = false) String sizeofram,
                                @RequestParam(name = "memory_slot", required = false) String memorySlot,
                                @RequestParam(name = "formfactor", required = false) String formfactor,
                                Pageable pageable) {
        Page<Mainboard> mainboard = mainRepository.findAll((Specification<Mainboard>) (root, criteriaQuery, criteriaBuilder) -> {
            Predicate predicate = criteriaBuilder.conjunction();
            if (Objects.nonNull(chipset)) {
                predicate = criteriaBuilder.and(predicate, criteriaBuilder.like(root.get("chipset"), "%" + chipset + "%"));
            }
            if (Objects.nonNull(manufacturer)) {
                predicate = criteriaBuilder.and(predicate, criteriaBuilder.like(root.get("manufacturer"), "%" + manufacturer + "%"));
            }
            if (Objects.nonNull(socket)) {
                predicate = criteriaBuilder.and(predicate, criteriaBuilder.like(root.get("socket"), "%" + socket + "%"));
            }
            if (Objects.nonNull(sizeofram)) {
                predicate = criteriaBuilder.and(predicate, criteriaBuilder.like(root.get("sizeofram"), "%" + sizeofram + "%"));
            }
            if (Objects.nonNull(memorySlot)) {
                predicate = criteriaBuilder.and(predicate, criteriaBuilder.equal(root.get("memory_slot"), memorySlot));
            }
            if (Objects.nonNull(formfactor)) {
                predicate = criteriaBuilder.and(predicate, criteriaBuilder.equal(root.get("formfactor"), formfactor));
            }
            if (!StringUtils.isEmpty(name)) {
                predicate = criteriaBuilder.and(predicate, criteriaBuilder.like(root.get("fullname"), "%" + name + "%"));
            }
            criteriaQuery.orderBy(criteriaBuilder.desc(root.get("fullname")), criteriaBuilder.asc(root.get("id")));
            return predicate;
        }, pageable);
        return mainboard;
    }

    @GetMapping("/api/mainboard/{id}")
    public Mainboard SearchByID(@PathVariable("id") String id, @CookieValue(value = "username", required = false) String username) {
        Mainboard mainboard = mainRepository.findByID(id);
        try {
            User user = userRepository.findUserByUsername(username);

            if(user != null) {
                userActivityRepository.save(new UserActivity(user, "view", mainboard.getId()));
                mainRepository.update(id);
            }

            logger.log(ClientLevel.CLIENT, "Success");
            return mainboard;

        } catch (Exception e) {
            logger.log(ClientLevel.CLIENT, "Unsuccess");
            return mainboard;
        }
    }

}
