package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardVO {
	private int idx; // 번호
	@NonNull
	private String title; // 제목
	@NonNull
	private String contents; // 내용
	private int count; // 조회수
	@NonNull
	private String writer; // 작성자
	private String indate; // 작성일
}
