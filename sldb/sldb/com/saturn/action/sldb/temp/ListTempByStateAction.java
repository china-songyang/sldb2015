package com.saturn.action.sldb.temp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saturn.app.db.ListData;
import com.saturn.app.utils.BeanUtils;
import com.saturn.app.utils.JSONUtils;
import com.saturn.app.web.IAction;
import com.saturn.app.web.IView;
import com.saturn.app.web.easyui.DataGridInfo;
import com.saturn.app.web.view.JsonView;
import com.saturn.auth.User;
import com.saturn.sldb.Temporary;

public class ListTempByStateAction implements IAction{
	@Override
	public IView execute(HttpServletRequest request,
			HttpServletResponse response) {
		DataGridInfo dataGridInfo = new DataGridInfo(request);

		Temporary vo = BeanUtils.getBean(request, Temporary.class);

		User user = (User)request.getSession().getAttribute("authUser");
		/*User userOragantion = User.getOrganizationsByOrganizationId(user.getId());*/
		/*救助中心的人查看所有人申报信息*/
		/*if("21".equals(userOragantion.getOrganizationId())){
			ListData<Temporary> data = Temporary.getAllWithoutCreater(vo, dataGridInfo.getStartPage(),
					dataGridInfo.getRows(), dataGridInfo.getSortId(),
					dataGridInfo.getOreder());

			return new JsonView(JSONUtils.getDataGridJSON(data.getTotal(),
					data.getList()));
		}else{*/
			vo.setCreater(user.getId());
			ListData<Temporary> data = Temporary.getAllWithoutCreater(vo, dataGridInfo.getStartPage(),
					dataGridInfo.getRows(), dataGridInfo.getSortId(),
					dataGridInfo.getOreder());

			return new JsonView(JSONUtils.getDataGridJSON(data.getTotal(),
					data.getList()));
		}
	/*}*/
	@Override
	public String requestMapping() {
		// TODO Auto-generated method stub
		return "/app/sldb/temp/listTempByState.action";
	}
}
