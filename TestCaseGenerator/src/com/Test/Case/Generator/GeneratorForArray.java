package com.Test.Case.Generator;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GeneratorForArray
 */
@WebServlet("/GeneratorForArray")
public class GeneratorForArray extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GeneratorForArray() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		long TestCases=Long.parseLong(request.getParameter("TestCases"));
		long ArraySize=Long.parseLong(request.getParameter("ArraySize"));
		String DistinctValue=request.getParameter("DistinctValue");
		long MinValue=Long.parseLong(request.getParameter("MinValue"));
		long MaxValue=Long.parseLong(request.getParameter("MaxValue"));
		String SizeFlag=request.getParameter("SizeFlag");
		String TestCasesFlag=request.getParameter("TestCasesFlag");
		
		System.out.println(TestCases);
		System.out.println(ArraySize);
		System.out.println(DistinctValue);
		System.out.println(MinValue);
		System.out.println(MaxValue);
		System.out.println(SizeFlag);
		System.out.println(TestCasesFlag);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
