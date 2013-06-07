package ACTION.PROJECT;


import DAO.PROJECT.projectDAO;
import PO.PROJECT.project;


import com.opensymphony.xwork2.Action;

public class proEditAction implements Action {
private project pro;


public project getPro() {
	return pro;
}


public void setPro(project pro) {
	this.pro = pro;
}


@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		projectDAO proDao=new projectDAO();
		
		
		
		proDao.updateProject(pro);
		
		return "SUCCESS";
	}

}
