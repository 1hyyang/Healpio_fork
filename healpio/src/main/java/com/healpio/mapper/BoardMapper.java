package com.healpio.mapper;

import java.util.List;

import com.healpio.vo.ClassVO;
import com.healpio.vo.ExerciseVO;
import com.healpio.vo.LocationVO;


public interface BoardMapper {


	public List<ClassVO> getList();
	
	public List<ExerciseVO> exerciseList();
	
	public List<LocationVO> provinceList();

	public List<LocationVO> locationList();
}