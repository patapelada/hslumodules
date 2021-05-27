package com.bartock.hslumodules.controller.api;

import java.util.List;

import com.bartock.hslumodules.data.Module;
import com.bartock.hslumodules.data.ModuleType;
import com.bartock.hslumodules.repository.ModuleRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
@RequestMapping("/api/module")
public class ModuleController extends AbstractRestController {

    @Autowired
    private ModuleRepository moduleRepository;

    @GetMapping
    public Iterable<Module> findAll() {
        return moduleRepository.findAll(Sort.by(Sort.Direction.ASC, "code"));
    }

    @GetMapping(value = "/{type}")
    public List<Module> findByType(@PathVariable("type") String type) {
        ModuleType moduleType = ModuleType.valueOf(type);
        return moduleRepository.findAllByType(moduleType);
    }

}
