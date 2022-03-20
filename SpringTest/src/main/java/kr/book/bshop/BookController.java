package kr.book.bshop;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.book.model.BookMapper;
import kr.book.model.BookVO;

@Controller
public class BookController {
	
	
	@Inject
	private BookMapper mapper;
	
	@RequestMapping("/bookList.do")
	public void bookList(Model model) {
		System.out.println("리스트 출력 기능");
		List<BookVO> list = mapper.bookList();
		model.addAttribute("list" , list);
	}
	
	@RequestMapping("/bookInsert.do")
	public String bookInsert(BookVO vo) {
		System.out.println("새로운 도서 입력 기능");
		mapper.bookInsert(vo);
		return "redirect:/bookList.do";
	}
}
