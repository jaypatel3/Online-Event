package VO;

public class schemeVO {
	private long schemeid;
	 private Long categoryid;
	 private Long subcategoryid;
	 private String schemename;
	 private String schemedes;
 public long getSchemeid() {
		return schemeid;
	}
	public void setSchemeid(long schemeid) {
		this.schemeid = schemeid;
	}
	public Long getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(Long categoryid) {
		this.categoryid = categoryid;
	}
	public Long getSubcategoryid() {
		return subcategoryid;
	}
	public void setSubcategoryid(Long subcategoryid) {
		this.subcategoryid = subcategoryid;
	}
	public String getSchemename() {
		return schemename;
	}
	public void setSchemename(String schemename) {
		this.schemename = schemename;
	}
	public String getSchemedes() {
		return schemedes;
	}
	public void setSchemedes(String schemedes) {
		this.schemedes = schemedes;
	}

}
