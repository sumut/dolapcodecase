package com.sumutella.dolapcodecase.payload.request;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;

@Setter
@Getter
public class GetCategoriesRequest {
    private Long categoryTypeId;
    @NotNull
    @Positive
    private Long categoryId;
}
