package Javabean;

public class Stu {
 
    private int id;
    private String spid;
    private String stuname;
    private String sex;
    private String banji;
    private String ye;
    private String weizhi;
    
    public String getWeizhi() {
		return weizhi;
	}
	public void setWeizhi(String weizhi) {
		this.weizhi = weizhi;
	}
	public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getSpid() {
        return spid;
    }
    public void setSpid(String spid) {
        this.spid = spid;
    }
    public String getStuname() {
        return stuname;
    }
    public void setStuname(String stuname) {
        this.stuname = stuname;
    }
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }
    public String getBanji() {
        return banji;
    }
    public void setBanji(String banji) {
        this.banji = banji;
    }
    public String getYe() {
        return ye;
    }
    public void setYe(String ye) {
        this.ye = ye;
    }
    public Stu() { }
    
    public Stu(int id,String spid,String stuname,String sex,String banji,String ye) {
        this.id=id;
        this.spid=spid;
        this.stuname=stuname;
        this.sex=sex;
        this.banji=banji;
        this.ye=ye;
    }
    public Stu(int id,String spid,String stuname,String sex,String banji,String ye,String weizhi) {
        this.id=id;
        this.spid=spid;
        this.stuname=stuname;
        this.sex=sex;
        this.banji=banji;
        this.ye=ye;
        this.weizhi=weizhi;
    }
    public Stu(String spid,String stuname,String sex,String banji,String ye) {
        this.spid=spid;
        this.stuname=stuname;
        this.sex=sex;
        this.banji=banji;
        this.ye=ye;
    }
    public Stu(String spid,String stuname,String sex,String banji,String ye,String weizhi) {
        this.spid=spid;
        this.stuname=stuname;
        this.sex=sex;
        this.banji=banji;
        this.ye=ye;
        this.weizhi=weizhi;
    }
    
    
}