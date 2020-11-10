package com.kgit.kpark.member.service;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.kgit.kpark.member.dao.MemberDAO;
import com.kgit.kpark.member.vo.MemberVO;

@Service("memberService")
@Transactional(propagation=Propagation.REQUIRED)
public class MemberServiceImpl  implements MemberService{
	   @Autowired
	   private MemberDAO memberDAO;

	   @Override
	   public List listMembers() throws DataAccessException {
	      List membersList = null;
	      membersList = memberDAO.selectAllMemberList();
	      return membersList;
	   }

	   @Override
	   public int addMember(MemberVO memberVO) throws DataAccessException {
	     return memberDAO.insertMember(memberVO);
	   }


	   @Override
	   public int removeMember(String id) throws DataAccessException {
	      return memberDAO.deleteMember(id);
	   }
	 

	   @Override
	   public void updateMember(String old_pw, MemberVO member, HashMap memberMap, HttpServletResponse response) throws Exception{
		   response.setCharacterEncoding("UTF-8"); 
		   response.setContentType("text/html; charset=UTF-8");
		   PrintWriter out = response.getWriter();
		   if(!old_pw.equals(member.getUser_pw())) {
				out.println("<script>");
				out.println(" alert('기존 비밀번호가 다릅니다.');");
				out.println(" history.go(-1);");
				out.println(" </script>");
				out.close();
			}else {
				String user_id=(String)memberMap.get("user_id");
				 memberDAO.updateMember(memberMap);
			}
		}
	   
	   @Override
	   public String getPwById(String id) throws Exception {
		   String pw = memberDAO.getPwById(id);
		   return pw;
	   }
	   

		@Override
		public MemberVO login(MemberVO memberVO) throws Exception {
			return memberDAO.loginById(memberVO);
		}
		
		@Override
		public MemberVO selectMemberById(String id) throws Exception {
			return memberDAO.selectMemberById(id);
		}

		@Override
		public String overlapped(String id) throws DataAccessException {
			return memberDAO.selectOverlappedID(id);
		}

		@Override
		public void adminUpdate(HashMap memberMap) {
			memberDAO.adminUpdate(memberMap);
		}
}