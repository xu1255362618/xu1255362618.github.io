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
* ����ѡ��
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
* ���
* @param req
* @param resp
* @throws IOException
* @throws ServletException
*/
private void add(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
req.setCharacterEncoding("utf-8");
//��ȡ����
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

//��Ӻ���Ϣ��ʾ
if(service.add(people)) {
req.setAttribute("message", "��ӳɹ�");
req.getRequestDispatcher("add.jsp").forward(req,resp);
} else {
req.setAttribute("message", "���ʧ�ܣ�������¼��");
req.getRequestDispatcher("add.jsp").forward(req,resp);
}
}

/**
* ȫ��
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
* ͨ��ID�õ�Course
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
* ͨ�����ֲ���
* ��ת��ɾ��
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
req.setAttribute("message", "���޴��ˣ�");
req.getRequestDispatcher("del.jsp").forward(req,resp);
} else {
req.setAttribute("people", people);
req.getRequestDispatcher("detail.jsp").forward(req,resp);
}
}

/**
* ɾ��
* @param req
* @param resp
* @throws IOException
* @throws ServletException
*/
private void del(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
req.setCharacterEncoding("utf-8");
int id = Integer.parseInt(req.getParameter("id"));
service.del(id);
req.setAttribute("message", "ɾ���ɹ���");
req.getRequestDispatcher("del.jsp").forward(req,resp);
}

/**
* �޸�
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
req.setAttribute("message", "�޸ĳɹ�");
req.getRequestDispatcher("Servlet?method=list").forward(req,resp);
}

/**
* ����
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