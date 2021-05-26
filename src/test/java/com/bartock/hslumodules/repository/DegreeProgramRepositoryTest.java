package com.bartock.hslumodules.repository;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.Optional;
import java.util.Set;

import com.bartock.hslumodules.data.DegreeProgram;
import com.bartock.hslumodules.data.Language;
import com.bartock.hslumodules.data.MajorProgram;
import com.bartock.hslumodules.data.Module;
import com.bartock.hslumodules.data.ModuleType;
import com.bartock.hslumodules.data.Requirement;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@DataJpaTest
@DirtiesContext(classMode = DirtiesContext.ClassMode.AFTER_EACH_TEST_METHOD)
public class DegreeProgramRepositoryTest {
    @Autowired
    private TestEntityManager entityManager;

    @Autowired
    private DegreeProgramRepository languageRepository;

    private Module getTestModule(String code) {
        Module entity = new Module();
        entity.setCode(code);
        entity.setCredits(3);
        entity.setType(ModuleType.CORE_ASSESSMENT);
        entity.setName("Objekt Orientiertes Prog.");
        entity.setLanguage((Set.of(new Language("DE", "deutsch"))));
        return entity;
    }

    @Test
    public void whenFindById_thenReturnDegreeProgram() {
        // given
        DegreeProgram testDegreeProgram = new DegreeProgram("I", "Informatik");
        entityManager.persist(testDegreeProgram);
        entityManager.flush();

        // when
        Optional<DegreeProgram> result = languageRepository.findById("I");

        // then
        assertTrue(result.isPresent());
        assertEquals(result.get().getName(), testDegreeProgram.getName());
    }

    @Test
    public void createDegreeProgram() {
        // given
        DegreeProgram testDegreeProgram = new DegreeProgram("I", "Informatik");

        // when
        DegreeProgram result = languageRepository.save(testDegreeProgram);

        // then
        assertNotNull(result);
        assertEquals("I", result.getId());
    }

    @Test
    public void updateDegreeProgram() {
        // given
        DegreeProgram testDegreeProgram = new DegreeProgram("WI", "Wirtschafts Inf.");
        entityManager.persist(testDegreeProgram);
        entityManager.flush();

        // when
        testDegreeProgram.setName("Bananenprogramm");
        DegreeProgram result = languageRepository.save(testDegreeProgram);

        // then
        assertNotNull(result);
        assertEquals("WI", result.getId());
        assertEquals("Bananenprogramm", result.getName());
    }

    @Test
    public void createDegreeProgramWithMajorProgram() {
        // given
        DegreeProgram testDegreeProgram = new DegreeProgram("I", "Informatik");
        MajorProgram testMajorProgram = new MajorProgram("SW", "Software Dev.");
        Module testModule = entityManager.persist(getTestModule("OOP"));
        Requirement majorRequirement = new Requirement(Set.of(testModule));
        testMajorProgram.setRequirements(Set.of(majorRequirement));
        testDegreeProgram.addMajorProgram(testMajorProgram);

        // when
        DegreeProgram result = languageRepository.save(testDegreeProgram);

        // then
        assertNotNull(result);
        assertEquals("I", result.getId());
        MajorProgram major = result.getMajors().iterator().next();
        assertNotNull(major.getId());
        assertEquals("SW", major.getCode());
        Module majorModule = major.getRequirements().iterator().next().getModules().iterator().next();
        assertNotNull(majorModule.getId());
        assertEquals("OOP", majorModule.getCode());
    }

}
