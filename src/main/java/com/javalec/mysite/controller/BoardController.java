package com.javalec.mysite.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javalec.mysite.dao.BoardDAO;
import com.javalec.mysite.service.IBoardService;
import com.javalec.mysite.vo.BoardVO;

@Controller
public class BoardController {
	@Autowired
	@Qualifier("boardService")
private IBoardService BoardService; 
	
	@RequestMapping("/list.do")
	public String getBoardList(HttpServletRequest req, HttpServletResponse resp, Model model,
	@RequestParam(value="keyword", required=false) String keyword,
	@RequestParam(value="searchtype", required=false) String searchtype) {
		
		
//		if(keyword == null || keyword.isEmpty()) {
			
		model.addAttribute("list", BoardService.getBoardList());
		
//		}
//		else { 
//			if(searchtype.equals("keywordname")) {
//				System.out.println(""); //?��?�� ?���? 
//				model.addAttribute("list", boardService.searchNameList(keyword));
//			}
//			else {
//				System.out.println("?��?��(content) �??�� ?���?"); //?��?�� ?���? 
//				model.addAttribute("list", boardService.searchContentList(keyword));
//			}
		return "getBoardList.jsp";
	}
	
	@RequestMapping("/addform.do")
	public String insertFormController() {
		System.out.println("addform");
		return "insertBoard.jsp";  
	}
	
	@RequestMapping("/add.do")
	public String insertBoard(BoardVO vo, BoardDAO dao) {
		BoardService.insertBoard(vo); //guestBookService
		return "redirect:list.do"; 
	}
	
	@RequestMapping("/delete.do")
	public String deleteBoard(BoardVO vo, BoardDAO dao) {
		
		BoardService.deleteBoard(vo);
		return "redirect:list.do"; 
	}
	
	@RequestMapping("/getBoard.do")
	public String selectOneBoard(BoardVO vo, BoardDAO dao, Model model) {
		
		model.addAttribute("selectone", BoardService.selectOneBoard(vo)); // "key" >> 조회?��?�� 값을 그�?�? �?�?�? ???��?��?��. 
		System.out.println("getBoard ��Ʈ�ѷ�");
		
		return "getBoard.jsp"; 
		
	}
	
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
