package com.bartock.hslumodules.repository;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.Optional;

import com.bartock.hslumodules.data.Language;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@DataJpaTest
public class LanguageRepositoryTest {
    @Autowired
    private TestEntityManager entityManager;

    @Autowired
    private LanguageRepository languageRepository;

    @Test
    public void whenFindById_thenReturnLanguage() {
        // given
        Language testLanguage = new Language("DE", "Deutsch");
        entityManager.persist(testLanguage);
        entityManager.flush();

        // when
        Optional<Language> result = languageRepository.findById("DE");

        // then
        assertTrue(result.isPresent());
        assertEquals(result.get().getName(), testLanguage.getName());
    }

    @Test
    public void createLanguage() {
        // given
        Language testLanguage = new Language("DE", "Deutsch");

        // when
        Language result = languageRepository.save(testLanguage);

        // then
        assertNotNull(result);
        assertEquals("DE", result.getIsoCode());
    }

    @Test
    public void updateLanguage() {
        // given
        Language testLanguage = new Language("DE", "Deutsch");
        entityManager.persist(testLanguage);
        entityManager.flush();

        // when
        testLanguage.setName("English");
        Language result = languageRepository.save(testLanguage);

        // then
        assertNotNull(result);
        assertEquals("DE", result.getIsoCode());
        assertEquals("English", result.getName());
    }

}
