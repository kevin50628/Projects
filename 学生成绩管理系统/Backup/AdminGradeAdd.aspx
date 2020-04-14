﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminGradeAdd.aspx.cs" Inherits="AdminGradeAdd1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
		<title>AdminGradeAdd</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1"/>
		<meta name="CODE_LANGUAGE" content="C#"/>
		<meta name="vs_defaultClientScript" content="JavaScript"/>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>
		<link href="css/style.css" type="text/css" rel="stylesheet"/>
	</head>
	<body>
    <center>
		<form id="Form1" method="post" runat="server">
				<table id="Table1" cellspacing="1" cellpadding="1" width="616" border="1" style="WIDTH: 616px; HEIGHT: 183px">
					<tr>
						<td style="WIDTH: 120px; HEIGHT: 4px">请选择班级</td>
						<td style="HEIGHT: 4px"><font face="宋体">学生选择</font></td>
					</tr>
					<tr>
						<td style="WIDTH: 120px" valign="top">
							<asp:DataGrid id="DataGrid1" runat="server" AutoGenerateColumns="False" 
                                Width="136px" AllowPaging="True" 
                                onpageindexchanged="DataGrid1_PageIndexChanged">
								<HeaderStyle BackColor="#CCCC66"></HeaderStyle>
								<Columns>
									<asp:BoundColumn DataField="班级名" HeaderText="班级名"></asp:BoundColumn>
									<asp:HyperLinkColumn Text="班级名" DataNavigateUrlField="班级名" DataNavigateUrlFormatString="AdminGradeAdd.aspx?Action=Add&amp;班级名={0}"
										HeaderText="请选择" NavigateUrl="AdminGradeAdd.aspx"></asp:HyperLinkColumn>
								</Columns>
								<PagerStyle NextPageText="下一页" PrevPageText="上一页"></PagerStyle>
							</asp:DataGrid></td>
						<td valign="top"><asp:DataGrid id="DataGrid2" runat="server" 
                                AutoGenerateColumns="False" Width="392px" AllowPaging="True" 
                                onpageindexchanged="DataGrid2_PageIndexChanged" 
                                onselectedindexchanged="DataGrid2_SelectedIndexChanged">
								<HeaderStyle BackColor="#CCCC66"></HeaderStyle>
								<Columns>
									<asp:BoundColumn DataField="学号" HeaderText="学号"></asp:BoundColumn>
									<asp:BoundColumn DataField="姓名" HeaderText="姓名"></asp:BoundColumn>
									<asp:BoundColumn DataField="性别" HeaderText="性别"></asp:BoundColumn>
									<asp:BoundColumn DataField="班级名" HeaderText="班级名"></asp:BoundColumn>
									<asp:BoundColumn DataField="所在院系" HeaderText="所在院系"></asp:BoundColumn>
									<asp:HyperLinkColumn Target="main" DataNavigateUrlField="学号" DataNavigateUrlFormatString="AdminGradeAddNext.aspx?学号={0}"
										DataTextField="学号" HeaderText="录入成绩" NavigateUrl="AdminGradeAddNext.aspx"></asp:HyperLinkColumn>
								</Columns>
								<PagerStyle NextPageText="下一页" PrevPageText="上一页"></PagerStyle>
							</asp:DataGrid></td>
					</tr>
				</table>
		</form>
        </center>
	</body>
</html>
