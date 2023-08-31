package chezhanServlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.DBUtil;
import Dao.Dao;
import Javabean.bean;

/**
 * Servlet implementation class chezhanServlet
 */
@WebServlet("/chezhanServlet")
public class chezhanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	 Dao dao = new Dao();
	    /**
	     * 方法选择
	     * @return 
	     * @throws IOException 
	     * @throws ServletException 
	     */
	    protected void service(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException
	    {
	        req.setCharacterEncoding("utf-8");
	        String method = req.getParameter("method");
	        if("login".equals(method)) {
	            login(req,resp);
	        }else if("addjiben".equals(method)) {
	            addjiben(req,resp);
	        }
	        else if("chaxun".equals(method)) {
	            chaxun(req,resp);
	        }
	        else if("chaxunzm".equals(method)) {
	            chaxunzm(req,resp);
	        }
	        else if("chaxunqishi".equals(method)) {
	            chaxunqishi(req,resp);
	        }
	        }
	    
	private void chaxunqishi(HttpServletRequest req, HttpServletResponse resp) throws  ServletException, IOException{
			// TODO Auto-generated method stub
		String qidian = req.getParameter("qidian");
		String zhongdian = req.getParameter("zhongdian");
		int qi;
		int zhong;
		int jingguochezhanshu;
		
		String xianluhao =dao.searchzhandian(qidian);
		qi=dao.searchqidian(qidian);
		zhong=dao.searchzhongdian(zhongdian);
		jingguochezhanshu=zhong-qi;
		List<bean> list1 = dao.getallqishi(qi,zhong,xianluhao);
		req.setAttribute("list1", list1);
		req.setAttribute("jingguochezhanshu", jingguochezhanshu);
		 req.getRequestDispatcher("/xlxianshi.jsp").forward(req, resp);
		}

	private void chaxunzm(HttpServletRequest req, HttpServletResponse resp)throws  ServletException, IOException {
			// TODO Auto-generated method stub
		bean be=new bean();
		be=null;
		String zhanming = req.getParameter("zhanming");
		
		
         List<bean> list1 = dao.getallzhanming(zhanming);
         req.setAttribute("list1", list1);
		 req.getRequestDispatcher("/chaxun.jsp").forward(req, resp);
		}

	private void chaxun(HttpServletRequest req, HttpServletResponse resp) throws  ServletException, IOException
	{bean be=new bean();
		 String xianluhao = req.getParameter("spid");
		 dao.searchxianlu(xianluhao);
		 be=dao.searchxianlu(xianluhao);
		  List<bean> list = dao.getallxianluhao(xianluhao);
		  req.setAttribute("list", list);
			 req.setAttribute("bean", be);
	        req.getRequestDispatcher("chaxun.jsp").forward(req, resp);
//		 req.getRequestDispatcher("/chaxun.jsp").forward(req, resp);
	}
	private void addjiben(HttpServletRequest req, HttpServletResponse resp) {
			// TODO Auto-generated method stub
			
		}

	private void login(HttpServletRequest req, HttpServletResponse resp) {
			// TODO Auto-generated method stub
			
		}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html;charset=utf-8");
		 
	         
	        
	 
	        // 将查询出来的用户信息保存到session对象中
	        HttpSession session = request.getSession();
	        
	
	}

}
