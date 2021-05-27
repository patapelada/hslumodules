package com.bartock.hslumodules.controller.api;

import java.util.Comparator;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import com.bartock.hslumodules.data.DegreeProgram;
import com.bartock.hslumodules.data.MajorProgram;
import com.bartock.hslumodules.repository.DegreeProgramRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
@RequestMapping("/api/degreeProgram")
public class DegreeProgramController extends AbstractRestController {

    @Autowired
    private DegreeProgramRepository degreeProgramRepository;

    @GetMapping
    public List<DegreeProgram> findAll() {
        return StreamSupport.stream(degreeProgramRepository.findAll().spliterator(), false)
                .collect(Collectors.toList());
    }

    @GetMapping(value = "/{id}")
    public DegreeProgram findByType(@PathVariable("id") String id) {
        Optional<DegreeProgram> degreeProgram = degreeProgramRepository.findById(id);
        if (!degreeProgram.isPresent()) {
            throw new IllegalArgumentException(String.format("No Degree Program found for id %s", id));
        }
        DegreeProgram result = degreeProgram.get();
        result.setMajors(result.getMajors().stream().sorted(Comparator.comparing(MajorProgram::getName))
                .collect(Collectors.toUnmodifiableSet()));

        return result;
    }
}
