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
                 String sql = "insert into agent(AgentID,Agentname,AgentAddress,Phone) value(?,?,?,?)";
                 pstmt = conn.prepareStatement(sql);
                 pstmt.setString(1, teacher.getTpid());
                 pstmt.setString(2, teacher.getTeaname());
                
                 pstmt.setString(3, teacher.getTxueyuan());
                 pstmt.setString(4, teacher.getZhicheng());
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
                 String sql = "insert into customer(UserID,Username,sex,IdNumber,phone,User) value(?,?,?,?,?,?)";
                 pstmt = conn.prepareStatement(sql);
                 pstmt.setString(1, stu.getSpid());
                 pstmt.setString(2, stu.getStuname());
                 pstmt.setString(3, stu.getSex());
                 pstmt.setString(4, stu.getBanji());
                 pstmt.setString(5, stu.getYe());
                 pstmt.setString(6, stu.getUser());
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
                 String sql = "insert into house(HouseID,RoomType,Address,Year,Area,Sales,Status,AgentId,UserID) value(?,?,?,?,?,?,?,?,?)";
                 pstmt = conn.prepareStatement(sql);
                 pstmt.setString(1, cou.getCpid());
                 pstmt.setString(2, cou.getCname());
                 pstmt.setString(3, cou.getNum());
                 pstmt.setString(4, cou.getYear());
                 pstmt.setString(5, cou.getArea());
                 pstmt.setString(6, cou.getSales());
                 pstmt.setString(7, cou.getStatus());
                 pstmt.setString(8, cou.getSnum());
                 pstmt.setString(9, cou.getJiaoshi());
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
        String sql = "update teacher set teaname='" + teacher.getTeaname() 
        + "', txueyuan='" +teacher.getTxueyuan() + "',zhicheng='" +teacher.getZhicheng() + "'where tpid='" + teacher.getTpid() + "'";
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
        String sql = "update customer set Username='" + stu.getStuname() + "', sex='" + stu.getSex()
        + "', IdNumber='" +stu.getBanji() + "',phone='" +stu.getYe() + "',User='" +stu.getUser() +"'where UserID='" + stu.getSpid() + "'";
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
        String sql = "select * from house";
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
                String cpid = rs.getString("HouseID");
                String cname = rs.getString("RoomType");
                String num = rs.getString("Address");
                String  u = rs.getString("Year");
                String snum = rs.getString("Sales");
                String jiaoshi = rs.getString("Status");
                bean = new Cou(id,cpid, cname, num,u ,snum,jiaoshi);
                list.add(bean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, state, conn);
        }
        
        return list;
    }
    
    public Cou searchByid(int id) {
        String sql = "select * from house where id= '"+id+"'";
        Cou cou = null;
        Connection conn = DBUtil.getConn();
        Statement state = null;
        ResultSet rs = null;

        try {
            state = conn.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                //int id = rs.getInt("id");
            	 //int id = rs.getInt("id");
                 String cpid = rs.getString("cpid");
                 String cname = rs.getString("cname");
                 String num = rs.getString("num");
                 String snum = rs.getString("snum");
                 String jiaoshi = rs.getString("jiaoshi");
                cou = new Cou(cpid, cname, num ,snum,jiaoshi);
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, state, conn);
        }
        
        return cou;
    }
    public boolean updatecou(int id,int snum) {
        String sql="update house set snum='" + snum + "'where id='" + id +"'";
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
        String sql = "select AgentID from agent where teaname= '"+jiaoshi+"'";
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
        String sql = "select * from customer where UserID= '"+spid+"'";
        Stu stu = null;
        Connection conn = DBUtil.getConn();
        Statement state = null;
        ResultSet rs = null;

        try {
            state = conn.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                //int id = rs.getInt("id");
                String spid1 = rs.getString("UserID");
                String stuname = rs.getString("UserName");
                String sex = rs.getString("sex");
                String banji = rs.getString("idNumber");
                String ye = rs.getString("Phone");
                String Uers = rs.getString("Uers");
                stu = new Stu(spid1, stuname, sex ,banji,ye,Uers);
                
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
            String sql = "insert into jiben(cpid,tpid,spid,stuname,sex,banji,ye,Uers) value(?,?,?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, cpid);
            pstmt.setString(2, tpid);
            pstmt.setString(3, spid);
            pstmt.setString(4, stu.getStuname());
            pstmt.setString(5, stu.getSex());
            pstmt.setString(6, stu.getBanji());
            pstmt.setString(7, stu.getYe());
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
        String sql = "select * from house";
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
                String cpid = rs.getString("HouseID");
                String cname = rs.getString("RoomType");
                String num = rs.getString("Address");
                String  u = rs.getString("Year");
                String  a = rs.getString("Area");
                String snum = rs.getString("Sales");
                String jiaoshi = rs.getString("Status");
                bean = new Cou(id,cpid, cname, num,u ,snum,jiaoshi,a);
                
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
        String sql = "select * from house where HouseID= '"+tpid+"'";
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
}