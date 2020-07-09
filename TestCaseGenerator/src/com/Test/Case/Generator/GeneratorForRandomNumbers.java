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

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int TestCases = Integer.parseInt(request.getParameter("TestCases"));
		int MinValue = Integer.parseInt(request.getParameter("MinValue"));
		int MaxValue = Integer.parseInt(request.getParameter("MaxValue"));
		String TestCaseFlag = (request.getParameter("TestCaseFlag"));

		// System.out.println(MinValue);
		Random rand = new Random();

		response.setContentType("text/plain"); // Set content type of the response so that jQuery knows what it can
												// expect.
		response.setCharacterEncoding("UTF-8"); // You want world domination, huh?

		if (TestCaseFlag.equals("1")) {

			response.getWriter().write((TestCases + "\n"));

		}
		for (int i = 0; i < TestCases; i++) {

			response.getWriter().write((rand.nextInt(MaxValue - MinValue + 1) + MinValue) + "\n");
		}

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
