package Servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import people.people;
import Service.Service;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {

private static final long serialVersionUID = 1L;

Service service = new Service();

/**
* 方法选择
*/
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
req.setCharacterEncoding("utf-8");
String method = req.getParameter("method");

if ("add".equals(method)) {
add(req, resp);
} else if ("del".equals(method)) {
del(req, resp);
} else if ("update".equals(method)) {
update(req, resp);
} else if ("search".equals(method)) {
search(req, resp);
} else if ("getbyid".equals(method)) {
getById(req, resp);
} else if ("getbyname".equals(method)) {
getByName(req, resp);
} else if ("list".equals(method)) {
list(req, resp);
}
}

/**
* 添加
* @param req
* @param resp
* @throws IOException
* @throws ServletException
*/
private void add(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
req.setCharacterEncoding("utf-8");
//获取数据
String hu_bie = req.getParameter("hu_bie");
String zhu_fang_lei_bie = req.getParameter("zhu_fang_lei_bie");
String name = req.getParameter("name");
String idc = req.getParameter("idc");
String min_zu = req.getParameter("min_zu");
String jiao_yu = req.getParameter("jiao_yu");
String sex = req.getParameter("sex");
int S = Integer.parseInt(req.getParameter("S"));
int N = Integer.parseInt(req.getParameter("N"));

people people = new people(hu_bie,zhu_fang_lei_bie,name,idc,min_zu,jiao_yu,sex,S,N);

//添加后消息显示
if(service.add(people)) {
req.setAttribute("message", "添加成功");
req.getRequestDispatcher("add.jsp").forward(req,resp);
} else {
req.setAttribute("message", "添加失败，请重新录入");
req.getRequestDispatcher("add.jsp").forward(req,resp);
}
}

/**
* 全部
* @param req
* @param resp
* @throws ServletException
*/
private void list(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
req.setCharacterEncoding("utf-8");
List<people> peoples = service.list();
req.setAttribute("peoples", peoples);
req.getRequestDispatcher("detail2.jsp").forward(req,resp);
}

/**
* 通过ID得到Course
* @param req
* @param resp
* @throws ServletException
*/
private void getById(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
req.setCharacterEncoding("utf-8");
int id = Integer.parseInt(req.getParameter("id"));
people people = service.getById(id);
req.setAttribute("people", people);
req.getRequestDispatcher("detail2.jsp").forward(req,resp);
}

/**
* 通过名字查找
* 跳转至删除
* @param req
* @param resp
* @throws IOException
* @throws ServletException
*/
private void getByName(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
req.setCharacterEncoding("utf-8");
String name = req.getParameter("name");
people people =service.getByName(name);
if(people == null) {
req.setAttribute("message", "查无此人！");
req.getRequestDispatcher("del.jsp").forward(req,resp);
} else {
req.setAttribute("people", people);
req.getRequestDispatcher("detail.jsp").forward(req,resp);
}
}

/**
* 删除
* @param req
* @param resp
* @throws IOException
* @throws ServletException
*/
private void del(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
req.setCharacterEncoding("utf-8");
int id = Integer.parseInt(req.getParameter("id"));
service.del(id);
req.setAttribute("message", "删除成功！");
req.getRequestDispatcher("del.jsp").forward(req,resp);
}

/**
* 修改
* @param req
* @param resp
* @throws IOException
* @throws ServletException
*/
private void update(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
req.setCharacterEncoding("utf-8");
int id = Integer.parseInt(req.getParameter("id"));
String name = req.getParameter("name");
String idc = req.getParameter("idc");
String min_zu = req.getParameter("min_zu");
String jiao_yu = req.getParameter("jiao_yu");
String sex1 = req.getParameter("sex");
people people = new people(id,name,idc,min_zu,jiao_yu,sex1);


service.update(people);
req.setAttribute("message", "修改成功");
req.getRequestDispatcher("Servlet?method=list").forward(req,resp);
}

/**
* 查找
* @param req
* @param resp
* @throws ServletException
*/
private void search(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
req.setCharacterEncoding("utf-8");
String name = req.getParameter("name");
String min_zu = req.getParameter("min_zu");
String jiao_yu = req.getParameter("jiao_yu");
String sex = req.getParameter("sex");

List<people> peoples = service.search(name,sex,min_zu,jiao_yu);
req.setAttribute("peoples", peoples);
req.getRequestDispatcher("list.jsp").forward(req,resp);
}
}