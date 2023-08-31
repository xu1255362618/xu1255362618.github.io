package fangchanServlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Dao;
import Javabean.Cou;
import Javabean.Jibenxinxi;
import Javabean.Stu;
import Javabean.Teacher;




@WebServlet("/fangchanServlet")
public class fangchanServlet extends HttpServlet{

    /**
     * 特有id号
     */
    private static final long serialVersionUID = 1L;
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
        }else if("addtea".equals(method)) {
            addtea(req,resp);
        }else if("addstu".equals(method)) {
            addstu(req,resp);
        }else if("addcou".equals(method)) {
            addcou(req,resp);
        }else if("updatetea".equals(method)) {
            updatetea(req,resp);
        }else if("updatestu".equals(method)) {
            updatestu(req,resp);
        }else if("liulankecheng".equals(method)) {
            liulankecheng(req,resp);
        }else if("chakan".equals(method)) {
            chakan(req,resp);
        }else if("xuanke".equals(method)) {
            xuanke(req,resp);
        }else if("liulankecheng1".equals(method)) {
            liulankecheng1(req,resp);
        }else if("liulanstu".equals(method)) {
            liulanstu(req,resp);
        }
    }
  
    private void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String password=req.getParameter("password");
        int pid=dao.searchPid(username,password);
        System.out.println(pid);
        if(pid==1) {
            String teaname=dao.searchteaname(username);
            System.out.println(teaname);
            req.getSession().setAttribute("username", username);
            req.getSession().setAttribute("teaname", teaname);
        }
        if(pid==2) {
            req.getSession().setAttribute("username1", username);
        }
        req.setAttribute("pid", pid);
        req.getRequestDispatcher("houtai.jsp").forward(req, resp);
        }
    private void addtea(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String tpid = req.getParameter("tpid");
        String teaname = req.getParameter("teaname");
        
        String txueyuan = req.getParameter("txueyuan");
        String zhicheng = req.getParameter("zhicheng");
        int pid=1;
        String password = "123456";
        Teacher teacher=new Teacher(tpid,teaname,txueyuan,zhicheng);
        if(dao.addtea(teacher)&&dao.adduser(tpid,password,pid)) {
            req.setAttribute("teacher",teacher);
            req.setAttribute("message","添加成功" );
            req.getRequestDispatcher("addtea.jsp").forward(req, resp);
        }else {
            req.setAttribute("message","老师姓名重复，请重新输入" );
            req.getRequestDispatcher("addtea.jsp").forward(req, resp);
        }
    }
    
    private void addstu(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String spid = req.getParameter("spid");
        String stuname = req.getParameter("stuname");
        String sex = req.getParameter("sex");
        String banji = req.getParameter("banji");
        String ye = req.getParameter("ye");
        String user = req.getParameter("user");
        Stu stu=new Stu(spid,stuname,sex,banji,ye,user);
        int pid=2;
        String password="123456";
        if(dao.addstu(stu)&&dao.adduser(spid, password, pid)) {
            req.setAttribute("stu",stu);
            req.setAttribute("message","添加成功" );
            req.getRequestDispatcher("addstu.jsp").forward(req, resp);
        }else {
            req.setAttribute("message","姓名重复，请重新输入" );
            req.getRequestDispatcher("addstu.jsp").forward(req, resp);
        }
    }

    private void addcou(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String jiaoshi=(String) req.getSession().getAttribute("teaname");
        String cpid = req.getParameter("cpid");
        String cname = req.getParameter("cname");
        String num = req.getParameter("num");
        String year = req.getParameter("year");
        String area = req.getParameter("area");
        String sales= req.getParameter("sales");
        String status = req.getParameter("status");
        //int num = Integer.parseInt(req.getParameter("num"));
        //int snum=0;
        System.out.println(jiaoshi);
        Cou cou=new Cou( cpid, cname, num,jiaoshi,year, area, sales, status);
        if(dao.addcou(cou)) {
            req.setAttribute("cou",cou);
            req.setAttribute("message","添加成功" );
            req.getRequestDispatcher("addcourse.jsp").forward(req, resp);
        }else {
            req.setAttribute("message","课程信息重复，请重新输入" );
            req.getRequestDispatcher("addcourse.jsp").forward(req, resp);
        }
    }
    private void updatetea(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String tpid=(String) req.getSession().getAttribute("username");
        String teaname = req.getParameter("teaname");
        
        String txueyuan = req.getParameter("txueyuan");
        String zhicheng = req.getParameter("zhicheng");
        Teacher teacher=new Teacher(tpid,teaname,txueyuan,zhicheng);
        if(dao.updatetea(teacher)) {
            req.setAttribute("message","修改成功" );
            req.getRequestDispatcher("updatet.jsp").forward(req, resp);    
        } else {
            req.setAttribute("message","修改失败" );
            req.getRequestDispatcher("updatet.jsp").forward(req, resp);
        }
    }
    
    private void updatestu(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String spid =(String) req.getSession().getAttribute("username1");
        String stuname = req.getParameter("stuname");
        String sex = req.getParameter("sex");
        String banji = req.getParameter("banji");
        String ye = req.getParameter("ye");
        String user = req.getParameter("user");
        Stu stu=new Stu(spid,stuname,sex,banji,ye,user);
        if(dao.updatestu(stu)) {
            req.setAttribute("message","修改成功" );
            req.getRequestDispatcher("updates.jsp").forward(req, resp);    
        } else {
            req.setAttribute("message","修改失败" );
            req.getRequestDispatcher("updates.jsp").forward(req, resp);
        }
    }
    
    
    private void liulankecheng(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        List<Cou> cous = dao.liulankecheng();
        req.setAttribute("cous", cous);
        req.getRequestDispatcher("liulankecheng.jsp").forward(req, resp);
    
    }
    
    private void chakan(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        int id = Integer.parseInt(req.getParameter("id"));
        Cou cou=dao.searchByid(id);
        req.getSession().setAttribute("id", id);
        req.setAttribute("cou", cou);
        req.getRequestDispatcher("chakankecheng.jsp").forward(req, resp);
    }
    
    private void xuanke(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String spid =(String) req.getSession().getAttribute("username1");
        String cpid = req.getParameter("cpid");
        int snum = Integer.parseInt(req.getParameter("snum"))+1;
        String jiaoshi = req.getParameter("jiaoshi");
        int id =(int) req.getSession().getAttribute("id");
        String tpid=dao.searchtpid(jiaoshi);
        Stu stu = dao.searchstu(spid);
        System.out.println(id);
        if(dao.updatecou(id,snum)&&dao.addjiben(cpid,tpid,spid,stu)) {
            req.setAttribute("message","选课成功" );
            req.getRequestDispatcher("sucess.jsp").forward(req, resp);
        } else {
            req.setAttribute("message","选课失败" );
            req.getRequestDispatcher("sucess.jsp").forward(req, resp);
        }
    }
    
    private void liulankecheng1(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        List<Cou> cous = dao.liulankecheng1();
        req.setAttribute("cous", cous);
        req.getRequestDispatcher("liulankecheng1.jsp").forward(req, resp);
    
    }
    
    private void liulanstu(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String tpid=(String) req.getSession().getAttribute("username");
        List<Jibenxinxi> jibens = dao.searchstuinfo(tpid);
        req.setAttribute("jibens",jibens);
        req.getRequestDispatcher("liulanstu.jsp").forward(req, resp);
    }
    
}