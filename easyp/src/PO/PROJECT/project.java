package PO.PROJECT;

import java.math.BigInteger;
import java.sql.Date;

import PO.USER.user;

public class project {
    private BigInteger pid;
	private String pname;
    private Date ctime;
    private Date ectime;
    private String profile;
    private int psec;
    private user manager;
    public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	public Date getCtime() {
		return ctime;
	}
	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}
	public Date getEctime() {
		return ectime;
	}
	public void setEctime(Date ectime) {
		this.ectime = ectime;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public int getPsec() {
		return psec;
	}
	public void setPsec(int psec) {
		this.psec = psec;
	}
	public BigInteger getPid() {
		return pid;
	}
	public void setPid(BigInteger pid) {
		this.pid = pid;
	}
	public user getManager() {
		return manager;
	}
	public void setManager(user manager) {
		this.manager = manager;
	}
 

}
