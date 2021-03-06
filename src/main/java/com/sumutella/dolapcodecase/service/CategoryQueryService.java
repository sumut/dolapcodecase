package com.sumutella.dolapcodecase.service;

import com.sumutella.dolapcodecase.domain.Category;
import com.sumutella.dolapcodecase.exception.NotFoundException;
import com.sumutella.dolapcodecase.payload.dto.IdCodeDisplayValueDTO;

import java.util.List;

public interface CategoryQueryService {
    List<IdCodeDisplayValueDTO> getCategories(String categoryTypeCode) throws NotFoundException;

    List<IdCodeDisplayValueDTO> getCategories(Long categoryTypeId) throws NotFoundException;

    Category getCategory(Long categoryTypeId, Long categoryId) throws NotFoundException;

    Category getCategory(Long categoryId) throws NotFoundException;


}
