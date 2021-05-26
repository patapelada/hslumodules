package com.bartock.hslumodules.repository;

import java.util.List;

import com.bartock.hslumodules.data.Module;
import com.bartock.hslumodules.data.ModuleType;

import org.springframework.data.domain.Sort;
import org.springframework.data.repository.CrudRepository;

public interface ModuleRepository extends CrudRepository<Module, Integer> {

    public List<Module> findAll(Sort sort);

    public List<Module> findAllByType(ModuleType type);
}
