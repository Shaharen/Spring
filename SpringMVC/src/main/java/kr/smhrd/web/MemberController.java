package kr.smhrd.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.model.BoardVO;
import kr.smhrd.model.MemberMapper;
import kr.smhrd.model.MemberVO;

@Controller
public class MemberController {
	
	@Inject
	private MemberMapper mapper;
	
	@RequestMapping("/login.do")
	public void login() {}
	
	@RequestMapping("/join.do")
	public void join() {}
	
	@RequestMapping("/joinInsert.do")
	public String joinInsert(MemberVO vo) {
		// 회원정보를 입력받아서 tmember 테이블에 회원정보를 저장하시오
		// 만들어야 할 것 : MemberVO, MemberMapper (interface, xml)
		System.out.println("회원가입 기능 동작");
		
		mapper.joinInsert(vo);
		
		return "redirect:/boardList.do";
	}
	
	@RequestMapping("/loginSelect.do")
	public String loginSelect(MemberVO vo , HttpSession session) {
		System.out.println("회원 로그인 기능 동작");
		
		MemberVO info = mapper.loginSelect(vo);
		
		if ( info != null ) {
			session.setAttribute("info", info);
		}
		System.out.println(info);
		
		return "redirect:/boardList.do";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		System.out.println("로그아웃 기능 동작");
		
		// 해당되는 하나만 지울거라 invalidate 보단 remove
		session.removeAttribute("info");
		
		return "redirect:/boardList.do";
	}
	
	@RequestMapping("/memberList.do")
	public @ResponseBody List<MemberVO> memberList() { // 비동기 - ResponseBody
		System.out.println("회원정보보기 기능 수행");
		
		List<MemberVO> list = mapper.memberList();
		
		return list;
	}
	
	@RequestMapping("/idCheck.do")
	public @ResponseBody MemberVO idCheck(String id) {
		System.out.println("아이디 중복 체크 기능 수행");
		
		MemberVO vo = mapper.idCheck(id);
		
		return vo;
	}
	
	
	
}