
package ACTION.PROJECT;


import java.util.ArrayList;
import java.util.List;





import DAO.PROJECT.projectDAO;

import com.opensymphony.xwork2.Action;

public class proListAction implements Action {
private List proList;
	

public List getProList() {
	return proList;
}


public void setProList(List proList) {
	this.proList = proList;
}


@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
	proList = new ArrayList();
	projectDAO proDao = new projectDAO();
	proList = proDao.getProjectList();	
	return "SUCCESS";
	}

}
