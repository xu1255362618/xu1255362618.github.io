package xueshenghui;

public class Bean {

	public Bean() {
		// TODO Auto-generated constructor stub
	}
	   private int id;
	    private String hubie;
	    private String livetype;
	    private int area;
	    private int roomnum;
	    private String name;
	    private String idcard; 
	    private String sex;
	    private String nation;
	    private String education;
	    
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getHubie() {
			return hubie;
		}
		public void setHubie(String hubie) {
			this.hubie = hubie;
		}
		public String getLivetype() {
			return livetype;
		}
		public void setLivetype(String livetype) {
			this.livetype = livetype;
		}
		public int getArea() {
			return area;
		}
		public void setArea(int area) {
			this.area = area;
		}
		public int getRoomnum() {
			return roomnum;
		}
		public void setRoomnum(int roomnum) {
			this.roomnum = roomnum;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getIdcard() {
			return idcard;
		}
		public void setIdcard(String idcard) {
			this.idcard = idcard;
		}
		public String getSex() {
			return sex;
		}
		public void setSex(String sex) {
			this.sex = sex;
		}
		public String getNation() {
			return nation;
		}
		public void setNation(String nation) {
			this.nation = nation;
		}
		public String getEducation() {
			return education;
		}
		public void setEducation(String education) {
			this.education = education;
		}
		  public Bean(int id, String hubie, String livetype, int area, int roomnum, String name, String idcard,String sex, String nation, String education) {
		        this.id = id;
		        this.hubie = hubie;
		        this.livetype = livetype;
		        this.area = area;
		        this.roomnum = roomnum;
		        this.name = name;
		        this.idcard = idcard;
		        this.sex = sex;
		        this.nation = nation;
		        this.education = education;
		    }
		  public String toString() {
		        return "Census{" +
		                "id=" + id +
		                ", hubie='" + hubie + '\'' +
		                ", livetype='" + livetype + '\'' +
		                ", area=" + area +
		                ", roomnum=" + roomnum +
		                ", name='" + name + '\'' +
		                ", idcard='" + idcard + '\'' +
		                ", sex='" + sex + '\'' +
		                ", nation='" + nation + '\'' +
		                ", education='" + education + '\'' +
		                '}';
		    }

}
