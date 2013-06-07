package ACTION.GROUP;

import java.util.List;

import DAO.PROJECT.projectDAO;
import DAO.USER.userDAO;

import com.opensymphony.xwork2.Action;

public class groupPreAction implements Action {

private	List userList;
private List proList;

	
	public List getUserList() {
	return userList;
}



public void setUserList(List userList) {
	this.userList = userList;
}



public List getProList() {
	return proList;
}



public void setProList(List proList) {
	this.proList = proList;
}



	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		userDAO usDao=new userDAO();
		userList=usDao.getuserlist();
		
		projectDAO proDao=new projectDAO();
		proList=proDao.getProjectList();
		
		return "SUCCESS";
	}

}
