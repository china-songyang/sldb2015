<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.saturn.auth.User"%>
<%@page import="com.saturn.app.utils.DateUtils"%>
<%@page import="com.saturn.auth.Organization"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加临时救助信息</title>
<%@ include file="/app/includes/header.jsp"%>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 24px;
	font-weight: bold;
}
-->
input {
		border:none;
	}
	table tr td{border-right:1px solid black;border-bottom:1px solid black;}
</style>
<script> 
function submit(){ 
if(editForm.name.value==""){ 
alert("申请人姓名不能为空"); 
}else if(editForm.identify.value==""){ 
alert("身份证不能为空"); 
}else if($('#marry').combogrid('getValue')==""){ 
alert("婚姻状况不能为空"); 
}else if(editForm.ill.value==""){ 
alert("患病名称不能为空"); 
}else if(editForm.disability.value==""){ 
alert("残疾等级不能为空"); 
}else if(editForm.family.value==""){ 
alert("家庭人口不能为空"); 
}else if($('#labor').combogrid('getValue')==""){ 
alert("劳动能力不能为空"); 
}else if($('#familyClass').combogrid('getValue')==""){
alert("家庭类别不能为空"); 
}else if(editForm.total.value==""){ 
alert("家庭总收入不能为空"); 
}else if(editForm.income.value==""){ 
alert("收入来源不能为空"); 
}else if(editForm.spending.value==""){ 
alert("家庭总支出不能为空"); 
}else if(editForm.purpose.value==""){ 
alert("支出用途不能为空"); 
}else if($('#accountType').combogrid('getValue')==""){
alert("户口不能为空"); 
}else if(editForm.money.value==""){
alert("审批金额不能为空！"); 
} else{
	$('#editForm').submit();
}
} 
$(function() {
	$('#marry').focus();
	$('#marry').combobox({
		value : '${society.marry }',
		onSelect:function(record){
			$('#marry').val(record.text);
	    }
	});
	
	$('#labor').combobox({
		value : '${society.labor }',
		onSelect:function(record){
			$('#labor').val(record.text);
	    }
	});
	
	$('#familyClass').combobox({
		value : '${society.familyClass }',
		onSelect:function(record){
			$('#familyClass').val(record.text);
	    }
	});
	
	$('#accountType').combobox({
		value : '${society.accountType }',
		onSelect:function(record){
			$('#accountType').val(record.text);
	    }
	});
	//同户人信息1
	$('#c_relation0').combobox({
		value : '${subs[0].relation }',
		onSelect:function(record){
			$('#c_relation0').val(record.text);
	    }
	});
	
	$('#c_marry0').combobox({
		value : '${subs[0].marry }',
		onSelect:function(record){
			$('#c_marry0').val(record.text);
	    }
	});
	
	$('#c_labor0').combobox({
		value : '${subs[0].labor }',
		onSelect:function(record){
			$('#c_labor0').val(record.text);
	    }
	});
	//同户人信息2
	$('#c_relation1').combobox({
		value : '${subs[1].relation }',
		onSelect:function(record){
			$('#c_relation1').val(record.text);
	    }
	});
	
	$('#c_marry1').combobox({
		value : '${subs[1].marry }',
		onSelect:function(record){
			$('#c_marry1').val(record.text);
	    }
	});
	
	$('#c_labor1').combobox({
		value : '${subs[1].labor }',
		onSelect:function(record){
			$('#c_labor1').val(record.text);
	    }
	});
	//同户人信息3
	$('#c_relation2').combobox({
		value : '${subs[2].relation }',
		onSelect:function(record){
			$('#c_relation2').val(record.text);
	    }
	});
	
	$('#c_marry2').combobox({
		value : '${subs[2].marry }',
		onSelect:function(record){
			$('#c_marry2').val(record.text);
	    }
	});
	
	$('#c_labor2').combobox({
		value : '${subs[2].labor }',
		onSelect:function(record){
			$('#c_labor2').val(record.text);
	    }
	});
	//同户人信息4
	$('#c_relation3').combobox({
		value : '${subs[3].relation }',
		onSelect:function(record){
			$('#c_relation3').val(record.text);
	    }
	});
	
	$('#c_marry3').combobox({
		value : '${subs[3].marry }',
		onSelect:function(record){
			$('#c_marry3').val(record.text);
	    }
	});
	
	$('#c_labor3').combobox({
		value : '${subs[3].labor }',
		onSelect:function(record){
			$('#c_labor3').val(record.text);
	    }
	});
	//同户人信息5
	$('#c_relation4').combobox({
		value : '${subs[4].relation }',
		onSelect:function(record){
			$('#c_relation4').val(record.text);
	    }
	});
	
	$('#c_marry4').combobox({
		value : '${subs[4].marry }',
		onSelect:function(record){
			$('#c_marry4').val(record.text);
	    }
	});
	
	$('#c_labor4').combobox({
		value : '${subs[4].labor }',
		onSelect:function(record){
			$('#c_labor4').val(record.text);
	    }
	});
	//同户人信息6
	$('#c_relation5').combobox({
		value : '${subs[5].relation }',
		onSelect:function(record){
			$('#c_relation5').val(record.text);
	    }
	});
	
	$('#c_marry5').combobox({
		value : '${subs[5].marry }',
		onSelect:function(record){
			$('#c_marry5').val(record.text);
	    }
	});
	
	$('#c_labor5').combobox({
		value : '${subs[5].labor }',
		onSelect:function(record){
			$('#c_labor5').val(record.text);
	    }
	});
	
	
});
</script> 
</head>
<body>
	<form id="editForm"  action="<%=request.getContextPath()%>/app/sldb/society/update.action" method="post">
		<input type="hidden" id="id" name="id" value="${society.id }" />
		<input id="createTime" name="createTime" type="hidden" value="${society.createTime }"></input>
			<input id="creater" name="creater" type="hidden" value="${society.creater }"></input>
			<input id="createrName" name="createrName" type="hidden" value="${society.createrName }"></input>
			<input id="createrDepartment" name="createrDepartment"  type="hidden" value="${society.createrDepartment }"></input>
			<input id="state" name="state" type="hidden" value="${society.state }"></input>
			<input id="type" name="type" type="hidden" value="${society.type }"></input>
		<OBJECT classid="clsid:10946843-7507-44FE-ACE8-2B3483D179B7"
			id="CVR_IDCard" name="CVR_IDCard" width="0" height="0"> </OBJECT>

		<script language="javascript" type="text/javascript">
				function ClearForm() {
					document.getElementById('name').value = "";
                    document.getElementById('sex').value = "";
                    document.getElementById('identify').value =  "";
                    document.getElementById('permanent').value = ""; 
                    document.getElementById('picture').src = "";
                     /*  document.all['name'].value = ""; 
                      document.all['sex'].value = ""; 
                      document.all['race'].value = ""; 
                     // document.all['Born'].value = ""; 
                      document.all['address'].value = ""; 
                      document.all['identify'].value = "";  */
                      /* document.all['IssuedAt'].value = ""; 
                      document.all['EffectedDate'].value = ""; 
                      document.all['ExpiredDate'].value = ""; 
                      document.all['SAMID'].value = ""; 
                      document.all['pic'].src = ""; 
                      document.all['Picture'].value = "";  
                      document.all['PictureLen'].value = "";     */ 
                      return true;
				}
				function Button1_onclick() {
                   	var CVR_IDCard = document.getElementById("CVR_IDCard");					
					var strReadResult = CVR_IDCard.ReadCard();
					if(strReadResult == "0")
					{
						ClearForm();
					    /* document.all['name'].value = CVR_IDCard.Name;  
                        document.all['sex'].value = CVR_IDCard.Sex;    
                        document.all['race'].value = CVR_IDCard.Nation; 
                        //document.all['Born'].value = CVR_IDCard.Born;  //出生日期    
                        document.all['address'].value = CVR_IDCard.Address; 
                        document.all['identify'].value = CVR_IDCard.CardNo;  */
                        document.getElementById('name').value =  CVR_IDCard.Name;
                        document.getElementById('sex').value =  CVR_IDCard.Sex;
                        document.getElementById('identify').value =  CVR_IDCard.CardNo;
                        document.getElementById('permanent').value = CVR_IDCard.Address; 
                        document.getElementById('picture').src = "data:image/jpg;base64,"+CVR_IDCard.Picture;
                        document.getElementById('photo').value = CVR_IDCard.Picture;
                      /*   document.all['IssuedAt'].value = CVR_IDCard.IssuedAt; //签发机关
                        document.all['EffectedDate'].value = CVR_IDCard.EffectedDate;  //有效期限
                        document.all['ExpiredDate'].value = CVR_IDCard.ExpiredDate; //有效期限
                        document.all['SAMID'].value = CVR_IDCard.SAMID; //模块号码
                        //document.all['pic'].src = CVR_IDCard.Pic;
                        document.all['pic'].src = "data:image/jpg;base64,"+CVR_IDCard.Picture;
                        document.all['Picture'].value = CVR_IDCard.Picture; //照片编码
                        document.all['PictureLen'].value = CVR_IDCard.PictureLen; */ //编码长度
                   }else{
                        ClearForm();
                        alert(strReadResult);
                   }
				}

		</script>
		<center>
		<!-- <a href="#" onclick="Button1_onclick()" class="easyui-linkbutton" id="Button1">读   卡</a> -->
		<a href="#" onclick="submit()" class="easyui-linkbutton" id="Button1">提   交</a>
		<a href="#" onclick="ClearForm()" class="easyui-linkbutton" id="Button2">清   空</a>
		<a href="#" onclick="window.location.href='<%=request.getContextPath()%>/app/sldb/society/apply/show.jsp'" class="easyui-linkbutton" id="Button2">返   回</a>
		<p>
		<table width="900" style="border-left:1px solid black; border-top:1px solid black;" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
  <tr>
    <td height="60" colspan="9" bgcolor="#CCCCCC"><div align="center" class="STYLE1">双辽市城乡居民临时救助申请审批表</div>      <div align="right">编号：<input id="numberNO" style="width: 200px;" name="numberNO" value="${society.numberNO }" style="border: none; background-color:#CCCCCC"/></div></td>
  </tr>
  
  <tr>
    <td width="40" rowspan="6" align="center" valign="middle" nowrap="nowrap" bgcolor="#CCCCCC"><p>户</p>
    <p>主</p>
    <p>信</p>
    <p>息</p></td>
    <td width="85" height="33" align="center" nowrap="nowrap" ><span style="color: red">*</span>姓名</td>
    <td width="111" height="33" nowrap="nowrap"><input id="name" type="text" name="name"  value="${society.name }" readonly="readonly" /></td>
    <td width="123" height="33" align="center" nowrap="nowrap" ><span style="color: red">*</span>性别</td>
    <td width="101" height="33" nowrap="nowrap"><input id="sex" type="text" name="sex" value="${society.sex }" readonly="readonly" /></td>
    <td width="116" height="33" align="center" nowrap="nowrap" ><span style="color: red">*</span>身份证号</td>
    <td height="33" colspan="2" nowrap="nowrap"><input id="identify" type="text" name="identify"  value="${society.identify }" readonly="readonly" /></td>
    <td width="102" rowspan="3" align="center" nowrap="nowrap"><img src="data:image/jpg;base64,${society.photo }" style="width: 80px; height: 90px" id="picture" name="picture" /></td>
  </tr>
  <tr>
    <td width="85" height="26" align="center" nowrap="nowrap" ><span style="color: red">*</span>婚姻<br>状况</td>
    <td width="111" height="26" nowrap="nowrap"><select id="marry" class="easyui-combobox" 
								name="marry" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.marry" valueField="id"
								textField="text" editable="false" panelHeight="90"></select></td>
    <td width="123" height="26" align="center" nowrap="nowrap" ><span style="color: red">*</span>患病<br>
    名称</td>
    <td width="101" height="26" nowrap="nowrap"><input id="ill" type="text" name="ill"  value="${society.ill }" /></td>
    <td width="116" height="26" align="center" nowrap="nowrap" ><span style="color: red">*</span>残疾类别<br>
    和等级</td>
    <td height="26" colspan="2" nowrap="nowrap"><input id="disability" type="text" name="disability" value="${society.disability }" /></td>
  </tr>
  <tr>
    <td width="85" height="33" align="center" nowrap="nowrap" ><span style="color: red">*</span>家庭人口</td>
    <td width="111" height="33" nowrap="nowrap"><input id="family" type="text" name="family" value="${society.family }" /></td>
    <td height="33" colspan="2" align="center" nowrap="nowrap" ><span style="color: red">*</span>劳动能力</td>
    <td width="116" height="33" nowrap="nowrap"><select id="labor" class="easyui-combobox" 
								name="labor" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.workable" valueField="id"
								textField="text" editable="false" panelHeight="70"></select></td>
    <td width="93" height="33" align="center" nowrap="nowrap" ><span style="color: red">*</span>家庭类别</td>
    <td width="109" height="33" nowrap="nowrap"><select id="familyClass" class="easyui-combobox" 
								name="familyClass" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.home" valueField="id"
								textField="text" editable="false"></select></td>
  </tr>
  <tr>
    <td width="85" height="26" align="center" nowrap="nowrap" ><span style="color: red">*</span>家庭总收入<br>
    (元/年)</td>
    <td width="111" height="26" nowrap="nowrap"><input id="total" type="text" name="total" value="${society.total }" /></td>
    <td height="26" colspan="2" align="center" nowrap="nowrap" ><span style="color: red">*</span>收入来源</td>
    <td height="26" colspan="4" nowrap="nowrap"><input id="income" type="text" name="income" value="${society.income }"/></td>
  </tr>
  <tr>
    <td width="85" height="26" align="center" nowrap="nowrap" ><span style="color: red">*</span>家庭总支出<br>
    (元/年)</td>
    <td width="111" height="26" nowrap="nowrap"><input id="spending" type="text" name="spending" value="${society.spending }"/></td>
    <td height="26" colspan="2" align="center" nowrap="nowrap" ><span style="color: red">*</span>支出用途</td>
    <td height="26" colspan="4" nowrap="nowrap"><input id="purpose" type="text" name="purpose" value="${society.purpose }" /></td>
  </tr>
  <tr>
    <td width="85" height="30" align="center" nowrap="nowrap" ><span style="color: red">*</span>户口类型</td>
    <td width="111" height="30" nowrap="nowrap"><select id="accountType" class="easyui-combobox" 
								name="accountType" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.hukou" valueField="id"
								textField="text" editable="false" panelHeight="50"></select></td>
    <td width="123" height="30" align="center" nowrap="nowrap" ><span style="color: red">*</span>家庭住址</td>
    <td height="30" colspan="5" nowrap="nowrap"><input id="address" type="text" name="address" size="100" readonly="readonly"/></td>
  </tr>
  <tr>
    <td width="40" rowspan="7" align="center" nowrap="nowrap" bgcolor="#CCCCCC">同<br>
    住<br>其<br>他<br>成<br>员<br>情<br>况    </td>
    <td width="85" height="34" align="center" nowrap="nowrap" >姓名</td>
    <td width="111" height="34" align="center" nowrap="nowrap" >性别</td>
    <td width="123" height="34" align="center" nowrap="nowrap" >身份证号</td>
    <td width="101" height="34" align="center" nowrap="nowrap" >与户主关系</td>
    <td width="116" height="34" align="center" nowrap="nowrap" >婚姻状况</td>
    <td width="93" height="34" align="center" nowrap="nowrap" >患病名称</td>
    <td width="109" height="34" align="center" nowrap="nowrap" >残疾类别和等级</td>
    <td width="102" height="34" align="center" nowrap="nowrap" >劳动能力</td>
  </tr>
  <tr>
    <td width="85" height="31" nowrap="nowrap"><input id="c_name0" type="text" name="c_name" size="12" value="${subs[0].name }"/></td>
    <td width="111" height="31" nowrap="nowrap"><input id="c_sex0" type="text" name="c_sex" size="15" value="${subs[0].sex }"/></td>
    <td width="123" height="31" nowrap="nowrap"><input id="c_identify0" type="text" name="c_identify" size="20" value="${subs[0].identify }" /></td>
    <td width="101" height="31" nowrap="nowrap"><select id="c_relation0" class="easyui-combobox"
								name="c_relation" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.relation" valueField="id"
								textField="text" editable="false" panelHeight="70"></select></td>
    <td width="116" height="31" nowrap="nowrap"><select id="c_marry0" class="easyui-combobox" name="c_marry" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.marry" 
		    valueField="id" textField="text" editable="false" panelHeight="90"></select></td>
    <td width="93" height="31" nowrap="nowrap"><input id="c_ill0" type="text" name="c_ill" size="15" value="${subs[0].ill }"/></td>
    <td width="109" height="31" nowrap="nowrap"><input id="c_disability0" type="text" name="c_disability" size="15" value="${subs[0].disability }" /></td>
    <td width="102" height="31" nowrap="nowrap"><select id="c_labor0" class="easyui-combobox" name="c_labor" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.workable" 
		    valueField="id" textField="text" editable="true" panelHeight="70"></select></td>
	<td width="93" height="31" nowrap="nowrap"><input id="c_inputType0" type="hidden" name="c_inputType" value="${subs[0].inputType }"/></td>
  </tr>
 <tr>
    <td width="85" height="31" nowrap="nowrap"><input id="c_name1" type="text" name="c_name" size="12" value="${subs[1].name }"/></td>
    <td width="111" height="31" nowrap="nowrap"><input id="c_sex1" type="text" name="c_sex" size="15" value="${subs[1].sex }"/></td>
    <td width="123" height="31" nowrap="nowrap"><input id="c_identify1" type="text" name="c_identify" size="20" value="${subs[1].identify }" /></td>
    <td width="101" height="31" nowrap="nowrap"><select id="c_relation1" class="easyui-combobox"
								name="c_relation" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.relation" valueField="id"
								textField="text" editable="false" panelHeight="70"></select></td>
    <td width="116" height="31" nowrap="nowrap"><select id="c_marry1" class="easyui-combobox" name="c_marry" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.marry" 
		    valueField="id" textField="text" editable="true" panelHeight="90"></select></td>
    <td width="93" height="31" nowrap="nowrap"><input id="c_ill1" type="text" name="c_ill" size="15" value="${subs[1].ill }"/></td>
    <td width="109" height="31" nowrap="nowrap"><input id="c_disability1" type="text" name="c_disability" size="15" value="${subs[1].disability }" /></td>
    <td width="102" height="31" nowrap="nowrap"><select id="c_labor1" class="easyui-combobox" name="c_labor" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.workable" 
		    valueField="id" textField="text" editable="true" panelHeight="70"></select></td>
		    <td width="93" height="31" nowrap="nowrap"><input id="c_inputType1" type="hidden" name="c_inputType" value="${subs[1].inputType }"/></td>
  </tr>
  <tr>
    <td width="85" height="31" nowrap="nowrap"><input id="c_name2" type="text" name="c_name" size="12" value="${subs[2].name }"/></td>
    <td width="111" height="31" nowrap="nowrap"><input id="c_sex2" type="text" name="c_sex" size="15" value="${subs[2].sex }"/></td>
    <td width="123" height="31" nowrap="nowrap"><input id="c_identify2" type="text" name="c_identify" size="20" value="${subs[2].identify }" /></td>
    <td width="101" height="31" nowrap="nowrap"><select id="c_relation2" class="easyui-combobox"
								name="c_relation" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.relation" valueField="id"
								textField="text" editable="false" panelHeight="70"></select></td>
    <td width="116" height="31" nowrap="nowrap"><select id="c_marry2" class="easyui-combobox" name="c_marry" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.marry" 
		    valueField="id" textField="text" editable="true" panelHeight="90"></select></td>
    <td width="93" height="31" nowrap="nowrap"><input id="c_ill2" type="text" name="c_ill" size="15" value="${subs[2].ill }"/></td>
    <td width="109" height="31" nowrap="nowrap"><input id="c_disability2" type="text" name="c_disability" size="15" value="${subs[2].disability }" /></td>
    <td width="102" height="31" nowrap="nowrap"><select id="c_labor2" class="easyui-combobox" name="c_labor" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.workable" 
		    valueField="id" textField="text" editable="true" panelHeight="70"></select></td>
	<td width="93" height="31" nowrap="nowrap"><input id="c_inputType2" type="hidden" name="c_inputType" value="${subs[2].inputType }"/></td>
  </tr>
  <tr>
    <td width="85" height="31" nowrap="nowrap"><input id="c_name3" type="text" name="c_name" size="12" value="${subs[3].name }"/></td>
    <td width="111" height="31" nowrap="nowrap"><input id="c_sex3" type="text" name="c_sex" size="15" value="${subs[3].sex }"/></td>
    <td width="123" height="31" nowrap="nowrap"><input id="c_identify3" type="text" name="c_identify" size="20" value="${subs[3].identify }" /></td>
    <td width="101" height="31" nowrap="nowrap"><select id="c_relation3" class="easyui-combobox"
								name="c_relation" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.relation" valueField="id"
								textField="text" editable="false" panelHeight="70"></select></td>
    <td width="116" height="31" nowrap="nowrap"><select id="c_marry3" class="easyui-combobox" name="c_marry" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.marry" 
		    valueField="id" textField="text" editable="true" panelHeight="90"></select></td>
    <td width="93" height="31" nowrap="nowrap"><input id="c_ill3" type="text" name="c_ill" size="15" value="${subs[3].ill }"/></td>
    <td width="109" height="31" nowrap="nowrap"><input id="c_disability3" type="text" name="c_disability" size="15" value="${subs[3].disability }" /></td>
    <td width="102" height="31" nowrap="nowrap"><select id="c_labor3" class="easyui-combobox" name="c_labor" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.workable" 
		    valueField="id" textField="text" editable="true" panelHeight="70"></select></td>
	<td width="93" height="31" nowrap="nowrap"><input id="c_inputType3" type="hidden" name="c_inputType" value="${subs[3].inputType }"/></td>
  </tr>
  <tr>
    <td width="85" height="31" nowrap="nowrap"><input id="c_name4" type="text" name="c_name" size="12" value="${subs[4].name }"/></td>
    <td width="111" height="31" nowrap="nowrap"><input id="c_sex4" type="text" name="c_sex" size="15" value="${subs[4].sex }"/></td>
    <td width="123" height="31" nowrap="nowrap"><input id="c_identify" type="text" name="c_identify" size="20" value="${subs[4].identify }" /></td>
    <td width="101" height="31" nowrap="nowrap"><select id="c_relation4" class="easyui-combobox"
								name="c_relation" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.relation" valueField="id"
								textField="text" editable="false" panelHeight="70"></select></td>
    <td width="116" height="31" nowrap="nowrap"><select id="c_marry4" class="easyui-combobox" name="c_marry" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.marry" 
		    valueField="id" textField="text" editable="true" panelHeight="90"></select></td>
    <td width="93" height="31" nowrap="nowrap"><input id="c_ill4" type="text" name="c_ill" size="15" value="${subs[4].ill }"/></td>
    <td width="109" height="31" nowrap="nowrap"><input id="c_disability4" type="text" name="c_disability" size="15" value="${subs[4].disability }" /></td>
    <td width="102" height="31" nowrap="nowrap"><select id="c_labor4" class="easyui-combobox" name="c_labor" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.workable" 
		    valueField="id" textField="text" editable="true" panelHeight="70"></select></td>
	<td width="93" height="31" nowrap="nowrap"><input id="c_inputType4" type="hidden" name="c_inputType" value="${subs[4].inputType }"/></td>
  </tr>
  <tr>
    <td width="85" height="31" nowrap="nowrap"><input id="c_name5" type="text" name="c_name" size="12" value="${subs[5].name }"/></td>
    <td width="111" height="31" nowrap="nowrap"><input id="c_sex5" type="text" name="c_sex" size="15" value="${subs[5].sex }"/></td>
    <td width="123" height="31" nowrap="nowrap"><input id="c_identify5" type="text" name="c_identify" size="20" value="${subs[5].identify }" /></td>
    <td width="101" height="31" nowrap="nowrap"><select id="c_relation5" class="easyui-combobox"
								name="c_relation" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.relation" valueField="id"
								textField="text" editable="false" panelHeight="70"></select></td>
    <td width="116" height="31" nowrap="nowrap"><select id="c_marry5" class="easyui-combobox" name="c_marry" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.marry" 
		    valueField="id" textField="text" editable="true" panelHeight="90"></select></td>
    <td width="93" height="31" nowrap="nowrap"><input id="c_ill5" type="text" name="c_ill" size="15" value="${subs[5].ill }"/></td>
    <td width="109" height="31" nowrap="nowrap"><input id="c_disability5" type="text" name="c_disability" size="15" value="${subs[5].disability }" /></td>
    <td width="102" height="31" nowrap="nowrap"><select id="c_labor5" class="easyui-combobox" name="c_labor" url="<%=request.getContextPath()%>/app/system/dict/listDictByType.action?type=sldb.workable" 
		    valueField="id" textField="text" editable="true" panelHeight="70"></select></td>
	<td width="93" height="31" nowrap="nowrap"><input id="c_inputType5" type="hidden" name="c_inputType" value="${subs[5].inputType }"/></td>
  </tr>
  <tr>
    <td width="40" rowspan="2" align="center" nowrap="nowrap" bgcolor="#CCCCCC"><p>申请</p>
    <p>承诺</p></td>
    <td height="26" colspan="8" nowrap="nowrap" style="border-bottom: none;">&nbsp;&nbsp;本人因家庭生活困难，特申请临时救助。本人承诺在本表中所填列的全部内容及所提供的全部证明<br>材料均真实、可靠、绝无虚假、欺骗和隐瞒。如经管理审批机关及其办事机构核查存在不实之外，愿承担一切后果<br>并接受一切处罚。</td>
  </tr>
  <tr>
    <td height="26" colspan="8" nowrap="nowrap" style="border-top: none;"> <div align="right"> 申请人（签字并按手印）：             年    月    日 </div></td>
  </tr>
  <tr>
    <td width="40" height="143" align="center" nowrap="nowrap" bgcolor="#CCCCCC"><p>申请</p>
    <p>理由</p></td>
    <td height="143" colspan="8" nowrap="nowrap"><textarea id="cause" name="cause" style="overflow-x:hidden;overflow-y:hidden;border:none; width:1000px; height:160px;margin:5px 0px 0px 5px"/></textarea></td>
  </tr>
  <tr>
    <td width="40" rowspan="3" align="center" nowrap="nowrap" bgcolor="#CCCCCC"><p>审查</p>
    <p>审批</p>
    <p>意见</p></td>
    <td colspan="2" nowrap="nowrap" style="border-bottom: none;">乡镇（街）初审意见：
      <p>调查人：</p>
    <p>助理：</p>      <p>主管领导：</p></td>
    <td colspan="3" valign="top" nowrap="nowrap" style="border-bottom: none;">社救中心复查及审批意见：
    <p>复查人：</p>      <p>审批人：</p></td>
    <td colspan="3" valign="top" nowrap="nowrap" style="border-bottom: none;">民政局主管领导审批意见：</td>
  </tr>
  
  
  <tr>
    <td height="26" colspan="2" nowrap="nowrap" style="border-top: none;"><div align="center">年&nbsp;&nbsp;&nbsp;&nbsp; 月&nbsp;&nbsp; &nbsp;&nbsp;日 </div></td>
    <td height="26" colspan="3" nowrap="nowrap" style="border-top: none;"><div align="center">年&nbsp;&nbsp; &nbsp;&nbsp;月&nbsp;&nbsp; &nbsp;&nbsp;日</div></td>
    <td height="26" colspan="3" nowrap="nowrap" style="border-top: none;"><div align="center">年&nbsp;&nbsp;&nbsp;&nbsp; 月&nbsp;&nbsp; &nbsp;&nbsp;日</div></td>
  </tr>
  <tr>
    <td height="26" colspan="8" nowrap="nowrap">&nbsp;&nbsp;救助金额：<input id="money" type="text" name="money" value="${society. money}"/></td>
  </tr>
</table>
  </center>
  	<input type="hidden" id="photo" name="photo" value="${society. photo}"/>
 </form>
</body>
</html>
