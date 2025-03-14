package com.mvc.dao;

import com.mvc.model.User;

public interface UserDao {
	int insert(User u);
	User insertEmail(String mail);
}
