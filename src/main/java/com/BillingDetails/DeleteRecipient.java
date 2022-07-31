package com.BillingDetails;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteRecipient")
public class DeleteRecipient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String orderID = request.getParameter("order_id");
		
		System.out.print("Deleted Order : "+orderID);
		
		boolean isTrue;
		
		isTrue = RecipientDBUtil.DeleteRecipient(orderID);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("checkout.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List <Recipient> RecDetails = RecipientDBUtil.getRecipientDetails(orderID);
			request.setAttribute("RecDetails", RecDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("confirmedOrder.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}