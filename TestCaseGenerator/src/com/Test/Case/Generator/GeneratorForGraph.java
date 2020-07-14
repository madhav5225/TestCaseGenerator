package com.Test.Case.Generator;

import java.io.IOException;
import java.util.Random;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





/**
 * Servlet implementation class GeneratorForTree
 */
@WebServlet("/GeneratorForGraph")


public class GeneratorForGraph extends HttpServlet {


	private static final long serialVersionUID = 1L;
    
	private String IsWeighted;
	private int TestCases;
	private int GraphSize;
	private int GraphEdges;
	private String IsDirectedGraph;

	private int IndexFrom;
	private int MinValue;
	private int MaxValue;
	private String SizeFlag;
	private String TestCasesFlag;


	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GeneratorForGraph() {
        super();
        // TODO Auto-generated constructor stub
    }
  
     class Pair implements Comparable<Pair>{
		int x,y;
		
		Pair(int x, int y) {
			this.x = x;
			this.y = y;
		}

		
		public int compareTo(Pair o) {
			if(this.x!=o.x) return this.x-o.x;
			return this.y-o.y;
		}
		
	}
	void GeneratorForUnWeightedGraph(HttpServletResponse response) throws IOException
	{
		
		 
		
		Random rand=new Random();
		 
		
		if (TestCasesFlag.equals("1"))
			response.getWriter().write((TestCases + "\n"));
		 for(int i=1;i<=TestCases;i++)
		 {
				if (SizeFlag.equals("1"))
					response.getWriter().write(GraphSize +" "+GraphEdges+  "\n");

		  
				TreeMap<Pair,Integer>mp=new TreeMap<>();
		for(int j=1;j<=GraphEdges;j++)
		{
		int x=1;		
int y=1;
		
		if(IsDirectedGraph.equals("1"))
		{
			while(x==y)
			{
				 x=1+rand.nextInt(GraphSize);
				 y=1+rand.nextInt(GraphSize);
				 if(x==y)
					 continue;
				 if(mp.containsKey(new Pair(x,y)))
					 x=y;
				 

			}
		}
		else
		{
			while(x==y)
			{
				 x=1+rand.nextInt(GraphSize);
				 y=1+rand.nextInt(GraphSize);
				// System.out.println(x+" "+y);
				 
				 if(x==y)
					 continue;
				 
				 if(mp.containsKey(new Pair(x,y)))
					 x=y;
				 else if(mp.containsKey(new Pair(y,x)))
					 x=y;
			}
		}
			//System.out.println(x+" "+y);
			mp.put(new Pair(x,y),1);
			//System.out.println(mp.size());
			x=x+IndexFrom-1;
			y=y+IndexFrom-1;
			
			if(j==(GraphEdges) && i==TestCases)
				response.getWriter().write(x+" "+y);
				else
			response.getWriter().write(x+" "+y+"\n");
			
		}
		 }
		 }
		

	void GeneratorForWeightedGraph(HttpServletResponse response) throws IOException
	{
		
		 
		
		Random rand=new Random();
		 
		
		if (TestCasesFlag.equals("1"))
			response.getWriter().write((TestCases + "\n"));
		 for(int i=1;i<=TestCases;i++)
		 {
				if (SizeFlag.equals("1"))
					response.getWriter().write(GraphSize +" "+GraphEdges+  "\n");

		  
				TreeMap<Pair,Integer>mp=new TreeMap<>();
		for(int j=1;j<=GraphEdges;j++)
		{
		int x=1;		
int y=1;
		
		if(IsDirectedGraph.equals("1"))
		{
			while(x==y)
			{
				 x=1+rand.nextInt(GraphSize);
				 y=1+rand.nextInt(GraphSize);
				 if(x==y)
					 continue;
				 if(mp.containsKey(new Pair(x,y)))
					 x=y;
				 

			}
		}
		else
		{
			while(x==y)
			{
				 x=1+rand.nextInt(GraphSize);
				 y=1+rand.nextInt(GraphSize);
				// System.out.println(x+" "+y);
				 
				 if(x==y)
					 continue;
				 
				 if(mp.containsKey(new Pair(x,y)))
					 x=y;
				 else if(mp.containsKey(new Pair(y,x)))
					 x=y;
			}
		}
			//System.out.println(x+" "+y);
			mp.put(new Pair(x,y),1);
			//System.out.println(mp.size());
			x=x+IndexFrom-1;
			y=y+IndexFrom-1;
			
			int weight=rand.nextInt(MaxValue - MinValue + 1) + MinValue;
			if(j==(GraphEdges) && i==TestCases)
				response.getWriter().write(x+" "+y+" "+weight);
				else
			response.getWriter().write(x+" "+y+" "+weight+"\n");
			
		}
		 }
		 }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	    IsWeighted=request.getParameter("IsWeighted");
		TestCases = Integer.parseInt(request.getParameter("TestCases"));
		GraphSize = Integer.parseInt(request.getParameter("GraphSize"));
		IndexFrom = Integer.parseInt(request.getParameter("IndexFrom"));
		GraphEdges = Integer.parseInt(request.getParameter("GraphEdges"));
		IsDirectedGraph = request.getParameter("IsDirected");
		
		SizeFlag = request.getParameter("SizeFlag");
		TestCasesFlag = request.getParameter("TestCasesFlag");
		//System.out.println(TestCases);
    
		
		
		response.setContentType("text/plain"); // Set content type of the response so that jQuery knows what it can
												// expect.
		response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
		// response.getWriter().write();
		if (IsWeighted.equals("False")) {
			GeneratorForUnWeightedGraph(response);
		} else
		{
			MinValue = Integer.parseInt(request.getParameter("MinValue"));
			MaxValue = Integer.parseInt(request.getParameter("MaxValue"));
			GeneratorForWeightedGraph(response);
	
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
