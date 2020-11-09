package com.kgit.kpark.member.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.dao.DataAccessException;

import com.kgit.kpark.member.vo.MemberVO;

public interface MemberService {
	 public List listMembers() throws DataAccessException;
	 public int addMember(MemberVO membeVO) throws DataAccessException;
	 public int removeMember(String id) throws DataAccessException;
	 public MemberVO login(MemberVO memberVO) throws Exception;
	 public void updateMember(String old_pw, MemberVO member, HashMap memberMap, HttpServletResponse response) throws Exception;
	 public String overlapped(String id);
}