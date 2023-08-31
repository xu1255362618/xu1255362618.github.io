package Service;



import java.util.List;

import Dao.Dao;
import people.people;

/**
* Service
* 服务层
* @author Hu
*
*/
public class Service {

Dao cDao = new Dao();

/**
* 添加
* @param course
* @return
*/
public boolean add(people people) {
boolean f = false;
if(!cDao.leibie(people.getName())) {
cDao.add(people);
f = true;
}
return f;
}

/**
* 删除
*/
public void del(int id) {
cDao.delete(id);
}

/**
* 修改
* @return
*/
public void update(people people) {
cDao.update(people);
}

/**
* 通过ID得到一个Course
* @return
*/
public people getById(int id) {
return cDao.getById(id);
}

/**
* 通过Name得到一个Course
* @return
*/
public people getByName(String name) {
return cDao.getByName(name);
}

/**
* 查找
* @return
*/
public List<people> search(String name, String sex, String min_zu,String jiao_yu) {
return cDao.search(name,sex,min_zu,jiao_yu);
}

/**
* 全部数据
* @return
*/
public List<people> list() {
return cDao.list();
}
}