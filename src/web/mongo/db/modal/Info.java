package web.mongo.db.modal;

public class Info {
	String adtype;
	String post_title;
	String City;
	String postal;
	String Description;
	String email;
	String phone;
	String contactname;
	
	public Info() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Info(String adtype, String post_title, String city, String postal, String description, String email,
			String phone, String contactname) {
		super();
		this.adtype = adtype;
		this.post_title = post_title;
		City = city;
		this.postal = postal;
		Description = description;
		this.email = email;
		this.phone = phone;
		this.contactname = contactname;
	}
	public String getAdtype() {
		return adtype;
	}
	public void setAdtype(String adtype) {
		this.adtype = adtype;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getPostal() {
		return postal;
	}
	public void setPostal(String postal) {
		this.postal = postal;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getContactname() {
		return contactname;
	}
	public void setContactname(String contactname) {
		this.contactname = contactname;
	}
	
}
