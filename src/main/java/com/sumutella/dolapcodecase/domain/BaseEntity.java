package com.sumutella.dolapcodecase.domain;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@MappedSuperclass
@Setter(AccessLevel.PRIVATE)
@Getter
@ToString
public abstract class BaseEntity {
    public static final String SOFT_DELETE_CLAUSE = "deleted = 0";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @CreationTimestamp
    private LocalDateTime createTime;
    @UpdateTimestamp
    private LocalDateTime lastUpdateTime;
    @NotNull
    @Setter(AccessLevel.PUBLIC)
    private Boolean deleted = false;

}