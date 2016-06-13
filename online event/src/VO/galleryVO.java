 package VO;

 public  class galleryVO {
 private long galleryid;
 private Long categoryid;
 private long subcategoryid;
 private String photoname;
 private String photo;
 private String photodes;
 public String getPhoto() {
	return photo;
}
public void setPhoto(String photo) {
	this.photo = photo;
}

 public long getGalleryid() {
	return galleryid;
}
public void setGalleryid(long galleryid) {
	this.galleryid = galleryid;
}
public Long getCategoryid() {
	return categoryid;
}
public void setCategoryid(Long categoryid) {
	this.categoryid = categoryid;
}
public long getSubcategoryid() {
	return subcategoryid;
}
public void setSubcategoryid(long subcategoryid) {
	this.subcategoryid = subcategoryid;
}
public String getPhotoname() {
	return photoname;
}
public void setPhotoname(String photoname) {
	this.photoname = photoname;
}

public String getPhotodes() {
	return photodes;
}
public void setPhotodes(String photodes) {
	this.photodes = photodes;
}

}
