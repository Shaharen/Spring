package kr.smhrd.model;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface BoardMapper {
	// 실행시킬 id 와 같은 이름의 추상메소드
	public List<BoardVO> boardList();

	public void boardInsert(BoardVO vo);
	
	public BoardVO boardContent(int idx);
	
	// xml 안가고 바로 하는 방법 (권장하지 않음)
	// @Update("update tboard set count = count + 1 where idx = #{idx}")
	public void count(int idx);
	
	public void boardDelete(int idx);

	public void boardUpdate(BoardVO vo);

	// 업뎃폼 이동용  public BoardVO boardUpdateForm(int idx);

}
