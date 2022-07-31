package com.BillingDetails;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertRecipient")
public class InsertRecipient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("============================");
		
		String first_name = request.getParameter("cus_fname");
		String last_name = request.getParameter("cus_lname");
		String company_name = request.getParameter("txtcus_comname");
		String street = request.getParameter("txtcus_street");
		String city = request.getParameter("txtcus_city");
		String district = request.getParameter("txtcus_district");
		String pcode = request.getParameter("txtcus_pcode");
		String phone = request.getParameter("txtcus_phone");
		String email = request.getParameter("txtcus_email");
		String order_notes = request.getParameter("note");
		
		System.out.println("First Name : " +first_name);
		
		long order_id;
		
		order_id = RecipientDBUtil.InsertRecipient(first_name, last_name, company_name, street, city, district, pcode, phone, email, order_notes);
		
		System.out.println("Order ID : " +order_id);
		
		if(order_id != -1) {
			
			request.setAttribute("order_id", order_id);
			
			request.setAttribute("first_name", first_name);
			request.setAttribute("last_name", last_name);
			request.setAttribute("company_name", company_name);
			request.setAttribute("street", street);
			request.setAttribute("city", city);
			request.setAttribute("district", district);
			request.setAttribute("pcode", pcode);
			request.setAttribute("phone", phone);
			request.setAttribute("email", email);
			request.setAttribute("order_notes", order_notes);
			
			RequestDispatcher dis = request.getRequestDispatcher("confirmedOrder.jsp");
			dis.forward(request, response);
			
		}else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}