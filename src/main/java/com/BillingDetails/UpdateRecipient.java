package com.BillingDetails;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateRecipient")
public class UpdateRecipient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String orderID = request.getParameter("order_id");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		String district = request.getParameter("district");
		String pcode = request.getParameter("pcode");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		boolean isTrue;
		
		isTrue = RecipientDBUtil.UpdateRecipient(orderID, first_name, last_name, street, city, district, pcode, phone, email);
		
		if(isTrue == true) {
			
			List <Recipient> RecDetails = RecipientDBUtil.getRecipientDetails(orderID);
			request.setAttribute("RecDetails", RecDetails);
			
			request.setAttribute("order_id", orderID);
			request.setAttribute("first_name", first_name);
			request.setAttribute("last_name", last_name);
			request.setAttribute("street", street);
			request.setAttribute("city", city);
			request.setAttribute("district", district);
			request.setAttribute("pcode", pcode);
			request.setAttribute("phone", phone);
			request.setAttribute("email", email);
			
			RequestDispatcher dis = request.getRequestDispatcher("confirmedOrder.jsp");
			dis.forward(request, response);
		}
		else {

			List <Recipient> RecDetails = RecipientDBUtil.getRecipientDetails(orderID);
			request.setAttribute("RecDetails", RecDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("confirmedOrder.jsp");
			dis.forward(request, response);
		}
	}

}