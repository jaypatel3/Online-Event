package VO;

public class CategoryVO {

	private long id;
	private String catName;
	private String catDesc;
	public long getId() {
		return id;
	}
	public  void setId(long id) {
		this.id = id;
	}
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	public String getCatDesc() {
		return catDesc;
	}
	public void setCatDesc(String catDesc) {
		this.catDesc = catDesc;
	}
	
}
