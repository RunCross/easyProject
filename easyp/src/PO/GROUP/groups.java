package PO.GROUP;

import java.math.BigInteger;

import PO.PROJECT.project;
import PO.USER.user;

public class groups {
private BigInteger gid;
private user gcreater;
private String gname;
private project gpro;


public BigInteger getGid() {
	return gid;
}
public void setGid(BigInteger gid) {
	this.gid = gid;
}
public user getGcreater() {
	return gcreater;
}
public void setGcreater(user gcreater) {
	this.gcreater = gcreater;
}
public String getGname() {
	return gname;
}
public void setGname(String gname) {
	this.gname = gname;
}
public project getGpro() {
	return gpro;
}
public void setGpro(project gpro) {
	this.gpro = gpro;
}



}

