package com.bartock.hslumodules.data;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;

import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@RequiredArgsConstructor
@NoArgsConstructor
@Entity
public class Requirement {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String levelName;

    @NotNull
    @NonNull
    @ManyToMany(cascade = CascadeType.DETACH)
    @JoinTable(name = "requirement_module", joinColumns = @JoinColumn(name = "requirement_id"), inverseJoinColumns = @JoinColumn(name = "module_id"))
    private Set<Module> modules;

    private boolean inclusive = true;

}
