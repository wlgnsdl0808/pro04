package com.kt.dao;

import java.util.List;

import com.kt.dto.MemberDTO;

public interface MemberDAO {
	public static List<MemberDTO> memberList() throws Exception {
		return memberList();
	}

	public MemberDTO getMember(String id) throws Exception;

}
