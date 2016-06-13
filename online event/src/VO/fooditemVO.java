package VO;

public class fooditemVO {
 private long fooditemid;
 private Long foodcategoryid;
 
 private Long foodsubcategoryid;
 private String fooditemname;
 private String fooditemdes;
 private String fooditempic;
 private String fooditemprice;
 public String getFooditemprice() {
	return fooditemprice;
}
public void setFooditemprice(String fooditemprice) {
	this.fooditemprice = fooditemprice;
}

 public long getFooditemid() {
	return fooditemid;
}
public void setFooditemid(long fooditemid) {
	this.fooditemid = fooditemid;
}
public Long getFoodcategoryid() {
	return foodcategoryid;
}
public void setFoodcategoryid(Long foodcategoryid) {
	this.foodcategoryid = foodcategoryid;
}
public Long getFoodsubcategoryid() {
	return foodsubcategoryid;
}
public void setFoodsubcategoryid(Long foodsubcategoryid) {
	this.foodsubcategoryid = foodsubcategoryid;
}
public String getFooditemname() {
	return fooditemname;
}
public void setFooditemname(String fooditemname) {
	this.fooditemname = fooditemname;
}
public String getFooditemdes() {
	return fooditemdes;
}
public void setFooditemdes(String fooditemdes) {
	this.fooditemdes = fooditemdes;
}
public String getFooditempic() {
	return fooditempic;
}
public void setFooditempic(String fooditempic) {
	this.fooditempic = fooditempic;
}

}
