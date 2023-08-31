package jinding;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import jinding.Bean;
import jinding.Dao;
import jinding.User;
/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Dao dao = new Dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}
	 protected void service(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException
	    {
	        req.setCharacterEncoding("utf-8");
	        String method = req.getParameter("method");
	        if("login".equals(method)) {
	            login(req,resp);
	        }else if("add".equals(method)) {
	            add(req,resp);
	        }
	        else if("list".equals(method)) {
	            
					list(req,resp);
				
	        }
	        }
	        private void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	            // TODO Auto-generated method stub
	            req.setCharacterEncoding("utf-8");
	            String username = req.getParameter("username");
	            String password=req.getParameter("password");
	            int pid=dao.searchPid(username,password);
	            System.out.println(pid);
	            if(pid==0) {
	                /*String teaname=dao.search(username);
	                System.out.println(teaname);*/
	                req.getSession().setAttribute("username", username);
	               // req.getSession().setAttribute("teaname", teaname);
	            }
	            if(pid==1) {
	                String teaname=dao.search(username);
	                System.out.println(teaname);
	                req.getSession().setAttribute("username", username);
	                req.getSession().setAttribute("teaname", teaname);
	            }
	            if(pid==2) {
	            	String teaname=dao.search(username);
	                req.getSession().setAttribute("username", username);
	                req.getSession().setAttribute("teaname", teaname);
	            }
	            if(pid==3) {
	            	String teaname=dao.search(username);
	                req.getSession().setAttribute("username", username);
	                req.getSession().setAttribute("teaname", teaname);
	            }
	            if(pid==4) {
	            	String teaname=dao.search(username);
	                req.getSession().setAttribute("username", username);
	                req.getSession().setAttribute("teaname", teaname);
	            }
	            else {
	                req.setAttribute("message","用户名或密码错误" );
	                req.getRequestDispatcher("index.jsp").forward(req, resp);
	            }
	            req.setAttribute("pid", pid);
	            req.getRequestDispatcher("index.jsp").forward(req, resp);
	            }
	        private void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	            req.setCharacterEncoding("utf-8");
	            String name = req.getParameter("name");
	            String sex = req.getParameter("sex");
	            String age = req.getParameter("age");
	            String phone = req.getParameter("phone");
	            String possion = req.getParameter("possion");
	            String username = req.getParameter("username");
	            int  pid= Integer.parseInt(req.getParameter("pid"));
	            String password = req.getParameter("password");
	            User user=new User(name,sex,age,phone,possion,username,pid,password);
	            if(dao.add(user)) {
	            dao.adduser(user);
	            	System.out.print(user.getPid());
	            	
	                req.setAttribute("user",user);
	                req.setAttribute("message","添加成功" );
	                req.getRequestDispatcher("index.jsp").forward(req, resp);
	            }else {
	                req.setAttribute("message","姓名重复，请重新输入" );
	                req.getRequestDispatcher("index.jsp").forward(req, resp);
	            }
	        }
	        private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	            // TODO Auto-generated method stub
	            request.setCharacterEncoding("utf-8");
	            List<User> list = dao.list();
	            request.setAttribute("list", list);
	            request.getRequestDispatcher("list.jsp").forward(request,response);
	        }
}
