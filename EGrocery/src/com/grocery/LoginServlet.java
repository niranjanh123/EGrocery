package com.grocery;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet{
String mail,pass;
public static String username;
Boolean flag1 = false;
Boolean flag2 = false;
 	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
 		mail = req.getParameter("mail");
 		pass = req.getParameter("pass");
 		if(mail.length()==0) {
 			req.setAttribute("LoginResultmail", true);
 		}else if(pass.length()==0) {
 			req.setAttribute("LoginResultpass", true);
 		}
 		else
 		{
 			LoginServlet l = new LoginServlet();
 			boolean d = l.fectchMail(mail);
 			boolean f = l.fetchPass(pass);
 			if(d&&f) {
 				RequestDispatcher rs = req.getRequestDispatcher("Homepage.jsp");
 				rs.forward(req, res);
 				System.out.println("Login successfull");
// 				PrintWriter out = res.getWriter();
// 				out.println("Login successfull");
 			}
 		}
 	}
 	public boolean fectchMail(String mail1) {
 		  try {
 			  File f = new File("C:\\Users\\Niranjan\\eclipse-workspace\\EGrocery\\SignUpUsers.txt");
 			  FileInputStream fis = new FileInputStream(f);
 			  BufferedReader br =  new BufferedReader(new FileReader(f));
 			  Scanner s = new Scanner(fis);
 			  String a="";
 			  while(s.hasNextLine()) {
 				  a = s.nextLine();
 				  String mail[] = new String[3];
 				  mail = a.split(",");
 				  for(int i=0;i<3;i++) {
 					  //System.out.print(mail[i]+" ");
 					  if(mail[i].contains(mail1)) {
 						  username=mail[i-1];
// 						 System.out.println(username);
// 						 Loginname n = new Loginname();
// 						 n.setname(username);
 						 
 						  flag1 =true;
 					  }else {
 						  continue;
 					  }
 				  }
 			  }
 			  s.close();
 			  fis.close();
 			  br.close();

 			  
 		  }
 		  catch(Exception e) {
 			  e.printStackTrace();
 		  }
 		  return flag1;
 	  }
 	  public boolean fetchPass(String pass1) {
 		  try {
 			  File f = new File("C:\\Users\\Niranjan\\eclipse-workspace\\EGrocery\\SignUpUsers.txt");
 			  FileInputStream fis = new FileInputStream(f);
 			  BufferedReader br =  new BufferedReader(new FileReader(f));
 			  Scanner s = new Scanner(fis);
 			  String b="";
 			  while(s.hasNextLine()) {
 				  b = s.nextLine();
 				  String pass[] = new String[3];
 				  pass = b.split(",");
 				  for(int i=0;i<3;i++) {
 					//  System.out.print(pass[i]+" ");
 					  if(pass[i].contains(pass1)) {
 						  flag2 =true;
 					  }else {
 						  continue;
 					  }
 				  }
 			  }
 			  s.close();
 			  fis.close();
 			  br.close();

 			  
 		  }
 		  catch(Exception e) {
 			  e.printStackTrace();
 		  }
 		  return flag2;
 	  }
}
