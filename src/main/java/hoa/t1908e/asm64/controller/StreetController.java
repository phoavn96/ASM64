package hoa.t1908e.asm64.controller;

import hoa.t1908e.asm64.entity.Street;
import hoa.t1908e.asm64.repository.StreetRepository;
import hoa.t1908e.asm64.service.StreetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/streets")
public class StreetController {
    @Autowired
    private StreetService streetService;


    @GetMapping
    public Iterable<Street> streetList(@RequestParam(required = false,defaultValue = "") String keyword){

        return streetService.getList(keyword);

    }

    @PostMapping
    public Street createStreet(@RequestBody Street street){
        street.setDistrict(street.getDistrict());
        return streetService.createStreet(street);
    }



}
