package VO;

public class subcategoryVO {
	private  long subcatid;
	private String subcategoryname;
	private String subcatdes;
	private Long catId;
	public long getSubcatid() {
		return subcatid;
	}
	public void setSubcatid(long subcatid) {
		this.subcatid = subcatid;
	}
	public String getSubcategoryname() {
		return subcategoryname;
	}
	public void setSubcategoryname(String subcategoryname) {
		this.subcategoryname = subcategoryname;
	}
	public String getSubcatdes() {
		return subcatdes;
	}
	public void setSubcatdes(String subcatdes) {
		this.subcatdes = subcatdes;
	}
	public Long getCatId() {
		return catId;
	}
	public void setCatId(Long catId) {
		this.catId = catId;
	}
	
}
