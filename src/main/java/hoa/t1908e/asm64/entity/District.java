package hoa.t1908e.asm64.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class District implements Serializable {
    @Id
    @GeneratedValue
    private int districtId;
    private String nameDistrict;

    @JsonBackReference
    @OneToMany(mappedBy = "district",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
    private Set<Street> streetSet;

    public void addStreet(Street street) {
        if(this.streetSet == null){
            this.streetSet = new HashSet<>();
        }
        this.streetSet.add(street);
    }
}
