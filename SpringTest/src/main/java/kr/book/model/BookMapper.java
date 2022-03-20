package kr.book.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BookMapper {

	public List<BookVO> bookList();

	public void bookInsert(BookVO vo);

}
