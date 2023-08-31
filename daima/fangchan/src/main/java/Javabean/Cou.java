package Javabean;

public class Cou {
    private int id;
    private String cpid;
    private String cname;
    private String num;
    private String year;
    private String area;
    private String sales;
    private String status;
    private String snum;
    private String jiaoshi;
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
        this.num= num;
        this.snum=snum;
        this.jiaoshi=jiaoshi;
       
    }
    public Cou(int id,String cpid,String cname,String num,String jiaoshi,String year,String area) {
        this.id=id;
        this.cpid=cpid;
        this.cname=cname;
        this.num= num;
        
        this.jiaoshi=jiaoshi;
        this.year=year;
        this.area=area;
       
    }
    public Cou(int id,String cpid,String cname,String num,String jiaoshi,String year,String area,String c) {
        this.id=id;
        this.cpid=cpid;
        this.cname=cname;
        this.num= num;
        
        this.jiaoshi=jiaoshi;
        this.year=year;
        this.area=area;
       this.snum=c;
    }
    public Cou(String cpid,String cname,String num,String jiaoshi,String year,String area,String sales,String status) {
       
        this.cpid=cpid;
        this.cname=cname;
        this.num= num;
      
        this.jiaoshi=jiaoshi;
        this.year=year;
        this.area=area;
        this.sales=sales;
        this.status=status;
    }
    public Cou(String cpid,String cname,String num,String snum,String jiaoshi) {
        this.cpid=cpid;
        this.cname=cname;
        this.num=num;
        this.snum=snum;
        this.jiaoshi=jiaoshi;
    }
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getSales() {
		return sales;
	}
	public void setSales(String sales) {
		this.sales = sales;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSnum() {
		return snum;
	}
	public void setSnum(String snum) {
		this.snum = snum;
	}
}