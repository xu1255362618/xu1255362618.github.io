package jinding;

public class User {

	public User() {
		// TODO Auto-generated constructor stub
	}
	private int id;
	private String name;
	private String sex;
	private String age;
	private String phone;
	private String possion;
	private String username;
	private int pid;
	private String password;
	
	public int getId() {
		return id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPossion() {
		return possion;
	}
	public void setPossion(String possion) {
		this.possion = possion;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String uername) {
		this.username = uername;
	}
	public User(String name,String sex,String age,String phone,String possion,String username,int pid,String password) {
	this.name=name;
	this.sex=sex;
	this.age=age;
	this.phone=phone;
	this.possion=possion;
	this.username=username;
	this.pid=pid;
	this.password=password;
	}
}
