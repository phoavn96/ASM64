package hoa.t1908e.asm64.service;

import hoa.t1908e.asm64.entity.Street;
import hoa.t1908e.asm64.repository.StreetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StreetService {

    @Autowired
    private StreetRepository streetRepository;

    public Street createStreet(Street street){
        street.setCreatAt(System.currentTimeMillis());
        street.setStatus(1);
        return streetRepository.save(street);
    }


    public Iterable<Street> getList(String name,String nameDistrict){
        return streetRepository.searchByNameOrNameDistrict(name,nameDistrict);
    }



}
