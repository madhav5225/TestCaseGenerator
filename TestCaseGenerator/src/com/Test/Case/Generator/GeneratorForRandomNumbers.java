package com.Test.Case.Generator;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GeneratorForRandomNumbers
 */
@WebServlet("/GeneratorForRandomNumbers")
public class GeneratorForRandomNumbers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GeneratorForRandomNumbers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long TestCases=Long.parseLong(request.getParameter("TestCases"));
		long MinValue=Long.parseLong(request.getParameter("MinValue"));
		long MaxValue=Long.parseLong(request.getParameter("MaxValue"));
		String TestCaseFlag=(request.getParameter("TestCaseFlag"));
		
		 String FinalData="";
	     Random rand=new Random();
	     
	     if(TestCaseFlag.equals("1"))
	    	 FinalData+=(TestCases+"\n");
	     
	     for(int i=0;i<TestCases;i++)
	     {
	    	 FinalData+=""+ (MinValue+(Math.abs(rand.nextLong())%(MaxValue-MinValue+1)))+"\n";
	    	 
	     }
	 
	     
	       response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
	     response.setCharacterEncoding("UTF-8"); // You want world domination, huh? 
	     response.getWriter().write(FinalData);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
