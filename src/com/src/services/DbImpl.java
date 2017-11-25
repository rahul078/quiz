package com.src.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.src.model.InsertQuestion;
import com.src.model.LoginModel;
import com.src.model.Questions;
import com.src.model.User;

public class DbImpl implements DbInterface {
	
	private static Connection con;
	static{
		try {
			Class.forName("org.h2.Driver");
		
			con=DriverManager.getConnection("jdbc:h2:~/test","sa","sa");
		} catch (Exception e) {
		e.printStackTrace();
	}	
	}
	

	public User loginVerify(LoginModel l)
	{
		
		try {
			PreparedStatement p=con.prepareStatement("select * from user where email=? and password=?");
			p.setString(1, l.getEmail());
			p.setString(2, l.getPassword());
			ResultSet r=p.executeQuery();
			User rm=new User();
			if(r.next())
			{	
				rm.setName(r.getString(1));
				rm.setEmail(r.getString(2));
				rm.setAge(r.getInt(3));
				rm.setQualification(r.getString(4));
				rm.setPassword(r.getString(5));
				rm.setLevel(r.getInt(6));
				return rm;
				
			}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
						}
			return null;
		
	}
	
	public void registerUser(User r) throws Exception
	{
		PreparedStatement p=con.prepareStatement("insert into user values(?,?,?,?,?,?)");
		p.setString(1, r.getName());
		p.setString(2, r.getEmail());
		p.setInt(3, r.getAge());
		p.setString(4, r.getQualification());
		p.setString(5,r.getPassword());
		p.setInt(6, r.getLevel());
		p.executeUpdate();
	}
	

	public List getQuestions(int level) throws SQLException {
		

		
		PreparedStatement p=con.prepareStatement("select * from questions where level=?");
		//System.out.println("got prepared statement   "+level);
		p.setInt(1, level);
		ResultSet r=p.executeQuery();
		//System.out.println("Got Result Set");
		int i=0;
		
		List<Questions> qlist=new ArrayList<>();
		while(r.next())
		{
			Questions q=new Questions();
			q.setQuestion(r.getString(2));
			q.setChoice1(r.getString(3));
			q.setChoice2(r.getString(4));
			q.setChoice3(r.getString(5));
			q.setChoice4(r.getString(6));
			q.setC_opt(r.getInt(7));
			qlist.add(q);
		}
		return qlist;
	}

	@Override
	public int setQueston(InsertQuestion q) throws SQLException {
		PreparedStatement p=con.prepareStatement("insert into questions values(?,?,?,?,?,?,?)");
		p.setInt(1, q.getLevel());
		p.setString(2, q.getQuestion());
		p.setString(3, q.getChoice1());
		p.setString(4, q.getChoice2());
		p.setString(5, q.getChoice3());
		p.setString(6, q.getChoice4());
		p.setInt(7, q.getC_opt());
		int r=p.executeUpdate();
		return r;
	}

	@Override
	public int verifyDba(LoginModel m) {
		
		
		try {
		
			PreparedStatement p=con.prepareStatement("select * from administrators where uname=? and pword=?");
			p.setString(1, m.getEmail());
			p.setString(2, m.getPassword());
			ResultSet r=p.executeQuery();
			if(r.next())
			{
				return 1;
			}
		} catch (SQLException e) {
			return 0;
		}
		
		return 0;
		// TODO Auto-generated method stub
		
	}

	@Override
	public void toNextLevel(int level, String email) throws SQLException
	{
		PreparedStatement p = con.prepareStatement("update user set level=? where email=?");
		p.setInt(1, level);
		p.setString(2, email);
		p.executeUpdate();
		
	}
}
