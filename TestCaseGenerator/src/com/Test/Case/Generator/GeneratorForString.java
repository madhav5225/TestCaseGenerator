package com.Test.Case.Generator;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GeneratorForString
 */
@WebServlet("/GeneratorForString")
public class GeneratorForString extends HttpServlet {
	/*
	TestCasesForString
	StringSize
	NumberOfStringsPerT
	DistinctValueForString
	StringChars
	StringExtraChars
	SizeFlagForString
	TestCasesFlagForString
	*/ 
	private int TestCases;
	private int StringSize;
	private int NumberOfStringsPerT;
	private String DistinctValue;
	private String StringChars;
	private String StringExtraChars;
	private String SizeFlag;
	private String TestCasesFlag;
	private static final long serialVersionUID = 1L;

	void GeneratorForRandomString(HttpServletResponse response) throws IOException // Complexity-O(N*T*NumberofStringsPerT)
	{
String CharOfString="";
int DataSize=0,j=0;
if(StringChars.equals("1"))
{
	for(char c='A';c<='Z';c++)
		{
		CharOfString+=c;
		
		if(j<StringExtraChars.length())
		CharOfString+=StringExtraChars.charAt(j++);
		}
		
	DataSize+=26;
}
else if(StringChars.equals("2"))
{
	DataSize+=26;
	for(char c='a';c<='z';c++)
	{
		CharOfString+=c;
		
		if(j<StringExtraChars.length())
		CharOfString+=StringExtraChars.charAt(j++);
		}
	
}
if(StringChars.equals("3"))
{
	for(char c='A';c<='Z';c++)
	{
		CharOfString+=c;
		
		if(j<StringExtraChars.length())
		CharOfString+=StringExtraChars.charAt(j++);
		}
	for(char c='a';c<='z';c++)
	{
		CharOfString+=c;
		
		if(j<StringExtraChars.length())
		CharOfString+=StringExtraChars.charAt(j++);
		}
	DataSize+=52;
}
for(;j<StringExtraChars.length();j++)
{
	
	CharOfString+=StringExtraChars.charAt(j);
	}

	DataSize+=StringExtraChars.length();
	


		if (TestCasesFlag.equals("1"))
			response.getWriter().write((TestCases + "\n"));

		Random rand = new Random();
		for (int i = 0; i < TestCases; i++) {

			if (SizeFlag.equals("1"))
				response.getWriter().write(StringSize + "\n");

			for(int k=0;k<NumberOfStringsPerT;k++)
			{
			for ( j = 0; j < StringSize; j++) {
					response.getWriter().write(CharOfString.charAt(rand.nextInt(DataSize )));
			

			}

			response.getWriter().write("\n");
			}
		}
	}

	void GeneratorForDistinctString(HttpServletResponse response) throws IOException {
		String CharOfString="";
		int DataSize=0,j=0;
		if(StringChars.equals("1"))
		{
			for(char c='A';c<='Z';c++)
				{
				CharOfString+=c;
				
				if(j<StringExtraChars.length())
				CharOfString+=StringExtraChars.charAt(j++);
				}
				
			DataSize+=26;
		}
		else if(StringChars.equals("2"))
		{
			DataSize+=26;
			for(char c='a';c<='z';c++)
			{
				CharOfString+=c;
				
				if(j<StringExtraChars.length())
				CharOfString+=StringExtraChars.charAt(j++);
				}
			
		}
		if(StringChars.equals("3"))
		{
			for(char c='A';c<='Z';c++)
			{
				CharOfString+=c;
				
				if(j<StringExtraChars.length())
				CharOfString+=StringExtraChars.charAt(j++);
				}
			for(char c='a';c<='z';c++)
			{
				CharOfString+=c;
				
				if(j<StringExtraChars.length())
				CharOfString+=StringExtraChars.charAt(j++);
				}
			DataSize+=52;
		}
		for(;j<StringExtraChars.length();j++)
		{
			
			CharOfString+=StringExtraChars.charAt(j);
			}

			DataSize+=StringExtraChars.length();
			


				if (TestCasesFlag.equals("1"))
					response.getWriter().write((TestCases + "\n"));

				Random rand = new Random();
				for (int i = 0; i < TestCases; i++) {

					if (SizeFlag.equals("1"))
						response.getWriter().write(StringSize + "\n");

					for(int k=0;k<NumberOfStringsPerT;k++)
					{
						Map<Character,Integer>mp=new HashMap<>();
						while (mp.size() != StringSize) {
							char val = CharOfString.charAt(rand.nextInt(DataSize ));
							if (!mp.containsKey(val)) {
								mp.put(val, 1);
								response.getWriter().write(val);
							}
						}

					

					response.getWriter().write("\n");
					}
				}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		TestCases = Integer.parseInt(request.getParameter("TestCases"));
		StringSize = Integer.parseInt(request.getParameter("StringSize"));
		NumberOfStringsPerT = Integer.parseInt(request.getParameter("NumberOfStringsPerT"));
		DistinctValue = request.getParameter("DistinctValue");
		StringChars= (request.getParameter("StringChars"));
		StringExtraChars = (request.getParameter("StringExtraChars"));
		SizeFlag = request.getParameter("SizeFlag");
		TestCasesFlag = request.getParameter("TestCasesFlag");
		
		response.setContentType("text/plain"); // Set content type of the response so that jQuery knows what it can
												// expect.
		response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
		
		if (DistinctValue.equals("1")) {
			GeneratorForDistinctString(response);
		} else
			GeneratorForRandomString(response);

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
