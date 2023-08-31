package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import people.people;
import Dao.DBUtil;

/**
* �γ�Dao
* Dao���������
* @author Hu
*
*/
public class Dao {

/**
* ���
* @param course
* @return
*/
public boolean add(people people) {
String sql = "insert into zhufang(name,idc,sex,min_zu,jiao_yu,hu_bie,zhu_fang_lei_bie,S,N) values('" + people.getName() + "','" + people.getIdc() + "','" + people.getSex() + "','" + people.getMin_zu() + "','" + people.getJiao_yu() + "','" + people.getHu_bie() + "','" + people.getZhu_fang_lei_bie() + "','" + people.getS() + "','" + people.getN() + "')";
//�������ݿ�����
Connection conn = DBUtil.getConnection();
Statement state = null;
boolean f = false;
int a = 0;

try {
state = conn.createStatement();
a = state.executeUpdate(sql);
} catch (Exception e) {
e.printStackTrace();
} finally {
//�ر�����
DBUtil.close(state, conn);
}

if (a > 0) {
f = true;
}
return f;
}

/**
* ɾ��
*
* @param id
* @return
*/
public boolean delete (int id) {
boolean f = false;
String sql = "delete from zhufang where id='" + id + "'";

Connection conn = DBUtil.getConnection();
Statement state = null;
int a = 0;

try {
state = conn.createStatement();
a = state.executeUpdate(sql);
} catch (SQLException e) {
e.printStackTrace();
} finally {
DBUtil.close(state, conn);
}

if (a > 0) {
f = true;
}
return f;
}

/**
* �޸�
* @param name
* @param pass
*/
/**
* @param people
* @return
*/
public boolean update(people people) {
String sql = "update zhufang set name='" + people.getName() + "', idc='" + people.getIdc() + "', sex='" + people.getSex() + "', min_zu='" + people.getMin_zu() + "', jiao_yu='" + people.getJiao_yu()
+ "' where id='" + people.getId() + "'";
Connection conn = DBUtil.getConnection();
Statement state = null;
boolean f = false;
int a = 0;

try {
state = conn.createStatement();
a = state.executeUpdate(sql);
} catch (SQLException e) {
e.printStackTrace();
} finally {
DBUtil.close(state, conn);
}

if (a > 0) {
f = true;
}
return f;
}

/**
* ��֤�γ������Ƿ�Ψһ
* true --- ��Ψһ
* @param name
* @return
*/
public boolean leibie(String name) {
boolean flag = false;
String sql = "select name from zhufang where name = '" + name + "'";
Connection conn = DBUtil.getConnection();
Statement state = null;
ResultSet rs = null;

try {
state = conn.createStatement();
rs = state.executeQuery(sql);
while (rs.next()) {
flag = true;
}
} catch (SQLException e) {
e.printStackTrace();
} finally {
DBUtil.close(rs, state, conn);
}
return flag;
}

/**
* ͨ��ID�õ��γ���Ϣ
* @param id
* @return
*/
public people getById(int id) {
String sql = "select * from zhufang where id ='" + id + "'";
Connection conn = DBUtil.getConnection();
Statement state = null;
ResultSet rs = null;
people people = null;

try {
state = conn.createStatement();
rs = state.executeQuery(sql);
while (rs.next()) {
String name = rs.getString("name");
String min_zu = rs.getString("min_zu");
String jiao_yu = rs.getString("jiao_yu");
String idc = rs.getString("idc");
String sex = rs.getString("sex");
int ida = rs.getInt("id");
people = new people(ida,name,idc,min_zu,jiao_yu,sex);
}
} catch (Exception e) {
e.printStackTrace();
} finally {
DBUtil.close(rs, state, conn);
}

return people;
}

/**
* ͨ��name�õ�Course
* @param name
* @return
*/
public people getByName(String name) {
String sql = "select * from zhufang where name ='" + name + "'";
Connection conn = DBUtil.getConnection();
Statement state = null;
ResultSet rs = null;
people people = null;

try {
state = conn.createStatement();
rs = state.executeQuery(sql);
while (rs.next()) {
int id = rs.getInt("id");
String name1 = rs.getString("name");
String zhu_fang_lei_bie = rs.getString("zhu_fang_lei_bie");
String hu_bie = rs.getString("hu_bie");
String idc = rs.getString("idc");
String jiao_yu = rs.getString("jiao_yu");
String min_zu = rs.getString("min_zu");
int S = rs.getInt("S");
int N = rs.getInt("N");
String sex = rs.getString("sex");
people = new people(id,hu_bie,zhu_fang_lei_bie,name1,idc,min_zu,jiao_yu,sex,S,N);
}
} catch (Exception e) {
e.printStackTrace();
} finally {
DBUtil.close(rs, state, conn);
}

return people;
}

/**
* ����
* @param name
* @param teacher
* @param classroom
* @return
*/
public List<people> search(String name,String sex, String min_zu, String jiao_yu) {
String sql = "select * from zhufang where ";

if (name != "") {
sql += "name like '%" + name + "%'";
}
else if (min_zu != "") {
sql += "min_zu like '%" + min_zu + "%'";
}
else if (jiao_yu != "") {
sql += "jiao_yu like '%" + jiao_yu + "%'";
}
else if (sex != "") {
sql += "sex like '%" + sex + "%'";
}
else
{
}

List<people> list = new ArrayList<>();
Connection conn = DBUtil.getConnection();
Statement state = null;
ResultSet rs = null;

try {
state = conn.createStatement();
rs = state.executeQuery(sql);
people bean = null;
while (rs.next()) {
int id = rs.getInt("id");
String name2 = rs.getString("name");
String min_zu2 = rs.getString("min_zu");
String jiao_yu2 = rs.getString("jiao_yu");
String sex2 = rs.getString("sex");
String idc2 = rs.getString("idc");
bean = new people(id,name2,idc2,min_zu2,jiao_yu2,sex2);
list.add(bean);
}
} catch (SQLException e) {
e.printStackTrace();
} finally {
DBUtil.close(rs, state, conn);
}

return list;
}

/**
* ȫ������
* @param name
* @param teacher
* @param classroom
* @return
*/
public List<people> list() {
String sql = "select * from zhufang";
List<people> list = new ArrayList<>();
Connection conn = DBUtil.getConnection();
Statement state = null;
ResultSet rs = null;

try {
state = conn.createStatement();
rs = state.executeQuery(sql);
people bean = null;
while (rs.next()) {
int id = Integer.parseInt(rs.getString("id"));
String name2 = rs.getString("name");
String min_zu2 = rs.getString("min_zu");
String jiao_yu2 = rs.getString("jiao_yu");
String sex2 = rs.getString("sex");
String idc2 = rs.getString("idc");
String hu_bie2 = rs.getString("hu_bie");
String zhu_fang_lei_bie2 = rs.getString("zhu_fang_lei_bie");
int S2 = Integer.parseInt(rs.getString("S"));
int N2 = Integer.parseInt(rs.getString("N"));
bean = new people(id,hu_bie2,zhu_fang_lei_bie2,name2,idc2,min_zu2,jiao_yu2,sex2,S2,N2);
list.add(bean);
}
} catch (SQLException e) {
e.printStackTrace();
} finally {
DBUtil.close(rs, state, conn);
}

return list;
}

}

 