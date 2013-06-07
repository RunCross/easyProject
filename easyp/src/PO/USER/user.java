package PO.USER;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class user {
	private Long id;
	private String name;
	private String passw;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}	
	public String getPassw() {
		return passw;
	}
	public void setPassw(String passw) {
		this.passw = passw;
	}
	
}
