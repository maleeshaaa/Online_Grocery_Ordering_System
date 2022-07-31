package com.BillingDetails;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RecipientDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet res = null;
	
	//Validation
	public static boolean validate(String username, String password) {
		
		try {
			
			//DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//validate username and password
			String sql = "select * from billingdetails.customer_login where username = '"+username+"' and password = '"+password+"'";
			res = stmt.executeQuery(sql);
			
			if(res.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;		
	}
	
	public static List <LoginRecipient> getLog_Recipient(String username) {
		
		ArrayList <LoginRecipient> Log_Recipient = new ArrayList<>();
		
		try {
			
			//DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from billingdetails.customer_login where username = '"+username+"'";
			res = stmt.executeQuery(sql);
			
			while(res.next()) {
				int login_id = res.getInt(1);
				String userName = res.getString(2);
				String password = res.getString(3);
				
				LoginRecipient log_recOb = new LoginRecipient(login_id, userName, password);
				Log_Recipient.add(log_recOb);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return Log_Recipient;	
	}

	//Insert
	public static int InsertRecipient(String first_name, String last_name, String company_name, String street, String city, String district, String pcode, String phone, String email, String order_notes) {	
			
		int generatedKey = 0;
					
		try{

			//DB connection
			con= DBConnect.getConnection();
			stmt = con.createStatement();
						
			//inserting values to the table
			String sql = "insert into billingdetails.order values(0 , '"+first_name+"' , '"+last_name+"' , '"+company_name+"' , '"+street+"' , '"+city+"', '"+district+"' , '"+pcode+"' ,'"+phone+"', '"+email+"' , '"+order_notes+"')";
			
			PreparedStatement ps = con.prepareStatement(sql,
			        Statement.RETURN_GENERATED_KEYS);
			 
			ps.execute();
			
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
			    generatedKey = rs.getInt(1);
			}
			 
			System.out.println("Inserted record ID : " + generatedKey);
						
		}catch(Exception e) {
			e.printStackTrace();
		}
					
		return generatedKey;			
	}
	
	//Update
	public static boolean UpdateRecipient(String order_id, String first_name, String last_name, String street, String city, String district, String pcode, String phone, String email) {
		
		try {
    		
			//DB connection
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		
    		//update inserted values
    		String sql = "update billingdetails.order set Fname = '"+first_name+"', Lname = '"+last_name+"', Address = '"+street+"', City = '"+city+"', District = '"+district+"', PostalCode = '"+pcode+"', Phone = '"+phone+"', Email = '"+email+"' where OrderID = '"+order_id+"'";
    		int res = stmt.executeUpdate(sql);
    		
    		if(res > 0) {
    			isSuccess = true;
    		}else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
	//Retrieve Data
	public static List <Recipient> getRecipientDetails(String orderID) {
    	
	    int convertedID = Integer.parseInt(orderID);
	    	
	    ArrayList <Recipient> Rec = new ArrayList<>();
	    	
	    try {
	    	
	    	//DB connection
	    	con = DBConnect.getConnection();
	    	stmt = con.createStatement();
	    	
	    	String sql = "select * from billingdetails.order where OrderID = '"+convertedID+"'";
	    	res = stmt.executeQuery(sql);
	    		
	    	while(res.next()) {
				int login_id = res.getInt(1);
				String userName = res.getString(2);
				String password = res.getString(3);
	    		int order_id = res.getInt(4);
				String first_name = res.getString(5);
				String last_name = res.getString(6);
				String company_name = res.getString(7);
				String street = res.getString(8);
				String city = res.getString(9);
				String district = res.getString(10);
				String pcode = res.getString(11);
				String phone = res.getString(12);
				String email = res.getString(13);
				String order_notes = res.getString(14);
	    			
	    		Recipient RecOb = new Recipient(login_id, userName, password, order_id, first_name, last_name, company_name, street, city, district, pcode, phone, email, order_notes);
	    		Rec.add(RecOb);
	    	}
	    		
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }	
	    
	    return Rec;	
	}

	//Delete
	public static boolean DeleteRecipient(String orderID) {
    	
    	int convId = Integer.parseInt(orderID);
    	
    	try {
    		
    		//DB connection
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		
    		String sql = "delete from billingdetails.order where OrderID = '"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if(r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
}