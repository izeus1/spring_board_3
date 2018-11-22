package com.javalec.mysite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.javalec.mysite.dao.UsersDAO;
import com.javalec.mysite.vo.UsersVO;

@Service("usersService")
public class UsersService implements IUsersService {

	@Autowired
	@Qualifier("usersdao")
	private UsersDAO usersdao; //mybatis 
	
	
	@Override
	public void insertUsers(UsersVO vo) {
		// TODO Auto-generated method stub
		usersdao.insert(vo);
	}

	@Override
	public void deleteUsers(UsersVO vo) {
		// TODO Auto-generated method stub
		usersdao.delete(vo);
	}

	@Override
	public List<UsersVO> getUsersList() {
		// TODO Auto-generated method stub
		return usersdao.getUsersList(); 
	}

	@Override
	public UsersVO selectOneUsers(String id) {
		// TODO Auto-generated method stub
		return usersdao.selectOne(id);
	}

	@Override
	public void updateUsers(UsersVO vo) {
		// TODO Auto-generated method stub
		usersdao.update(vo);
		
	}

//	@Override
//	public List<UsersVO> searchNameList(String keyword) {
//		// TODO Auto-generated method stub
//		System.out.println("GBService_searchNameList() ?ò∏Ï∂?"); //?†ï?ÉÅ ?ò∏Ï∂? ?ôï?ù∏
//		keyword = "%" + keyword + "%";
//		return dao.searchNameList(keyword); 
//	}
//
//	@Override
//	public List<UsersVO> searchContentList(String keyword) {
//		// TODO Auto-generated method stub
//		System.out.println("GBService_searchContentList() ?ò∏Ï∂?"); //?†ï?ÉÅ ?ò∏Ï∂? ?ôï?ù∏ 
//		keyword = "%" + keyword + "%";
//		return dao.searchContentList(keyword);
//	}

}
