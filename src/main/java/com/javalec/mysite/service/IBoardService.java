package com.javalec.mysite.service;

import java.util.List;

import com.javalec.mysite.vo.BoardVO;

public interface IBoardService {

	public void insertBoard(BoardVO vo); 
	public void deleteBoard(BoardVO vo);
	public List<BoardVO> getBoardList(); 
	public BoardVO selectOneBoard(BoardVO vo); 
	public void updateBoard(BoardVO vo); 
//	public List<BoardVO> searchNameList(String keyword);
//	public List<BoardVO> searchContentList(String keyword);
	
	
}
