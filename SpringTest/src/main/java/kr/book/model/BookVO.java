package kr.book.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookVO {
	private int num;
	private String title;
	private String author;
	private String company;
	private String isbn;
	private int count;
}
