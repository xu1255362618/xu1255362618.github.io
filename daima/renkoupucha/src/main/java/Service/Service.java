package Service;



import java.util.List;

import Dao.Dao;
import people.people;

/**
* Service
* �����
* @author Hu
*
*/
public class Service {

Dao cDao = new Dao();

/**
* ���
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
* ɾ��
*/
public void del(int id) {
cDao.delete(id);
}

/**
* �޸�
* @return
*/
public void update(people people) {
cDao.update(people);
}

/**
* ͨ��ID�õ�һ��Course
* @return
*/
public people getById(int id) {
return cDao.getById(id);
}

/**
* ͨ��Name�õ�һ��Course
* @return
*/
public people getByName(String name) {
return cDao.getByName(name);
}

/**
* ����
* @return
*/
public List<people> search(String name, String sex, String min_zu,String jiao_yu) {
return cDao.search(name,sex,min_zu,jiao_yu);
}

/**
* ȫ������
* @return
*/
public List<people> list() {
return cDao.list();
}
}