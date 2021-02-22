package com.sumutella.dolapcodecase.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.Where;

import javax.persistence.Entity;

@Entity
@Where(clause = BaseEntity.SOFT_DELETE_CLAUSE)
@Getter
@Setter
@ToString
public class Brand extends BaseEntity {
    private String code;
    private String name;
    private String description;

}