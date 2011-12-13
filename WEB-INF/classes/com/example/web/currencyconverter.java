package com.example.web;
import com.example.model.*;
import java.io.*;
import javax.servlet.*;
import java.io.InputStream;
import javax.servlet.http.*;
import java.io.InputStreamReader;
import java.io.BufferedReader;
import java.io.IOException;
import java.net.URL;
import java.lang.*;
import java.util.*;
import java.math.*;

public class currencyconverter extends HttpServlet{

        public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException, ServletException{
			String amount = request.getParameter("amount");
           	String amount2 = request.getParameter("amount2");
			String amount3 = request.getParameter("amount3");
			Integer posotita = Integer.parseInt(amount);
			Integer posotita2 = Integer.parseInt(amount2);
			Integer posotita3 = Integer.parseInt(amount3);
			
			HttpSession session = request.getSession();
			
			if(session.isNew()){
				request.setAttribute("sessionVal","this is a new session");
			}else{
				request.setAttribute("sessionVal","Welcome Back!");
			}
			
			double total = ((posotita*18.50)+(posotita2*6.95)+(posotita3*1.29));
			session.setAttribute("totalVal",total);

			request.setAttribute("currency",total);
			request.setAttribute("from",amount);
			request.setAttribute("from2",amount2);
			request.setAttribute("from3",amount3);

			RequestDispatcher view = request.getRequestDispatcher("index.jsp");
			view.forward(request,response);
			
}

}
