package com.kt.dto;

import lombok.Data;

@Data
public class BoardDTO {
	int seq;
	String title;
	String content;
	String nickname;
	String regdate;
	int visited;
}
