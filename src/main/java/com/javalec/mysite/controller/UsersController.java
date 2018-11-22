package com.javalec.mysite.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.mysite.dao.UsersDAO;
import com.javalec.mysite.service.BoardService;
import com.javalec.mysite.service.IUsersService;
import com.javalec.mysite.vo.UsersVO;

@Controller
public class UsersController {
	@Autowired
	@Qualifier("usersService")
	private IUsersService UsersService; 
	
//	@RequestMapping("/list.do")
//	public String getBoardList(HttpServletRequest req, HttpServletResponse resp, GuestBookDAO dao, Model model) {
//		
//		String keyword = req.getParameter("keyword");
//		String searchtype = req.getParameter("searchtype");
//		
//		if(keyword == null || keyword.isEmpty()) {
//			model.addAttribute("list", ;
//		}
//		else { 
//			if(searchtype.equals("keywordname")) {
//				System.out.println("?���?(name) �??�� ?���?"); //?��?�� ?���? 
//				model.addAttribute("list", boardService.searchNameList(keyword));
//			}
//			else {
//				System.out.println("?��?��(content) �??�� ?���?"); //?��?�� ?���? 
//				model.addAttribute("list", boardService.searchContentList(keyword));
//			}
//		}
//		return "index.jsp";
//	}
	
	@RequestMapping("/write.do")
	public String insertUser(UsersVO vo) {
		System.out.println("/write_inserUser ȣ��");
		UsersService.insertUsers(vo); //UsersService
		
		return "login.jsp"; 
	}
	
//	@RequestMapping("/delete.do")
//	public String deleteGuestBook(GuestBookVO vo, GuestBookDAO dao) {
//		
//		guestBookService.deleteGuestBook(vo);
//		return "list.do"; 
//	}
//	
//	
//	@RequestMapping("/deleteform.do")
//	public String deleteFormController(GuestBookVO vo) {
//		
//		return "deleteform.jsp"; 
//	}
	
	@RequestMapping("/login.do")
	public String loginUsers(UsersVO vo, HttpServletRequest req, HttpSession session) {
		String id = req.getParameter("id"); 
		String password = req.getParameter("password");
		
		vo = UsersService.selectOneUsers(id);
		
		if(vo == null || !vo.getPassword().equals(password)) {
			return "login.jsp";
		}
		
		session.setAttribute("id", vo.getId());
		session.setAttribute("password", vo.getPassword());
		session.setAttribute("name", vo.getName());
		
		System.out.println("/login.do ");; 
		
//		if((id == null)||(password == null)){
//			return "login.jsp"; 
//		}
		return "redirect:list.do";
	}
	
//	@RequestMapping("/selectone.do")
//	public String selectOneGuestBook(GuestBookVO vo, GuestBookDAO dao, Model model) {
//		System.out.println("selectone.do ?���?!");
//		
//		guestBookService.selectOneGuestBook(vo);//guestBookService - vo?�� 번호 ?��?��! 
//		model.addAttribute("selectone", guestBookService.selectOneGuestBook(vo)); // "key" >> 조회?��?�� 값을 그�?�? �?�?�? ???��?��?��. 
//		
//		return "selectone.jsp"; 
//		
//	}
	
//	@RequestMapping("/update.do")
//	public String updateGuestBook(GuestBookVO vo, GuestBookDAO dao) {
//		System.out.println("update.do ?���?!");
//		guestBookService.updateGuestBook(vo); //guestBookService���� ����
//		return "list.do"; 
//	}
//	
//	@RequestMapping("/updateform.do")
//	public String updateFormController() {
//		
//		return "updateform.jsp"; 
//	}
	
}
