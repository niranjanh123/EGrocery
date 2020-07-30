package com.grocery;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet{
	
	String username,mail,password;
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException {
		username = req.getParameter("name");
		mail = req.getParameter("email");
		password = req.getParameter("password");
		PrintWriter out = res.getWriter();
		boolean result = writeData(username,mail,password);
		if(result) {
			RequestDispatcher rs = req.getRequestDispatcher("login.jsp");
			rs.forward(req, res);
		}
		else {
			req.setAttribute("RegisterResult", true);
		}
	}
	
	public boolean writeData(String username,String mail,String password)  {
		try {
		File f = new File("C:\\Users\\Niranjan\\eclipse-workspace\\EGrocery\\SignUpUsers.txt");
		FileOutputStream fos = new FileOutputStream(f,true);
		PrintWriter p = new PrintWriter(fos);
		p.append(username+","+mail+","+password+"\n");
		System.out.println("SignUp successfully");
		p.flush();
		fos.close();
		p.close();
		return true;
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
