package Javabean;

public class Jibenxinxi {

    private int id;
    private String cpid;
    private String tpid;
    private String spid;
    private String stuname;
    private String sex;
    private String banji;
    private String ye;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getCpid() {
        return cpid;
    }
    public void setCpid(String cpid) {
        this.cpid = cpid;
    }
    public String getTpid() {
        return tpid;
    }
    public void setTpid(String tpid) {
        this.tpid = tpid;
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
    public Jibenxinxi() { }
    public Jibenxinxi(int id,String cpid,String tpid,String spid,String stuname,String sex,String banji,String ye) { 
        this.id=id;
        this.cpid=cpid;
        this.tpid=tpid;
        this.spid=spid;
        this.stuname=stuname;
        this.sex=sex;
        this.banji=banji;
        this.ye=ye;
    }
    public Jibenxinxi(String cpid,String tpid,String spid,String stuname,String sex,String banji,String ye) { 
        this.cpid=cpid;
        this.tpid=tpid;
        this.spid=spid;
        this.stuname=stuname;
        this.sex=sex;
        this.banji=banji;
        this.ye=ye;
    }
}