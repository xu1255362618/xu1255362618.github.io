package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Dao.DBUtil;
import Javabean.bean;

public class Dao {

	public Dao() {
		// TODO Auto-generated constructor stub
	}
	public static  bean searchxianlu(String xianlu)
    {
          Connection conn = DBUtil.getConn();
          Statement state = null;
          ResultSet rs = null;
          String teaname=null;
          bean be=new bean();
          try {
             String sql="select title from lunwen where keywords= '%"+xianlu+"'%";
             state = conn.createStatement();
             System.out.print(xianlu+"ºÅÏß£º");
             rs = state.executeQuery(sql);
        
             while(rs.next()){
             teaname = rs.getString("zhanming");
             System.out.print(teaname+' ');
             be.setZhanming(rs.getString("zhanming"));
             }
             System.out.println(be.getZhanming());


          }
          catch(SQLException e) {
              e.printStackTrace();
          }
          finally {
              DBUtil.close(state, conn); 
          }
           return be;
    }
	public  static   String searchzhandian(String zhanming)
    {
          Connection conn = DBUtil.getConn();
          Statement state = null;
          ResultSet rs = null;
          String teaname=null;
          bean bean=new bean();
          try {
             String sql="select xianluhao from jiben where zhanming= '"+zhanming+"'";
             state = conn.createStatement();
             System.out.print(zhanming+"£º¸ÃÕ¾Í¾¾¶ ");
             rs = state.executeQuery(sql);
             while(rs.next()){
             teaname = rs.getString("xianluhao");
             System.out.print(teaname+"ºÅÏß ");
             bean.setXianluhao(teaname);
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
	public List<bean> getallxianluhao(String xianluhao){
		 Connection conn = DBUtil.getConn();
        List<bean> list=new ArrayList<bean>();
        
        try {String sql="select title from lunwen where keywords= '%"+xianluhao+"%'";
        	 Statement state = null;
             ResultSet rs = null;
             ResultSet ps = null; 
             state = conn.createStatement();
           
            rs = state.executeQuery(sql);
            while (rs.next()) {
                
               bean bean=new bean();
                bean.setZhanming(rs.getString("zhanming"));
               
                list.add(bean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return list;
    }
	public List<bean> getallzhanming(String zhanming){
		 Connection conn = DBUtil.getConn();
       List<bean> list=new ArrayList<bean>();
       
       try {String sql="select link from jiben where title= '"+zhanming+"'";
       	 Statement state = null;
            ResultSet rs = null;
            ResultSet ps = null; 
            state = conn.createStatement();
          
           rs = state.executeQuery(sql);
           while (rs.next()) {
               
              bean bean=new bean();
               bean.setXianluhao(rs.getString("xianluhao"));
              
               list.add(bean);
           }
       } catch (SQLException e) {
           e.printStackTrace();
       }
       
       return list;
   }
	public  static  int searchqidian( String qidian)
    {
          Connection conn = DBUtil.getConn();
          Statement state = null;
          ResultSet rs = null;
          int teaname=-1;
          
          try {
             String sql="select chezhanid from jiben where zhanming= '"+qidian+"'";
             state = conn.createStatement();
             
             rs = state.executeQuery(sql);
             while(rs.next()){
             teaname = rs.getInt("chezhanid");
             System.out.print(teaname);
             
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
	public  static  int searchzhongdian(String zhongdian)
    {
          Connection conn = DBUtil.getConn();
          Statement state = null;
          ResultSet rs = null;
          int teaname=-1;
          
          try {
             String sql="select chezhanid from jiben where zhanming= '"+zhongdian+"'";
             state = conn.createStatement();
             
             rs = state.executeQuery(sql);
             while(rs.next()){
             teaname = rs.getInt("chezhanid");
             System.out.print(teaname);
             
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
	public List<bean> getallqishi(int qi,int zhong,String xianluhao){
		 Connection conn = DBUtil.getConn();
       List<bean> list=new ArrayList<bean>();
       
       try {String sql="select zhanming from jiben where chezhanid<='"+zhong+"'and chezhanid>='"+qi+"'and  xianluhao ='"+xianluhao+"'";
       	 Statement state = null;
            ResultSet rs = null;
            ResultSet ps = null; 
            state = conn.createStatement();
          
           rs = state.executeQuery(sql);
           while (rs.next()) {
               
              bean bean=new bean();
               bean.setZhanming(rs.getString("zhanming"));
              
               list.add(bean);
           }
       } catch (SQLException e) {
           e.printStackTrace();
       }
       
       return list;
   }
	
}
