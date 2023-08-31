//信2005-1班 许新达 20204091 2021 12 9
package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DBUtil.DBUtil;
import Javabean.Cou;
import Javabean.Jibenxinxi;
import Javabean.Stu;
import Javabean.Teacher;

public class Dao {

    public  int searchPid(String username,String password)
       {
             Connection conn = DBUtil.getConn();
             Statement state = null;
             ResultSet rs = null;
             int pid=0;
             try {
                String sql="select pid from user where username= '"+username+"' and password='"+password+"'";
                state = conn.createStatement();
                rs = state.executeQuery(sql);
                while(rs.next()){
                pid = rs.getInt("pid");
                }
             }
             catch(SQLException e) {
                 e.printStackTrace();
             }
             finally {
                 DBUtil.close(state, conn); 
             }
              return pid;
       }
    public boolean addtea(Teacher teacher)
       {
             Connection conn = DBUtil.getConn();
             PreparedStatement pstmt = null;
             boolean f = false;
             int a=0;
             try {
            	 String sql = "insert into huiyishi(MeetroomId,MeetroomName,Address,ReadyState,Status,Capacity) value(?,?,?,?,?,?)";
                 pstmt = conn.prepareStatement(sql);
                 pstmt.setString(1, teacher.getTpid());
                 pstmt.setString(2, teacher.getTeaname());
                 pstmt.setString(3, teacher.getSex());
                 pstmt.setString(4, teacher.getTxueyuan());
                 pstmt.setString(5, teacher.getZhicheng());
                 pstmt.setString(6, teacher.getRenshu());
                a = pstmt.executeUpdate();
             }
             catch(SQLException e) {
                 e.printStackTrace();
             }
             finally {
                 DBUtil.close(pstmt, conn); 
             }
             if(a>0)
             f=true;
             
             return f;
       }
    public boolean adduser(String tpid,String password,int pid)
       {
             Connection conn = DBUtil.getConn();
             PreparedStatement pstmt = null;
             boolean f = false;
             int a=0;
             try {
                 String sql = "insert into user(username,password,pid) value(?,?,?)";
                 pstmt = conn.prepareStatement(sql);
                 pstmt.setString(1, tpid);
                 pstmt.setString(2, password);
                 pstmt.setInt(3, pid);
                a = pstmt.executeUpdate();
             }
             catch(SQLException e) {
                 e.printStackTrace();
             }
             finally {
                 DBUtil.close(pstmt, conn); 
             }
             if(a>0)
             f=true;
             
             return f;
       }
    public boolean addstu(Stu stu)
       {
             Connection conn = DBUtil.getConn();
             PreparedStatement pstmt = null;
             boolean f = false;
             int a=0;
             try {
                 String sql = "insert into zhiyuan(UserID,UserName,sex,Sfzh,Phone,Position) value(?,?,?,?,?,?)";
                 pstmt = conn.prepareStatement(sql);
                 pstmt.setString(1, stu.getSpid());
                 pstmt.setString(2, stu.getStuname());
                 pstmt.setString(3, stu.getSex());
                 pstmt.setString(4, stu.getBanji());
                 pstmt.setString(5, stu.getYe());
                 pstmt.setString(6, stu.getWeizhi());
                a = pstmt.executeUpdate();
             }
             catch(SQLException e) {
                 e.printStackTrace();
             }
             finally {
                 DBUtil.close(pstmt, conn); 
             }
             if(a>0)
             f=true;
             
             return f;
       }
    
