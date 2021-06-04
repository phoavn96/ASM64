package hoa.t1908e.asm64.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Street {

    @Id
    @GeneratedValue
    private int streetId;
    private String name;
    private Long creatAt;
    private String description;
    private int Status; //1.Dang su dung,0.Dang thi cong,2.Dang tu sua


    @ManyToOne
    @JoinColumn(name = "nameDistrict", referencedColumnName = "nameDistrict")
    private District district;
    @Column(insertable = false, updatable = false)
    private String nameDistrict;

}
