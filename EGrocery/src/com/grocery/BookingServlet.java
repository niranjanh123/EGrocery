package com.grocery;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookingServlet extends HttpServlet
{	
	Loginname n = new Loginname();
	String user = LoginServlet.username;
	String value="";
	static String itemnames="";
	String result="";
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException 
	{	
		System.out.println(user);
		BookingServlet b = new BookingServlet();
		String option=" ";
		result = req.getParameter("button");
		//System.out.println("data:"+result);
		option=req.getParameter("Choose").toString();
		if(result==null) {
			return;
		}else {
			//method to determine the item by determining the code
			String v = b.result(result);
			//System.out.println("result"+v);
			int op = Integer.parseInt(b.option(option));
			//method used to fetch the item name the user wishes to buy
			 itemnames = b.getItemName(v);
			boolean finish =b.ItemDetails(itemnames,op);
			if(finish) {
				//success page
			}
			else {
				//failure page
			}
			req.setAttribute("message", "success");
			//PrintWriter p =  res.getWriter();
			//p.println("Success");
//			RequestDispatcher ds = req.getRequestDispatcher("C:\\Users\\Niranjan\\eclipse-workspace\\EGrocery\\WebContent\\Homepage.jsp");
//			ds.forward(req, res);
		}
	}
	public boolean ItemDetails(String name,int packets) {
		BookingServlet c = new BookingServlet();
		String bought="";
		int packet=0,amount=0,totamount;
		try {
			File details = new File("C:\\Users\\Niranjan\\eclipse-workspace\\EGrocery\\details.txt");
			FileInputStream fis = new FileInputStream(details);
			FileOutputStream fos = new FileOutputStream(details,true);
			 Scanner s = new Scanner(fis);
			 	String a="";	
				//System.out.println(name+packets);
 
				  while(s.hasNextLine()) {
					  a = s.nextLine();
					  String itemname[] = new String[3];
					  itemname = a.split(",");
					  for(int i=0;i<3;i++) {
						  if(itemname[i].contains(name)) {
							  //System.out.println(itemname[i]);
							  bought=itemname[i];
							  packet = Integer.parseInt(itemname[i+1]);
							  amount = Integer.parseInt(itemname[i+2]);
							  System.out.println(packet+"\t"+amount);
							  break;
						  }else {
							  continue;
						  }
					  }
				  }
				  fis.close();
				  fos.flush();
				  fos.close();
				  s.close();
				  if(packets<=packet) {
					  totamount = amount*packets;
					  packet = packet-packets;
					  //System.out.println(packet+"remaining");
					  c.updateData(packet);
					  c.transactionDetails(bought,totamount);
					  System.out.println(totamount);
					  return true;
				  }else {
					  System.out.println("Transaction not possible");
				  }
			
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public void transactionDetails(String itemname,int amount) throws FileNotFoundException,IOException {
		File f =new File("C:\\Users\\Niranjan\\eclipse-workspace\\EGrocery\\UserPurcahse");
		FileOutputStream fos = new FileOutputStream(f,true);
		PrintWriter p = new PrintWriter(fos);
		p.append(user+","+itemname+","+amount+"\n");
		System.out.println("Transaction done successfully");
		p.flush();
		fos.close();
		p.close();
	}
	public void updateData(int packet) throws FileNotFoundException ,IOException{
		String val = String.valueOf(packet);
		System.out.println(val);
		String tempfile = "temp1.txt";
		String path="C:\\Users\\Niranjan\\eclipse-workspace\\EGrocery\\details.txt";
		File oldFile = new File(path);
		File newFile = new File(tempfile);
		//FileOutputStream fos = new FileOutputStream(tempfile,true);
		String col1="";String col2="";String col3="";
		FileWriter fw = new FileWriter(tempfile,true);
		BufferedWriter bw = new BufferedWriter(fw);
		PrintWriter pw = new PrintWriter(bw);
		Scanner s = new Scanner(new File(path));
		String a = "";
		while(s.hasNextLine()) {
			  a = s.nextLine();
			  String itemname[] = new String[3];
			  itemname = a.split(",");
			  for(int i=0;i<3;i++) {
				  col1=itemname[i];
				  i++;
				  col2=itemname[i];
				  i++;
				  col3=itemname[i];
				  i++;
			if(col1.equals(itemnames)) {
				System.out.println("item name is "+col1+","+itemnames);
				pw.print(itemnames+","+val+","+col3+"\n");
			}
			else {
				pw.print(col1+","+col2+","+col3+"\n");
			}
		}
		}
		s.close();
		pw.flush();
		pw.close();
		oldFile.delete(); 
		File f = new File(path);
		newFile.renameTo(f);
		
	}
	public String getItemName(String val) {
		String g="";
		try {
		File f = new File("C:\\Users\\Niranjan\\eclipse-workspace\\EGrocery\\Code.txt");
		FileInputStream fis = new FileInputStream(f);
	    Scanner s = new Scanner(fis);
		String a="";
		  while(s.hasNextLine()) {
			  a = s.nextLine();
			  String name[] = new String[2];
			  name = a.split(",");
			  for(int i=0;i<2;i++) {
				  if(name[i].contains(val)) {
					  g = name[i+1];
					  System.out.println(g);
					 break;
				  }else {
					  continue;
				  }
			  }
		  }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return g;
	}
	public String result(String val) {
		String op="";
		if(val.equals("amul")) {
			op = "1a";
		}else if(val.equals("nestle")){
			op = "2b";
		}else if(val.equals("dabur")){
			op = "3c";
		}else if(val.equals("haldiram")){
			op = "4d";
		}else if(val.equals("britania")){
			op = "5e";
		}else if(val.equals("lays")){
			op = "6f";
		}else if(val.equals("rusk")){
			op = "7g";
		}else if(val.equals("toordal")){
			op = "8h";
		}else if(val.equals("soda")){
			op = "9i";
		}else if(val.equals("noodles")){
			op = "10j";
		}else if(val.equals("cuminseeds")){
			op = "11k";
		}else if(val.equals("uraddal")){
			op = "12l";
		}else if(val.equals("oreo")){
			op = "13m";
		}else if(val.equals("tatasalt")){
			op = "14n";
		}else if(val.equals("darkfantasy")){
			op = "15o";
		}else if(val.equals("chanadal")){
			op = "16p";
		}else if(val.equals("jam")){
			op = "17q";
		}else if(val.equals("oats")){
			op = "18r";
		}else if(val.equals("nuts")){
			op = "19s";
		}else if(val.equals("pasta")){
			op = "20t";
		}else if(val.equals("chocofills")){
			op = "21u";
		}else if(val.equals("cornflakes")){
			op = "22v";
		}else if(val.equals("redlabel")){
			op = "23w";
		}else if(val.equals("oil")){
			op = "24x";
		}else if(val.equals("almonds")){
			op = "25y";
		}else if(val.equals("pickle")){
			op = "26z";
		}else if(val.equals("basmatirice")){
			op = "27!";
		}else if(val.equals("greenmoong")){
			op = "28@";
		}else if(val.equals("goodlife")){
			op = "29#";
		}else if(val.equals("atta")){
			op = "30$";
		}
		return op;
		
	}
public String option(String val) {
		String rs="";
		if(val.equals("1")) {
			rs = "0";
		}else if(val.equals("2")) {
				rs = "1";
		}else if(val.equals("3")) {
			rs = "2";
		}else if(val.equals("4")) {
			rs = "3";
		}else if(val.equals("5")) {
			rs = "4";
		}else if(val.equals("6")) {
			rs = "5";
		}else if(val.equals("7")) {
			rs = "6";
		}
		return rs;		
	}
}
