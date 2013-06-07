package ACTION;

import DAO.USER.userDAO;

import PO.USER.user;

import com.opensymphony.xwork2.Action;

public class users implements Action {

	user ur=new user();
	public user getUr() {
		return ur;
	}
	public void setUr(user ur) {
		this.ur = ur;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		userDAO ud=new userDAO();
		Long id=1L;
		ur=ud.getuser(id);
		return "success";
	}

}
