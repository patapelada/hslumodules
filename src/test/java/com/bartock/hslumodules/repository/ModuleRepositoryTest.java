package com.bartock.hslumodules.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.Set;

import com.bartock.hslumodules.data.Language;
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
public class ModuleRepositoryTest {

    @Autowired
    private TestEntityManager entityManager;

    @Autowired
    private ModuleRepository moduleRepository;

    private Language getTestLanguage() {
        return new Language("DE", "Deutsch");
    }

    private Language saveLanguage(Language language) {
        Language storedLanguage = entityManager.persist(language);
        return storedLanguage;
    }

    private Module getTestModule() {
        return getTestModule("OOP");
    }

    private Module getTestModule(String code) {
        Module entity = new Module();
        entity.setCode(code);
        entity.setCredits(3);
        entity.setType(ModuleType.CORE_ASSESSMENT);
        entity.setName("Objekt Orientiertes Prog.");
        entity.setLanguage((Set.of(getTestLanguage())));
        return entity;
    }

    private Module saveTestModule(Module entity) {
        Module stored = entityManager.persist(entity);
        entityManager.flush();
        return stored;
    }

    @Test
    public void createSimpleModule_savedLanguageTest() {
        // Given
        Module entity = new Module();
        entity.setCode("OOP");
        entity.setCredits(3);
        entity.setType(ModuleType.CORE_ASSESSMENT);
        entity.setName("Objekt Orientiertes Prog.");
        entity.setLanguage(Set.of(saveLanguage(getTestLanguage())));

        // when
        Module result = moduleRepository.save(entity);

        // then
        assertNotNull(result.getId());
        assertEquals("DE", result.getLanguage().toArray(new Language[1])[0].getIsoCode());
    }

    @Test
    public void createSimpleModule_newLanguageTest() {
        // Given
        Module entity = new Module();
        entity.setCode("OOP");
        entity.setType(ModuleType.CORE_ASSESSMENT);
        entity.setCredits(3);
        entity.setName("Objekt Orientiertes Prog.");
        entity.setLanguage(Set.of(getTestLanguage()));

        // when
        Module result = moduleRepository.save(entity);

        // then
        assertNotNull(result.getId());
        assertEquals("DE", result.getLanguage().toArray(new Language[1])[0].getIsoCode());
    }

    @Test
    public void whenDeleteModule_thenLanguagePersists() {
        // Given
        Module entity = getTestModule();
        entityManager.persist(entity.getLanguage().iterator().next());
        Module savedModule = entityManager.persist(entity);

        // when
        moduleRepository.delete(savedModule);

        // then
        Language language = entityManager.find(Language.class, getTestLanguage().getIsoCode());
        assertNotNull(language);
    }

    @Test
    public void createSimpleModuleWithRequirementTest() {
        // Given
        Module entity = getTestModule();
        Module reqEntity = getTestModule("PLAB");
        Requirement req = entityManager.persist(new Requirement(Set.of(reqEntity)));
        entity.setRequirements(Set.of(req));

        // when
        Module savedModule = entityManager.persist(entity);

        // then
        assertNotNull(savedModule);
        assertFalse(savedModule.getRequirements().isEmpty());
        Requirement persistedReq = savedModule.getRequirements().iterator().next();
        assertNotNull(persistedReq.getId());
        assertNotNull(persistedReq.getModules());
        assertFalse(persistedReq.getModules().isEmpty());
        assertEquals("PLAB", persistedReq.getModules().iterator().next().getCode());
    }

    @Test
    public void whenDeleteModule_thenDeleteRequirementsButNotReqModule() {
        // Given
        Module entity = getTestModule();
        entityManager.persist(entity.getLanguage().iterator().next());
        Module reqEntity = getTestModule("PLAB");
        reqEntity.setLanguage(entity.getLanguage());
        reqEntity = saveTestModule(reqEntity);
        Requirement req = entityManager.persist(new Requirement(Set.of(reqEntity)));
        entity.setRequirements(Set.of(req));
        Module savedModule = entityManager.persist(entity);
        Requirement persistedReq = savedModule.getRequirements().iterator().next();
        Module requiredModule = persistedReq.getModules().iterator().next();

        // when
        entityManager.remove(savedModule);

        // then
        Requirement foundReq = entityManager.find(Requirement.class, persistedReq.getId());
        // assertNull(foundReq);
        assertNotNull(entityManager.find(Module.class, requiredModule.getId()));
    }

}
