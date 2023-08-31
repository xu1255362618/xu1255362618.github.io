package 人口普查系统;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class servlet
 */
@WebServlet("/servlet")
public class servlet extends HttpServlet {
    Dao dao=new Dao();
    private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servlet() {
        super();
        // TODO Auto-generated constructor stub
    } 

      
    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        int id = Integer.parseInt(request.getParameter("id"));
        String hubie = request.getParameter("hubie");
        String livetype = request.getParameter("livetype");
        int area= Integer.parseInt(request.getParameter("area"));
        int roomnum = Integer.parseInt(request.getParameter("roomnum"));
        String name = request.getParameter("name");
        String idcard = request.getParameter("idcard");
        String sex = request.getParameter("sex");
        String nation = request.getParameter("nation");
        String education= request.getParameter("education");
        Bean bean=new Bean(id,hubie,livetype,area,roomnum,name,idcard,sex,nation,education);
        dao.update(bean);
        request.setAttribute("message", "修改成功");
        request.getRequestDispatcher("servlet?method=list").forward(request, response);
    }

    private void list(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        List<Bean> list = dao.list();
        request.setAttribute("list", list);
        request.getRequestDispatcher("list.jsp").forward(request,response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws Exception, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("UTF-8");
        int id=Integer.parseInt(request.getParameter("id"));
        dao.delete(id); //进行数据库的删除操作
        request.setAttribute("message", "删除成功");
        request.getRequestDispatcher("servlet?method=list").forward(request, response);
    }

   
    
    private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        int id = Integer.parseInt(request.getParameter("id"));
        String hubie = request.getParameter("hubie");
        String livetype = request.getParameter("livetype");
        int area= Integer.parseInt(request.getParameter("area"));
        int roomnum = Integer.parseInt(request.getParameter("roomnum"));
        String name = request.getParameter("name");
        String idcard =  request.getParameter("idcard");
        String sex = request.getParameter("sex");
        String nation = request.getParameter("nation");
        String education= request.getParameter("education");
        Bean bean=new Bean(id,hubie,livetype,area,roomnum, name, idcard, sex,nation, education);
 
        if(dao.insert(bean)) {
            request.setAttribute("message", "添加成功");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
    
    
    
   
    private void search(HttpServletRequest request, HttpServletResponse response) throws Exception, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("UTF-8");
        String cxfs = request.getParameter("cxfs");    
        System.out.print("cxfs");
        request.setAttribute("search", "查询成功");
        request.getRequestDispatcher("list.jsp").forward(request, response);
    }
    

    
    
    
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        String method=request.getParameter("method");
        if("insert".equals(method)) {
            insert(request,response);           
        }
        else if("delete".equals(method)) {
            try {
                delete(request,response);
            } catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            
        }
        else if("update".equals(method)) {
            update(request,response);
        }
        else if("list".equals(method)) {
            try {
                list(request,response);
            } catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }}
       else if("search".equals(method)) {
                try {
                    search(request,response);
                } catch (Exception e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
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