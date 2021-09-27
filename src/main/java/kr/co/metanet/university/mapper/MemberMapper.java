package kr.co.metanet.university.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.metanet.university.domain.Member;
import kr.co.metanet.university.domain.MemberAdmin;
import kr.co.metanet.university.domain.MemberProfessor;
import kr.co.metanet.university.domain.MemberStudent;

public interface MemberMapper {
	Member selectMemberByCode(String code);

	MemberStudent selectStudentByCode(String code);

	List<MemberStudent> selectStudentList();

	MemberProfessor selectProfessorByCode(String code);

	MemberAdmin selectAdminByCode(String code);

	void updatePassword(Map<String, String> params);

	void updateStudentInfo(Map<String, String> params);

	void updateProfessorInfo(Map<String, String> params);

	void updateAdminInfo(Map<String, String> params);

	// 유저 추가
	int insertMember(Map<String, Object> params);

	// 유저 Role 추가
	void insertMemberRole(Map<String, Object> params);

	// 학생 추가
	void insertStudent(Map<String, Object> params);
}
