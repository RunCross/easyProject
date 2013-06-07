package ACTION.PROJECT;

import java.math.BigInteger;



import DAO.PROJECT.projectDAO;

import com.opensymphony.xwork2.Action;

public class proDeleteAction implements Action {
	 private BigInteger pid;
	
	 public BigInteger getPid() {
		return pid;
	}

	public void setPid(BigInteger pid) {
		this.pid = pid;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		projectDAO proDao=new projectDAO();
		proDao.deleteProject(pid);
		return "SUCCESS";
	}

}
