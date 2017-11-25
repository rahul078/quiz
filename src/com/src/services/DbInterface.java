package com.src.services;

import java.sql.SQLException;
import java.util.List;

import com.src.model.InsertQuestion;
import com.src.model.LoginModel;
import com.src.model.Questions;
import com.src.model.User;



public interface DbInterface {
	public User loginVerify(LoginModel l);
	public List getQuestions(int level) throws SQLException;
	public void registerUser(User r) throws Exception;
	public int setQueston(InsertQuestion q) throws SQLException;
	public int verifyDba(LoginModel m);
	public void toNextLevel(int level, String email) throws SQLException;
}