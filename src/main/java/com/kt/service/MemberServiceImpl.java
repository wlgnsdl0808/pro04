package com.kt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kt.dao.MemberDAO;
import com.kt.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO memberDao;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return MemberDAO.memberList();
	}

	@Override
	public MemberDTO getMember(String id) throws Exception {
		return memberDao.getMember(id);
	}
	
	

}
