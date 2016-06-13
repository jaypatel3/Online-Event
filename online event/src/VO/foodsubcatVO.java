package VO;

import java.io.Serializable;

public class foodsubcatVO implements  Serializable {
	private long foodsbubcatid;
	private String foodsubcatname;
	 private String foodsubcatdes;
	 private Long foodcatid;

	 public long getFoodsbubcatid() {
		return foodsbubcatid;
	}
	public void setFoodsbubcatid(long foodsbubcatid) {
		this.foodsbubcatid = foodsbubcatid;
	}
	public String getFoodsubcatname() {
		return foodsubcatname;
	}
	public void setFoodsubcatname(String foodsubcatname) {
		this.foodsubcatname = foodsubcatname;
	}
	public String getFoodsubcatdes() {
		return foodsubcatdes;
	}
	public void setFoodsubcatdes(String foodsubcatdes) {
		this.foodsubcatdes = foodsubcatdes;
	}
	public Long getFoodcatid() {
		return foodcatid;
	}
	public void setFoodcatid(Long foodcatid) {
		this.foodcatid = foodcatid;
	}
	
}
