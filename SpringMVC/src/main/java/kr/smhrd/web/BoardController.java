package kr.smhrd.web;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.BoardMapper;
import kr.smhrd.model.BoardVO;

@Controller
public class BoardController {
	
	// @Autowired보다는 Inject가 보안성이 좋음
	@Inject // DI ( 의존성 주입 )
	private BoardMapper mapper;
	
	// 게시판 목록보기 기능
	// RequestMapping() : ()안 글자가 써지면 아래함수 실행
	@RequestMapping("/boardList.do")
	public void boardList(Model model) {
		System.out.println("게시판 목록보기 기능 동작");
		
		List<BoardVO> list = mapper.boardList();
		
		// 모델은 리퀘스트쪽에 있음
		model.addAttribute("list", list);
		
		// 객체 바인딩, 동적 바인딩
		// return "boardList"; -> 메소드이름과 리턴값이 같을 경우 void로 해도 알아서 리턴해준다.
	}
	
	// 게시판 글쓰기 이동 기능
	@RequestMapping("/boardInsertForm.do")
	public void boardInsertForm() {
		System.out.println("게시판 글쓰기 이동 기능 동작");
	}
	
	// 게시판 글쓰기 입력 기능
	// RequestMapping 외에도 방식별 맵핑인 GetMapping, PostMapping이 존재
	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardVO vo) {
		// 겟 파라미터 필요없이 BoardVO 선언으로 다 가져와짐 -> 리플렉션 ( 즉, 알아서 객체화 시켜줌 )
		// < 조건 >
		// 1. VO와 가져올 name이 같아야한다.
		// 2. 기본 생성자가 있어야한다.
		System.out.println("게시판 글쓰기 입력 기능 동작");
		mapper.boardInsert(vo);
		return "redirect:/boardList.do";
	}
	
	// 게시판 글 열람 기능
	@RequestMapping("/boardContent.do")
	public void boardContent(int idx, Model model) {
		System.out.println("게시판 글 열람 기능 동작");
		
		// 조회수 증가
		mapper.count(idx);
		BoardVO vo = mapper.boardContent(idx);
		
		model.addAttribute("vo" , vo);
	}
	
	/*
	 * // 게시판 글 수정 이동 기능 - 보드 업데이트 폼 들렸다가 올때는 필요함
	 * 
	 * @RequestMapping("/boardUpdateForm.do") public String boardUpdateForm(int idx,
	 * Model model) { System.out.println("게시판 글수정 이동 기능 동작");
	 * 
	 * BoardVO vo = mapper.boardUpdateForm(idx);
	 * 
	 * model.addAttribute("update", vo); System.out.println("이동중 idx="+idx);
	 * 
	 * return "boardUpdateForm"; }
	 */
	
	// 게시판 글 수정 기능
	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(BoardVO vo) {
		System.out.println("게시글 글 수정 기능 동작");
		System.out.println("이동 후 idx="+vo.getIdx());
		
		mapper.boardUpdate(vo);
		
		return "redirect:/boardList.do";
	}

	// 게시판 글 삭제 기능
	@RequestMapping("/boardDelete.do")
	public String boardDelete(int idx) {
		System.out.println("게시글 글 삭제 기능 동작");
		
		mapper.boardDelete(idx);
		
		return "redirect:/boardList.do";
	}
	
}
