package com.kgit.kpark.member.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

import com.kgit.kpark.member.vo.MemberVO;


public interface MemberDAO {
	 public List selectAllMemberList() throws DataAccessException;
	 public int insertMember(MemberVO memberVO) throws DataAccessException ;
	 public int deleteMember(String id) throws DataAccessException;
	 public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
	 public void updateMember(HashMap memberMap) throws DataAccessException;
	 public String selectOverlappedID(String id) throws DataAccessException;
	 public String getPwById(String id) throws DataAccessException;
//	 public void adminUpdate(String id);
	 public MemberVO selectMemberById(String id);
	 public void adminUpdate(HashMap memberMap);
}