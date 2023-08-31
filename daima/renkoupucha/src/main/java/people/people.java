package people;


public class people {
String hu_bie;
String zhu_fang_lei_bie;
int S;
int N;
String name;
String idc;
String sex;
String min_zu;
String jiao_yu;
int id;
public people(int id,String name, String idc, String min_zu, String jiao_yu)
{
this.id = id;
this.min_zu = min_zu;
this.jiao_yu = jiao_yu;
this.name = name;
this.idc = idc;

}
public people(int id,String name, String idc, String min_zu, String jiao_yu,String sex) {
this.id = id;
this.sex = sex;
this.min_zu = min_zu;
this.jiao_yu = jiao_yu;
this.name = name;
this.idc = idc;

}
public people(String hu_bie, String zhu_fang_lei_bie, String name, String idc, String min_zu, String jiao_yu,String sex,int S,int N) {

this.hu_bie = hu_bie;
this.zhu_fang_lei_bie = zhu_fang_lei_bie;
this.S = S;
this.N = N;
this.sex = sex;
this.min_zu = min_zu;
this.jiao_yu = jiao_yu;
this.name = name;
this.idc = idc;

}
public people(int id,String hu_bie, String zhu_fang_lei_bie, String name, String idc, String min_zu, String jiao_yu,String sex,int S,int N) {
this.id = id;
this.hu_bie = hu_bie;
this.zhu_fang_lei_bie = zhu_fang_lei_bie;
this.S = S;
this.N = N;
this.sex = sex;
this.min_zu = min_zu;
this.jiao_yu = jiao_yu;
this.name = name;
this.idc = idc;

}
public String getHu_bie() {
return hu_bie;
}
public void setHu_bie(String hu_bie) {
this.hu_bie = hu_bie;
}
public String getZhu_fang_lei_bie() {
return zhu_fang_lei_bie;
}
public void setZhu_fang_lei_bie(String zhu_fang_lei_bie) {
this.zhu_fang_lei_bie = zhu_fang_lei_bie;
}
public int getS() {
return S;
}
public void setS(int s) {
S = s;
}
public int getN() {
return N;
}
public void setN(int n) {
N = n;
}
public String getName() {
return name;
}
public void setName(String name) {
this.name = name;
}
public String getIdc() {
return idc;
}
public void setIdc(String idc) {
this.idc = idc;
}
public String getSex() {
return sex;
}
public void setSex(String sex) {
this.sex = sex;
}
public String getMin_zu() {
return min_zu;
}
public void setMin_zu(String min_zu) {
this.min_zu = min_zu;
}
public String getJiao_yu() {
return jiao_yu;
}
public void setJiao_yu(String jiao_yu) {
this.jiao_yu = jiao_yu;
}
public int getId() {
return id;
}
public void setId(int id) {
this.id = id;
}


}