package VO;

public class cityVO {
	private long cityid;
	private Long stateid;
	private Long countryid;
	private String citydescription;
	private String cityname;
	public String getCityname() {
		return cityname;
	}
	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
	public long getCityid() {
		return cityid;
	}
	public void setCityid(long cityid) {
		this.cityid = cityid;
	}
	public Long getStateid() {
		return stateid;
	}
	public void setStateid(Long stateid) {
		this.stateid = stateid;
	}
	public Long getCountryid() {
		return countryid;
	}
	public void setCountryid(Long countryid) {
		this.countryid = countryid;
	}
	public String getCitydescription() {
		return citydescription;
	}
	public void setCitydescription(String citydescription) {
		this.citydescription = citydescription;
	}
	
	

}
