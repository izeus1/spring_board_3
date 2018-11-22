package com.javalec.mysite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.javalec.mysite.dao.BoardDAO;
import com.javalec.mysite.vo.BoardVO;

@Service("boardService")
public class BoardService implements IBoardService {

	@Autowired
	@Qualifier("boarddao")
	private BoardDAO boarddao; 
	
	@Override
	public void insertBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		boarddao.insert(vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		boarddao.delete(vo);
	}

	@Override
	public List<BoardVO> getBoardList() {
		// TODO Auto-generated method stub
		return boarddao.getBoardList(); 
	}

	@Override
	public BoardVO selectOneBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		boarddao.update_cnt(vo);
		return boarddao.selectOne(vo);
	}

	@Override
	public void updateBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		boarddao.update(vo);
		
	}

//	@Override
//	public List<BoardVO> searchNameList(String keyword) {
//		// TODO Auto-generated method stub
//		System.out.println("GBService_searchNameList() ?ò∏Ï∂?"); //?†ï?ÉÅ ?ò∏Ï∂? ?ôï?ù∏
//		keyword = "%" + keyword + "%";
//		return dao.searchNameList(keyword); 
//	}
//
//	@Override
//	public List<BoardVO> searchContentList(String keyword) {
//		// TODO Auto-generated method stub
//		System.out.println("GBService_searchContentList() ?ò∏Ï∂?"); //?†ï?ÉÅ ?ò∏Ï∂? ?ôï?ù∏ 
//		keyword = "%" + keyword + "%";
//		return dao.searchContentList(keyword);
//	}

}
