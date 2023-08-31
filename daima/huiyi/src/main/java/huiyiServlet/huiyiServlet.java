//��2005-1�� ���´� 20204091 2021 12 9
package huiyiServlet;
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




@WebServlet("/huiyiServlet")
public class huiyiServlet extends HttpServlet{

    /**
     * ����id��
     */
    private static final long serialVersionUID = 1L;
    Dao dao = new Dao();
    /**
     * ����ѡ��
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
        else if("delete".equals(method)) {
            delete(req,resp);
        }
        else if("gerenxinxi".equals(method)) {
            delete(req,resp);
        }
    }
    private void gerenxinxi(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        List<Stu> cous = dao.gerenxinxi();
        req.setAttribute("cous", cous);
        req.getRequestDispatcher("gerenxinxi.jsp").forward(req, resp);
    
    }
    private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("huiyiid");
        if(dao.delete(username)) {
            req.setAttribute("message","ɾ���ɹ�" );
            req.getRequestDispatcher("delete.jsp").forward(req, resp);    
        } else {
            req.setAttribute("message","ɾ��ʧ��" );
            req.getRequestDispatcher("delete.jsp").forward(req, resp);
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
        String sex = req.getParameter("sex");
        String txueyuan = req.getParameter("txueyuan");
        String zhicheng = req.getParameter("zhicheng");
        String renshu = req.getParameter("renshu");
       
        Teacher teacher=new Teacher(tpid,teaname,sex,txueyuan,zhicheng,renshu);
        if(dao.addtea(teacher)) {
            req.setAttribute("teacher",teacher);
            req.setAttribute("message","��ӳɹ�" );
            req.getRequestDispatcher("addtea.jsp").forward(req, resp);
        }else {
            req.setAttribute("message","��ʦ�����ظ�������������" );
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
        String weizhi = req.getParameter("weizhi");
        Stu stu=new Stu(spid,stuname,sex,banji,ye,weizhi);
        int pid=2;
        String password="123456";
        if(dao.addstu(stu)&&dao.adduser(spid, password, pid)) {
            req.setAttribute("stu",stu);
            req.setAttribute("message","��ӳɹ�" );
            req.getRequestDispatcher("addstu.jsp").forward(req, resp);
        }else {
            req.setAttribute("message","ѧ�������ظ�������������" );
            req.getRequestDispatcher("addstu.jsp").forward(req, resp);
        }
    }

    private void addcou(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        
        String cpid = req.getParameter("cpid");
        String cname = req.getParameter("cname");
        String num = req.getParameter("num");
        String  snum=req.getParameter("snum");
        String  jiaoshi=req.getParameter("jiaoshi");
        String  renshu=req.getParameter("renshu");
        System.out.println(jiaoshi);
        Cou cou=new Cou(cpid,cname,num,snum,jiaoshi,renshu);
        if(dao.addcou(cou)) {
            req.setAttribute("cou",cou);
            req.setAttribute("message","��ӳɹ�" );
            req.getRequestDispatcher("addcourse.jsp").forward(req, resp);
        }else {
            req.setAttribute("message","�γ���Ϣ�ظ�������������" );
            req.getRequestDispatcher("addcourse.jsp").forward(req, resp);
        }
    }
    private void updatetea(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String tpid=req.getParameter("tpid");
        String teaname = req.getParameter("teaname");
        String sex = req.getParameter("sex");
        String txueyuan = req.getParameter("txueyuan");
        String zhicheng = req.getParameter("zhicheng");
        String renshu = req.getParameter("renshu");
        Teacher teacher=new Teacher(tpid,teaname,sex,txueyuan,zhicheng,renshu);
        if(dao.updatetea(teacher)) {
            req.setAttribute("message","�޸ĳɹ�" );
            req.getRequestDispatcher("updatet.jsp").forward(req, resp);    
        } else {
            req.setAttribute("message","�޸�ʧ��" );
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
        String weizhi = req.getParameter("weizhi");
        Stu stu=new Stu(spid,stuname,sex,banji,ye,weizhi);
        if(dao.updatestu(stu)) {
            req.setAttribute("message","�޸ĳɹ�" );
            req.getRequestDispatcher("updates.jsp").forward(req, resp);    
        } else {
            req.setAttribute("message","�޸�ʧ��" );
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
        Teacher teacher=dao.searchByid(id);
        req.getSession().setAttribute("id", id);
        req.setAttribute("teacher", teacher);
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
            req.setAttribute("message","ѡ�γɹ�" );
            req.getRequestDispatcher("sucess.jsp").forward(req, resp);
        } else {
            req.setAttribute("message","ѡ��ʧ��" );
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