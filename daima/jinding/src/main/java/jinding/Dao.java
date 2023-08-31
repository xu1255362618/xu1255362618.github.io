package jinding;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jinding.DBUtil;
import jinding.User;
import jinding.Bean;
public class Dao {

	public Dao() {
		// TODO Auto-generated constructor stub
	}
	public  int searchPid(String username,String password)
    {
          Connection conn = DBUtil.getConnection();
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
	public  String search(String tpid)
    {
          Connection conn = DBUtil.getConnection();
          Statement state = null;
          ResultSet rs = null;
          String teaname=null;
          try {
             String sql="select name from information where username= '"+tpid+"'";
             state = conn.createStatement();
             rs = state.executeQuery(sql);
             while(rs.next()){
             teaname = rs.getString("name");
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
	public boolean add(User stu)
    {
          Connection conn = DBUtil.getConnection();
          PreparedStatement pstmt = null;
          boolean f = false;
          int a=0;
          try {
              String sql = "insert into information(name,sex,age,phone,possion,username) value(?,?,?,?,?,?)";
              pstmt = conn.prepareStatement(sql);
              pstmt.setString(1, stu.getName());
              pstmt.setString(2, stu.getSex());
              pstmt.setString(3, stu.getAge());
              pstmt.setString(4, stu.getPhone());
              pstmt.setString(5, stu.getPossion());
              pstmt.setString(6, stu.getUsername());
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
	public boolean adduser(User stu)
    {
          Connection conn = DBUtil.getConnection();
          PreparedStatement pstmt = null;
          boolean f = false;
          int a=0;
          try {
              String sql = "insert into user(username,password,pid) value(?,?,?)";
              pstmt = conn.prepareStatement(sql);
              pstmt.setString(1, stu.getUsername());
              pstmt.setString(2, stu.getPassword());
              pstmt.setInt(3, stu.getPid());
          
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
	 public boolean delete(int id ) {//删除方法
	       String sql="delete from person where id='"+id+"'";
	       boolean f=false;
	       Connection conn =DBUtil.getConnection();
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
	/* public boolean update(Bean bean) {//更新方法
	       String sql="update person set hubie='"+bean.getHubie()+"',livetype='"+bean.getLivetype()+"',age='"+bean.getArea()+"',nianji='"+bean.getRoomnum()+"',name='"+bean.getName()+"',idcard='"+bean.getIdcard()+"',sex='"+bean.getSex()+"',nation='"+bean.getNation()+"',education='"+bean.getEducation()+"'where id='"+bean.getId()+"'";
	       Connection conn=DBUtil.getConnection();
	       boolean f=false;
	       Statement st=null;
	       try {
	           st=conn.createStatement();
	           st.executeUpdate(sql);
	           f=true;
	       } catch (SQLException e) {
	           // TODO Auto-generated catch block
	           e.printStackTrace();
	       }
	       return f;
	   }*/
	 public List<User> list(){//查询所有方法
	       String sql="select * from information order by id ASC";
	       Connection conn=DBUtil.getConnection();
	       Statement st=null;
	       List<User> list=new ArrayList<>();
	       ResultSet rs=null;
	       User bean=null;
	       try {
	           st=conn.createStatement();
	           st.executeQuery(sql);
	           rs=st.executeQuery(sql);
	           while(rs.next()) {
	               //int id=rs.getInt("id");
	               String name = rs.getString("name");
	               String sex = rs.getString("sex");
	               String age=rs.getString("age");
	               String phone=rs.getString("phone");
	               String possion = rs.getString("possion");
	               String username=rs.getString("username");
	               String password="****";
	               int pid=0;
	               bean=new User(name,sex,age,phone,possion, username,pid,password);
	               list.add(bean);
	           }
	       } catch (SQLException e) {
	           // TODO Auto-generated catch block
	           e.printStackTrace();
	       }
	       finally {
	           DBUtil.close(rs, st, conn);
	       }
	       return list;
	   }
	   
}
