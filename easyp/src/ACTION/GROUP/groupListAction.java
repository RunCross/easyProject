package ACTION.GROUP;

import java.util.List;

import DAO.GROUP.groupDAO;

import com.opensymphony.xwork2.Action;

public class groupListAction implements Action {

	private List groList;
	
	public List getGroList() {
		return groList;
	}




	public void setGroList(List groList) {
		this.groList = groList;
	}




	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		groupDAO groDao=new groupDAO();
		groList=groDao.getGroupList();
		
		
		return "SUCCESS";
	}

}
