package xueshenghui;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Dao {

    private DBUtil dbutil=new DBUtil();


   public Dao() {
       // TODO Auto-generated constructor stub
   }
  
   public boolean insert(Bean bean) {//插入数据的方法
       boolean f=false;
       String sql="insert into person(id,hubie,livetype,age,nianji, name, idcard, sex,nation, education) values('"+bean.getId()+"','"+bean.getHubie()+"','"+bean.getLivetype()+"','"+bean.getArea()+"','"+bean.getRoomnum()+"','"+bean.getName()+"','"+bean.getIdcard()+"','"+bean.getSex()+"','"+bean.getNation()+"','"+bean.getEducation()+"')";
       Connection conn=DBUtil.getConnection();//数据库连接，加载驱动
       Statement state=null;
       try
       {
           state=conn.createStatement();//实例化Statement对象,方便对sql语句进行操作
           System.out.println(conn);
           state.executeUpdate(sql);
           f=true;
           //执行数据库更新操作用于执行INSERT、UPDATE或DELETE语句以及SQLDDL（数据定义语言）语句，
           //例如CREATETABLE和DROPTABLE,（创建表和删除表）
       }catch(Exception e)//当try语句中s出现异常时，会执行catch中的语句
         {
           e.printStackTrace();//捕获异常的语句
         }
        finally //finally作为异常处理的一部分，它只能用在try/catch语句中，并且附带一个语句块，表示这段语句最终一定会被执行（不管有没有抛出异常），经常被用在需要释放资源的情况下。
        {
            DBUtil.close(conn);
        }
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
   public boolean update(Bean bean) {//更新方法
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
   }

   public List<Bean> list(){//查询所有方法
       String sql="select * from person order by id ASC";
       Connection conn=DBUtil.getConnection();
       Statement st=null;
       List<Bean> list=new ArrayList<>();
       ResultSet rs=null;
       Bean bean=null;
       try {
           st=conn.createStatement();
           st.executeQuery(sql);
           rs=st.executeQuery(sql);
           while(rs.next()) {
               int id=rs.getInt("id");
               String hubie = rs.getString("hubie");
               String livetype = rs.getString("livetype");
               int area=rs.getInt("age");
               int roomnum=rs.getInt("nianji");
               String name = rs.getString("name");
               String idcard=rs.getString("idcard");
               String sex = rs.getString("sex");
               String nation = rs.getString("nation");
               String education = rs.getString("education");
               bean=new Bean(id,hubie,livetype,area,roomnum, name, idcard, sex,nation, education);
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
   
   
   public List<Bean> searchByName(String str) throws SQLException{//查询条件方法
       String sql="select * from person where(name like '%"+str+"%')";
       Connection conn=DBUtil.getConnection();
       Statement st=null;
       PreparedStatement pt = conn.prepareStatement(sql);
       List<Bean> search=new ArrayList<>();
       ResultSet rs=null;
       Bean bean=null;
       try {
         pt=conn.prepareStatement(sql);
           rs=pt.executeQuery();
           while(rs.next()) {
               int id=rs.getInt("id");
               String hubie = rs.getString("hubie");
               String livetype = rs.getString("livetype");
               int area=rs.getInt("age");
               int roomnum=rs.getInt("nianji");
               String name = rs.getString("name");
               String idcard=rs.getString("idcard");
               String sex = rs.getString("sex");
               String nation = rs.getString("nation");
               String education = rs.getString("education");
               bean=new Bean(id,hubie,livetype,area,roomnum, name, idcard, sex,nation, education);
               search.add(bean);
           }
       } catch (SQLException e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
       }
       finally {
           DBUtil.close(rs, st, conn);
       }
       return search;
   }
   
   public List<Bean> searchBySex(String str) throws SQLException{//查询条件方法
       String sql="select * from person where(sex like '%"+str+"%')";
       Connection conn=DBUtil.getConnection();
       Statement st=null;
       PreparedStatement pt = conn.prepareStatement(sql);
       List<Bean> search=new ArrayList<>();
       ResultSet rs=null;
       Bean bean=null;
       try {
         pt=conn.prepareStatement(sql);
           rs=pt.executeQuery();
           while(rs.next()) {
               int id=rs.getInt("id");
               String hubie = rs.getString("hubie");
               String livetype = rs.getString("livetype");
               int area=rs.getInt("age");
               int roomnum=rs.getInt("nianji");
               String name = rs.getString("name");
               String idcard=rs.getString("idcard");
               String sex = rs.getString("sex");
               String nation = rs.getString("nation");
               String education = rs.getString("education");
               bean=new Bean(id,hubie,livetype,area,roomnum, name, idcard, sex,nation, education);
               search.add(bean);
           }
       } catch (SQLException e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
       }
       finally {
           DBUtil.close(rs, st, conn);
       }
       return search;
   }
   
   public List<Bean> searchByEducation(String str) throws SQLException{//查询条件方法
       String sql="select * from person where(education like '%"+str+"%')";
       Connection conn=DBUtil.getConnection();
       Statement st=null;
       PreparedStatement pt = conn.prepareStatement(sql);
       List<Bean> search=new ArrayList<>();
       ResultSet rs=null;
       Bean bean=null;
       try {
         pt=conn.prepareStatement(sql);
           rs=pt.executeQuery();
           while(rs.next()) {
               int id=rs.getInt("id");
               String hubie = rs.getString("hubie");
               String livetype = rs.getString("livetype");
               int area=rs.getInt("age");
               int roomnum=rs.getInt("nianji");
               String name = rs.getString("name");
               String idcard=rs.getString("idcard");
               String sex = rs.getString("sex");
               String nation = rs.getString("nation");
               String education = rs.getString("education");
               bean=new Bean(id,hubie,livetype,area,roomnum, name, idcard, sex,nation, education);
               search.add(bean);
           }
       } catch (SQLException e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
       }
       finally {
           DBUtil.close(rs, st, conn);
       }
       return search;
   }
   
   public List<Bean> searchByNation(String str) throws SQLException{//查询条件方法
       String sql="select * from person where(nation like '%"+str+"%')";
       Connection conn=DBUtil.getConnection();
       Statement st=null;
       PreparedStatement pt = conn.prepareStatement(sql);
       List<Bean> search=new ArrayList<>();
       ResultSet rs=null;
       Bean bean=null;
       try {
         pt=conn.prepareStatement(sql);
           rs=pt.executeQuery();
           while(rs.next()) {
               int id=rs.getInt("id");
               String hubie = rs.getString("hubie");
               String livetype = rs.getString("livetype");
               int area=rs.getInt("age");
               int roomnum=rs.getInt("nianji");
               String name = rs.getString("name");
               String idcard=rs.getString("idcard");
               String sex = rs.getString("sex");
               String nation = rs.getString("nation");
               String education = rs.getString("education");
               bean=new Bean(id,hubie,livetype,area,roomnum, name, idcard, sex,nation, education);
               search.add(bean);
           }
       } catch (SQLException e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
       }
       finally {
           DBUtil.close(rs, st, conn);
       }
       return search;
   }
   
}
