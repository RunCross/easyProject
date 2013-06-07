package ACTION.PROJECT;

import java.math.BigInteger;
import java.util.List;




import DAO.PROJECT.projectDAO;
import DAO.USER.userDAO;
import PO.PROJECT.project;




import com.opensymphony.xwork2.Action;

public class proPreEditAction implements Action {
	 private BigInteger pid;
	private project pro;
	private List userList;
	
	
	public BigInteger getPid() {
		return pid;
	}


	public void setPid(BigInteger pid) {
		this.pid = pid;
	}


	public project getPro() {
		return pro;
	}


	public void setPro(project pro) {
		this.pro = pro;
	}


	public List getUserList() {
		return userList;
	}


	public void setUserList(List userList) {
		this.userList = userList;
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		projectDAO proDao = new projectDAO();
		pro = proDao.getProject(pid);
		
		userDAO usDao = new userDAO();
		userList = usDao.getuserlist();
		
		return "SUCCESS";
	}

}
