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
 * Servlet implementation class GeneratorForArray
 */
@WebServlet("/GeneratorForArray")
public class GeneratorForArray extends HttpServlet {
	private int TestCases;
	private int ArraySize;
	private String DistinctValue;
	private int MinValue;
	private int MaxValue;
	private String SizeFlag;
	private String TestCasesFlag;
	private static final long serialVersionUID = 1L;


    
	void GeneratorForRandomArray(HttpServletResponse response) throws IOException    // Complexity-O(N*T)
	{
		
		if(TestCasesFlag.equals("1"))
			response.getWriter().write((TestCases+"\n"));
	
		
		 Random rand=new Random();
	     for(int i=0;i<TestCases;i++)
	     {
	    	
	     	 if(SizeFlag.equals("1"))
	     		response.getWriter().write(ArraySize+"\n");
	     	
	    		
	    	 for(int j=0;j<ArraySize;j++)
	    	 {
	    		 if(j==(ArraySize-1))
	    			 response.getWriter().write((rand.nextInt( MaxValue - MinValue+1)+MinValue)+"");     	
	    		 else
	    			 response.getWriter().write((rand.nextInt( MaxValue - MinValue+1)+MinValue)+" ");     	
	    			
	    	 }
	   
	 		response.getWriter().write("\n");
		     
	    				 	 
	    }
	}
		
	public GeneratorForArray() {
		super();
		// TODO Auto-generated constructor stub
	}

	void GeneratorForDistinctArray(HttpServletResponse response) throws IOException
	{
		
		
		if(TestCasesFlag.equals("1"))
			response.getWriter().write((TestCases+"\n"));
	
		
		 Random rand=new Random();
	     for(int i=0;i<TestCases;i++)
	     {
	    	
	     	 if(SizeFlag.equals("1"))
	     		response.getWriter().write(ArraySize+"\n");
	     	
	     	Map<Integer,Integer> mp = new HashMap<>();

	     	while(mp.size()!=ArraySize)
	     	 {int val=rand.nextInt( MaxValue - MinValue+1)+MinValue;
	     		if(!mp.containsKey(val))
	     				{
	     			     mp.put(val,1);
	     				 if(mp.size()==(ArraySize))
	    	    			 response.getWriter().write(val+"");     	
	    	    		 else
	    	    			 response.getWriter().write(val+" ");  
	     				}
	     	}
	    	
	   
	 		response.getWriter().write("\n");
	     }
	    				 	 
	    				 
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		 TestCases=Integer.parseInt(request.getParameter("TestCases"));
		 ArraySize=Integer.parseInt(request.getParameter("ArraySize"));
		 DistinctValue=request.getParameter("DistinctValue");
		 MinValue=Integer.parseInt(request.getParameter("MinValue"));
		 MaxValue=Integer.parseInt(request.getParameter("MaxValue"));
		 SizeFlag=request.getParameter("SizeFlag");
	     TestCasesFlag=request.getParameter("TestCasesFlag");
		
	     
	     response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
	     response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
	     //response.getWriter().write();
		if(DistinctValue.equals("1"))
		{
			GeneratorForDistinctArray(response);
		}
		else
			GeneratorForRandomArray(response);
				

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
