package com.Test.Case.Generator;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GeneratorForTree
 */
@WebServlet("/GeneratorForTree")
public class GeneratorForTree extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
	private String IsWeighted;
	private int TestCases;
	private int TreeSize;
	private int IndexFrom;
	private int MinValue;
	private int MaxValue;
	private String SizeFlag;
	private String TestCasesFlag;
	int parent[];
	 int size[];

	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GeneratorForTree() {
        super();
        // TODO Auto-generated constructor stub
    }

    int find(int x)
	{
		if(parent[x]==x)
		return x;
		parent[x]=find(parent[x]);
		return parent[x];
	}
    void merge(int x ,int y)
	{
    	int r1=find(x);
    	int r2=find(y);
		if(size[r1]<size[r2])
		{
			parent[r1]=r2;
			size[r2]+=size[r1];
			
		}
		
		else{
			
			parent[r2]=r1;
			size[r1]+=size[r2];
			
		}
	}
	void GeneratorForUnWeightedTree(HttpServletResponse response) throws IOException
	{
		
		 
		
		Random rand=new Random();
		 
		
		if (TestCasesFlag.equals("1"))
			response.getWriter().write((TestCases + "\n"));
		 for(int i=1;i<=TestCases;i++)
		 {
				if (SizeFlag.equals("1"))
					response.getWriter().write(TreeSize + "\n");

		  for(int j=1;j<=TreeSize;j++)
		  {
		  	parent[j]=j;
		  	size[j]=1;
		  }
		
		for(int j=1;j<=TreeSize-1;j++)
		{
		int x=1+rand.nextInt(TreeSize);
		int y=1+rand.nextInt(TreeSize);

			while(find(x)==find(y))
			{
				 x=1+rand.nextInt(TreeSize);
				 y=1+rand.nextInt(TreeSize);

			}
			merge(x,y);
			x=x+IndexFrom-1;
			y=y+IndexFrom-1;
			
			if(j==(TreeSize-1) && i==TestCases)
				response.getWriter().write(x+" "+y);
				else
			response.getWriter().write(x+" "+y+"\n");
			
		}
		 }
		 }
		

	void GeneratorForWeightedTree(HttpServletResponse response) throws IOException
	{
Random rand=new Random();
		 
		
		if (TestCasesFlag.equals("1"))
			response.getWriter().write((TestCases + "\n"));
		 for(int i=1;i<=TestCases;i++)
		 {
				if (SizeFlag.equals("1"))
					response.getWriter().write(TreeSize + "\n");

		  for(int j=1;j<=TreeSize;j++)
		  {
		  	parent[j]=j;
		  	size[j]=1;
		  }
		
		for(int j=1;j<=TreeSize-1;j++)
		{
		int x=1+rand.nextInt(TreeSize);
		int y=1+rand.nextInt(TreeSize);

			while(find(x)==find(y))
			{
				 x=1+rand.nextInt(TreeSize);
				 y=1+rand.nextInt(TreeSize);

			}
			merge(x,y);
			x=x+IndexFrom-1;
			y=y+IndexFrom-1;
			int weight=rand.nextInt(MaxValue - MinValue + 1) + MinValue;
			
			if(j==(TreeSize-1) && i==TestCases)
				response.getWriter().write(x+" "+y+" "+weight);
				else
			response.getWriter().write(x+" "+y+" "+weight+"\n");
			
		}
		 }
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	    IsWeighted=request.getParameter("IsWeighted");
		TestCases = Integer.parseInt(request.getParameter("TestCases"));
		TreeSize = Integer.parseInt(request.getParameter("TreeSize"));
		IndexFrom = Integer.parseInt(request.getParameter("IndexFrom"));
		
		SizeFlag = request.getParameter("SizeFlag");
		TestCasesFlag = request.getParameter("TestCasesFlag");
		System.out.println(TestCases);
    
		
		 parent=new int[TreeSize+1];
		   size=new int[TreeSize+1];
		response.setContentType("text/plain"); // Set content type of the response so that jQuery knows what it can
												// expect.
		response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
		// response.getWriter().write();
		if (IsWeighted.equals("False")) {
			GeneratorForUnWeightedTree(response);
		} else
		{
			MinValue = Integer.parseInt(request.getParameter("MinValue"));
			MaxValue = Integer.parseInt(request.getParameter("MaxValue"));
			GeneratorForWeightedTree(response);
	
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
