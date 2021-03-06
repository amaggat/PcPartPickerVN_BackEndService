package backend.recommendation.score;

import javax.persistence.*;

@Entity
@Table(name = "category")
public class Category {

    @Column(name = "type")
    private String type;

    @Column(name = "budget")
    private String budget;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBudget() {
        return budget;
    }

    public void setBudget(String budget) {
        this.budget = budget;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
