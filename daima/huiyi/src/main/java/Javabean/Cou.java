package Javabean;

public class Cou {
    private int id;
    private String cpid;
    private String cname;
    private String num;
    private String snum;
    private String jiaoshi;
    private String renshu;
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
    public String getCname() {
        return cname;
    }
    public void setCname(String cname) {
        this.cname = cname;
    }
    public String getNum() {
        return num;
    }
    public void setNum(String num) {
        this.num = num;
    }
    public String getSnum() {
        return snum;
    }
    public void setSnum(String snum) {
        this.snum = snum;
    }
    public String getJiaoshi() {
        return jiaoshi;
    }
    public void setJiaoshi(String jiaoshi) {
        this.jiaoshi = jiaoshi;
    }
    public Cou() {}
    public Cou(int id,String cpid,String cname,String num,String snum,String jiaoshi) {
        this.id=id;
        this.cpid=cpid;
        this.cname=cname;
        this.num=num;
        this.snum=snum;
        this.jiaoshi=jiaoshi;
    }
    public Cou(String cpid,String cname,String num,String snum,String jiaoshi) {
        this.cpid=cpid;
        this.cname=cname;
        this.num=num;
        this.snum=snum;
        this.jiaoshi=jiaoshi;
    }
    public Cou(String cpid,String cname,String num,String snum,String jiaoshi,String renshu) {
        this.cpid=cpid;
        this.cname=cname;
        this.num=num;
        this.snum=snum;
        this.jiaoshi=jiaoshi;
        this.renshu=renshu;
    }
	public String getRenshu() {
		return renshu;
	}
	public void setRenshu(String renshu) {
		this.renshu = renshu;
	}
    
}