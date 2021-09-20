package kr.co.metanet.university.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.metanet.university.domain.LectureVO;
import kr.co.metanet.university.mapper.LectureMapper;
import kr.co.metanet.university.service.LectureService;


@Service("kr.co.metanet.university.service.impl.LectureServiceImpl")
public class LectureServiceImpl implements LectureService{
	
	@Autowired
	private LectureMapper mapper;
	
	@Override
	public List<LectureVO> getAllLecture() {
		return mapper.getAllLecture();
	}

}