package backend.pc.psu;


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
public class PsuController {

    private static final Logger logger = LogManager.getLogger(PsuController.class);

    @Autowired
    private JwtUtils jwtUtil;
    private final UserActivityRepository userActivityRepository;
    private final UserRepository userRepository;
    private final PsuRepository psuRepository;

    public PsuController(UserActivityRepository userActivityRepository, UserRepository userRepository, PsuRepository psuRepository) {
        this.userActivityRepository = userActivityRepository;
        this.userRepository = userRepository;
        this.psuRepository = psuRepository;
    }

    @GetMapping("/api/psu")
    public Page<PowerSupplyUnit> list(@RequestParam(name = "name", required = false) String name,
                                      @RequestParam(name = "chipset", required = false) String chipset,
                                      @RequestParam(name = "manufacturer", required = false) String manufacturer,
                                      @RequestParam(name = "standard_80", required = false) String standard_80,
                                      Pageable pageable) {
        Page<PowerSupplyUnit> psu = psuRepository.findAll((Specification<PowerSupplyUnit>) (root, cq, cb) -> {
            Predicate p = cb.conjunction();
            if (Objects.nonNull(chipset)) {
                p = cb.and(p, cb.like(root.get("chipset"), "%" + chipset + "%"));
            }
            if (Objects.nonNull(manufacturer)) {
                p = cb.and(p, cb.like(root.get("manufacturer"), "%" + manufacturer + "%"));
            }
            if (Objects.nonNull(standard_80)) {
                p = cb.and(p, cb.like(root.get("standard_80"), "%" + standard_80 + "%"));
            }
            if (!StringUtils.isEmpty(name)) {
                p = cb.and(p, cb.like(root.get("fullname"), "%" + name + "%"));
            }
            cq.orderBy(cb.desc(root.get("fullname")), cb.asc(root.get("id")));
            return p;
        }, pageable);
        return psu;
    }

    @GetMapping("/api/psu/{id}")
    public PowerSupplyUnit SearchById(@PathVariable("id") String id, @CookieValue(value = "username", required = false) String username) {
        PowerSupplyUnit psu = psuRepository.findByID(id);

        try {
            User user = userRepository.findUserByUsername(username);
            if(user != null) {
                userActivityRepository.save(new UserActivity(user, "view", psu.getId()));
                psuRepository.update(id);
            }
            logger.log(ClientLevel.CLIENT, "Success");
            return psu;

        } catch (Exception e) {
            logger.log(ClientLevel.CLIENT, "Unsuccess");
            return psu;
        }
    }

}
