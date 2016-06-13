package VO;

import java.io.Serializable;

public class stateVO implements Serializable {
 private long stateid;
 private String addstatename;
 private String statedescription;
 private Long countryId;
 public long getStateid() {
	return stateid;
}
public void setStateid(long stateid) {
	this.stateid = stateid;
}
public String getAddstatename() {
	return addstatename;
}
public void setAddstatename(String addstatename) {
	this.addstatename = addstatename;
}
public String getStatedescription() {
	return statedescription;
}
public void setStatedescription(String statedescription) {
	this.statedescription = statedescription;
}
public Long getCountryId() {
	return countryId;
}
public void setCountryId(Long countryId) {
	this.countryId = countryId;
}

}
