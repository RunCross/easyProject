package ACTION.PROJECT;

import java.util.ArrayList;
import java.util.List;

import DAO.USER.userDAO;


import com.opensymphony.xwork2.Action;

public class proPreAction implements Action {

	private List userList;
public List getUserList() {
		return userList;
	}
public void setUserList(List userList) {
		this.userList = userList;
	}





	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		userList = new ArrayList();
	    userDAO usDao=new userDAO();
		userList=usDao.getuserlist();
	    return "SUCCESS";	
		
		
	}

}