    public  String searchteaname(String tpid)
       {
             Connection conn = DBUtil.getConn();
             Statement state = null;
             ResultSet rs = null;
             String teaname=null;
             try {
                String sql="select teaname from teacher where tpid= '"+tpid+"'";
                state = conn.createStatement();
                rs = state.executeQuery(sql);
                while(rs.next()){
                teaname = rs.getString("teaname");
                }
             }
             catch(SQLException e) {
                 e.printStackTrace();
             }
             finally {
                 DBUtil.close(state, conn); 
             }
              return teaname;
       }
    public boolean addcou(Cou cou)
       {
             Connection conn = DBUtil.getConn();
             PreparedStatement pstmt = null;
             boolean f = false;
             int a=0;
             try {
                 String sql = "insert into huiyishi(MeetroomId,MeetroomName,Address,ReadyState,Status,Capacity) value(?,?,?,?,?,?)";
                 pstmt = conn.prepareStatement(sql);
                 pstmt.setString(1, cou.getCpid());
                 pstmt.setString(2, cou.getCname());
                 pstmt.setString(3, cou.getNum());
                 pstmt.setString(4, cou.getSnum());
                 pstmt.setString(5, cou.getJiaoshi());
                 pstmt.setString(6, cou.getRenshu());
                a = pstmt.executeUpdate();
             }
             catch(SQLException e) {
                 e.printStackTrace();
             }
             finally {
                 DBUtil.close(pstmt, conn); 
             }
             if(a>0)
             f=true;
             
             return f;
       }
    public boolean updatetea(Teacher teacher) {
    	 String sql = "update huiyishi set MeetroomName='" + teacher.getTeaname() + "', Address='" + teacher.getSex()
         + "', ReadyState='" +teacher.getTxueyuan() + "', Status='" +teacher.getZhicheng() +"', Capacity='" +teacher.getRenshu()+ "'where MeetroomId='" + teacher.getTpid() + "'";
      
    Connection conn = DBUtil.getConn();
    Statement state = null;
    boolean f = false;
    int a = 0;
    try {
        state = conn.createStatement();
        System.out.println("看看是不是执行了");
        a = state.executeUpdate(sql);
        System.out.println(a);
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        DBUtil.close(state, conn);
    }
    
    if (a > 0) {
        f = true;
    }
    System.out.println(f);
    return f;
    }
    
    public boolean updatestu(Stu stu) {
        String sql = "update zhiyuan set UserName='" + stu.getStuname() + "', sex='" + stu.getSex()
        + "', Sfzh='" +stu.getBanji() + "',Phone='" +stu.getYe() + "',Position='" +stu.getWeizhi() + "'where UserId='" + stu.getSpid() + "'";
    Connection conn = DBUtil.getConn();
    Statement state = null;
    boolean f = false;
    int a = 0;
    try {
        state = conn.createStatement();
        System.out.println("看看是不是执行了");
        a = state.executeUpdate(sql);
        System.out.println(a);
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        DBUtil.close(state, conn);
    }
    
    if (a > 0) {
        f = true;
    }
    
    System.out.println(f);
    return f;
    }
    
    public List<Cou> liulankecheng() {
        String sql = "select * from cou";
        List<Cou> list = new ArrayList<>();
        Connection conn = DBUtil.getConn();
        Statement state = null;
        ResultSet rs = null;

        try {
            state = conn.createStatement();
            rs = state.executeQuery(sql);
            Cou bean = null;
            while (rs.next()) {
                int id = rs.getInt("id");
                String cpid = rs.getString("cpid");
                String cname = rs.getString("cname");
                String num = rs.getString("num");
                String snum = rs.getString("snum");
                String jiaoshi = rs.getString("jiaoshi");
                bean = new Cou(id,cpid, cname, num ,snum,jiaoshi);
                list.add(bean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, state, conn);
        }
        
        return list;
    }
    
    public Teacher searchByid(int id) {
        String sql = "select * from huiyishi where id= '"+id+"'";
        Teacher teacher = null;
        Connection conn = DBUtil.getConn();
        Statement state = null;
        ResultSet rs = null;

        try {
            state = conn.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                //int id = rs.getInt("id");
                String cpid = rs.getString("cpid");
                String cname = rs.getString("cname");
                String num = rs.getString("num");
                String snum = rs.getString("snum");
                String jiaoshi = rs.getString("jiaoshi");
                teacher = new Teacher(cpid, cname, num ,snum,jiaoshi);
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, state, conn);
        }
        
        return teacher;
    }
    public boolean updatecou(int id,int snum) {
        String sql="update cou set snum='" + snum + "'where id='" + id +"'";
        Connection conn = DBUtil.getConn();
        Statement state = null;
        boolean f = false;
        int a = 0;
        try {
            state = conn.createStatement();
            System.out.println("看看是不是执行了");
            a = state.executeUpdate(sql);
            System.out.println(a);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(state, conn);
        }
        
        if (a > 0) {
            f = true;
        }
        
        System.out.println(f);
        return f;
        
        }
    
    public String searchtpid(String jiaoshi) {
        String sql = "select tpid from teacher where teaname= '"+jiaoshi+"'";
        Connection conn = DBUtil.getConn();
        Statement state = null;
        ResultSet rs = null;
        String tpid=null;
        try {
            state = conn.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
            tpid=rs.getString("tpid");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, state, conn);
        }
        
