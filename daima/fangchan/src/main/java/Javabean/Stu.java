package Javabean;

public class Stu {
 
    private int id;
    private String spid;
    private String stuname;
    private String sex;
    private String banji;
    private String ye;
    private String user;
  
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
    public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user =user;
	}
    public Stu() { }
    
    public Stu(int id,String spid,String stuname,String sex,String banji,String ye,String user) {
        this.id=id;
        this.spid=spid;
        this.stuname=stuname;
        this.sex=sex;
        this.banji=banji;
        this.ye=ye;
        this.user=user;
    }
    public Stu(String spid,String stuname,String sex,String banji,String ye,String user) {
        this.spid=spid;
        this.stuname=stuname;
        this.sex=sex;
        this.banji=banji;
        this.ye=ye;
        this.user=user;
    }
    
}