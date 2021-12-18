package com.mycom.myapp.user;

public interface UserService {
	
	public int insertUser(UserVO vo);
	public int updateUser(UserVO vo);
	public int deleteUser(int id);
	public UserVO getUser(UserVO vo);
	public int CountUser(UserVO vo);
	
}
