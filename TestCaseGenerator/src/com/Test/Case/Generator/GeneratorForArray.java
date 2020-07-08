package com.Test.Case.Generator;

import java.io.IOException;
import java.util.Random;

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
	private long TestCases;
	private long ArraySize;
	private String DistinctValue;
	private long MinValue;
	private long MaxValue;
	private String SizeFlag;
	private String TestCasesFlag;
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GeneratorForArray() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	public String GeneratorForRandomArray() {
		String FinalData = "";
		if (TestCasesFlag.equals("1"))
			FinalData += (TestCases + "\n");

		Random rand = new Random();
		for (int i = 0; i < TestCases; i++) {

			if (SizeFlag.equals("1"))
				FinalData += (ArraySize + "\n");
			for (int j = 0; j < ArraySize; j++) {
				if (j == (ArraySize - 1))
					FinalData += "" + (MinValue + (Math.abs(rand.nextLong()) % (MaxValue - MinValue + 1)));
				else
					FinalData += "" + (MinValue + (Math.abs(rand.nextLong()) % (MaxValue - MinValue + 1))) + " ";

			}

			FinalData += ("\n");

		}

		return FinalData;
	}

	public String GeneratorForDistinctArray() {
		String FinalData = "";
	
		return FinalData;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		TestCases = Long.parseLong(request.getParameter("TestCases"));
		ArraySize = Long.parseLong(request.getParameter("ArraySize"));
		DistinctValue = request.getParameter("DistinctValue");
		MinValue = Long.parseLong(request.getParameter("MinValue"));
		MaxValue = Long.parseLong(request.getParameter("MaxValue"));
		SizeFlag = request.getParameter("SizeFlag");
		TestCasesFlag = request.getParameter("TestCasesFlag");

		String FinalData;
		if (DistinctValue.equals("1")) {
			FinalData = GeneratorForDistinctArray();
		} else
			FinalData = GeneratorForRandomArray();

		response.setContentType("text/plain"); // Set content type of the response so that jQuery knows what it can											// expect.
		response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
		response.getWriter().write(FinalData);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