        return tpid;
    }
    
    public Stu searchstu(String spid) {
        String sql = "select * from stu where spid= '"+spid+"'";
        Stu stu = null;
        Connection conn = DBUtil.getConn();
        Statement state = null;
        ResultSet rs = null;

        try {
            state = conn.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                //int id = rs.getInt("id");
                String spid1 = rs.getString("spid");
                String stuname = rs.getString("stuname");
                String sex = rs.getString("sex");
                String banji = rs.getString("banji");
                String ye = rs.getString("ye");
                stu = new Stu(spid1, stuname, sex ,banji,ye);
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, state, conn);
        }
        
        return stu;
    }
    
    public boolean addjiben(String cpid,String tpid,String spid,Stu stu) {
        Connection conn = DBUtil.getConn();
        PreparedStatement pstmt = null;
        boolean f = false;
        int a=0;
        try {
            String sql = "insert into jiben(cpid,tpid,spid,stuname,sex,banji,ye) value(?,?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, cpid);
            pstmt.setString(2, tpid);
            pstmt.setString(3, spid);
            pstmt.setString(4, stu.getStuname());
            pstmt.setString(5, stu.getSex());
            pstmt.setString(6, stu.getBanji());
            pstmt.setString(7, stu.getYe());
           a = pstmt.executeUpdate();
        }
        catch(SQLException e) {
            e.printStackTrace();
        }
        finally {
            DBUtil.close(pstmt, conn); 
        }
        if(a>0)
        f=true;
        
        return f;
    }
    public List<Cou> liulankecheng1() {
        String sql = "select * from jiben";
        List<Cou> list = new ArrayList<>();
        Connection conn = DBUtil.getConn();
        Statement state = null;
        ResultSet rs = null;

        try {
            state = conn.createStatement();
            rs = state.executeQuery(sql);
            Cou bean = null;
            while (rs.next()) {
                int id = rs.getInt("id");
                String cpid = rs.getString("cpid");
                String cname = rs.getString("cname");
                String num = rs.getString("num");
                String snum = rs.getString("snum");
                String jiaoshi = rs.getString("jiaoshi");
                
                bean = new Cou(id,cpid, cname, num ,snum,jiaoshi);
                list.add(bean);
               
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, state, conn);
        }
        
        return list;
    }
    public List<Stu> gerenxinxi() {
        String sql = "select * from zhiyuan ";
        List<Stu> list = new ArrayList<>();
        Connection conn = DBUtil.getConn();
        Statement state = null;
        ResultSet rs = null;

        try {
            state = conn.createStatement();
            rs = state.executeQuery(sql);
            Stu bean = null;
            while (rs.next()) {
                int id = rs.getInt("id");
                String cpid = rs.getString("UserID");
                String cname = rs.getString("UserName");
                String num = rs.getString("sex");
                String snum = rs.getString("Sfzh");
                String jiaoshi = rs.getString("Phone");
                String weizhi = rs.getString("Position");
                bean = new Stu(id,cpid, cname, num ,snum,jiaoshi,weizhi);
                list.add(bean);
               
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, state, conn);
        }
        
        return list;
    }
    public List<Jibenxinxi> searchstuinfo(String tpid) {
        String sql = "select * from jiben where tpid= '"+tpid+"'";
        Connection conn = DBUtil.getConn();
        Statement state = null;
        ResultSet rs = null;
        List<Jibenxinxi> list = new ArrayList<>();

        try {
            state = conn.createStatement();
            rs = state.executeQuery(sql);
            Jibenxinxi jiben = null;
            while (rs.next()) {
                //int id = rs.getInt("id");
                String cpid = rs.getString("cpid");
                String tpid1 = rs.getString("tpid");
                String spid = rs.getString("spid");
                String stuname = rs.getString("stuname");
                String sex = rs.getString("sex");
                String banji = rs.getString("banji");
                String ye = rs.getString("ye");
                jiben = new Jibenxinxi(cpid,tpid1,spid,stuname,sex ,banji,ye);
                list.add(jiben);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, state, conn);
        }
        
        return list;
    }
    public boolean delete(String ztitle ) {//鍒犻櫎鏂规硶
        String sql="delete from huiyishi where MeetroomId='"+ztitle+"'";
        boolean f=false;
        Connection conn =DBUtil.getConn();
        Statement st=null;
        try {
            st=conn.createStatement();
            st.executeUpdate(sql);
            f=true;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        finally{
            DBUtil.close(st, conn);
        }
        return f;
    }
}