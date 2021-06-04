package hoa.t1908e.asm64.repository;

import hoa.t1908e.asm64.entity.Street;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StreetRepository extends JpaRepository<Street,Integer> {
@Query("select s from Street s where s.name like %:keyword% or s.nameDistrict like %:keyword% ")
List<Street> searchByNameOrNameDistrict(@Param(value = "keyword") String keyword);

}
