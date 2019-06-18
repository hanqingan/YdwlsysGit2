package com.ydwlsys.service;

import java.util.List;

import com.ydwlsys.entity.Professional;

public interface IProfessionalService {

	List<Professional> queryByID(String str);
}
