<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>
<%@ Control Language="C#"  Inherits="Microsoft.Office.Excel.WebUI.Mobile.MewaToolBar,Microsoft.Office.Excel.WebUI.Mobile,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>

<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>

<mobile:Panel ID="m_navigationPanel" Runat="server">
	<mobile:Panel ID="m_navigationLeftPanel" Runat="server">
		<img ID="m_navigateLeftOneColumnHighResolution" Runat="server" src="mewa_leftb.gif" disabledsrc="mewa_leftgb.gif" visible="false" style="vertical-align:middle"/>
		<mobile:Image ID="m_navigateLeftOneColumn" Runat="server" BreakAfter="False" ImageUrl="mewa_left.gif" disabledsrc="mewa_leftg.gif"/>
		<mobile:Link ID="m_navigateLeftOneColumnLink" Runat="server" Visible="false" />
		<mobile:Panel ID="m_navigationLeftOnePagePanel" Runat="server">
			<img ID="m_navigateLeftOnePageHighResolution" Runat="server" src="mewa_leftPageb.gif" disabledsrc="mewa_leftPagegb.gif" visible="false" style="vertical-align:middle"/>
			<mobile:Image ID="m_navigateLeftOnePage" Runat="server" BreakAfter="False" ImageUrl="mewa_leftPage.gif" disabledsrc="mewa_leftPageg.gif"/>
			<mobile:Link ID="m_navigateLeftOnePageLink" Runat="server" Visible="false" />
		</mobile:Panel>
	</mobile:Panel>

	<mobile:Panel ID="m_navigationUpPanel" Runat="server">
		<img ID="m_navigateUpImageHighResolution" Runat="server" src="mewa_upb.gif" disabledsrc="mewa_upgb.gif" visible="false" style="vertical-align:middle"/>
		<mobile:Image ID="m_navigateUpImage" Runat="server" BreakAfter="False" ImageUrl="mewa_up.gif" disabledsrc="mewa_upg.gif" />
		<mobile:Link ID="m_navigateUplink" Runat="server" Visible="false" />
	</mobile:Panel>

	<mobile:Panel ID="m_navigationDownPanel" Runat="server">
		<img ID="m_navigateDownImageHighResolution" Runat="server" src="mewa_downb.gif" disabledsrc="mewa_downgb.gif" visible="false" style="vertical-align:middle"/>
		<mobile:Image ID="m_navigateDownImage" Runat="server" BreakAfter="False" ImageUrl="mewa_down.gif" disabledsrc="mewa_downg.gif" />
		<mobile:Link ID="m_navigateDownlink" Runat="server" Visible="false" />
	</mobile:Panel>

	<mobile:Panel ID="m_navigationRightPanel" Runat="server">
		<mobile:Panel ID="m_navigationRightOnePagePanel" Runat="server">
			<img ID="m_navigateRightOnePageHighResolution" Runat="server" src="mewa_rightPageb.gif" disabledsrc="mewa_rightPagegb.gif" visible="false" style="vertical-align:middle"/>
			<mobile:Image ID="m_navigateRightOnePage" Runat="server" BreakAfter="False" ImageUrl="mewa_rightPage.gif" disabledsrc="mewa_rightPageg.gif" />
			<mobile:Link ID="m_navigateRightOnePageLink" Runat="server" Visible="false" />
		</mobile:Panel>
		<img ID="m_navigateRightOneColumnHighResolution" Runat="server" src="mewa_rightb.gif" disabledsrc="mewa_rightgb.gif" visible="false" style="vertical-align:middle"/>
		<mobile:Image ID="m_navigateRightOneColumn" Runat="server" BreakAfter="False" ImageUrl="mewa_right.gif" disabledsrc="mewa_rightg.gif" />
		<mobile:Link ID="m_navigateRightOneColumnLink" Runat="server" Visible="false" />
	</mobile:Panel>
</mobile:Panel><mobile:Panel ID="m_zoomPanel" Runat="server" Visible="false">
	<img ID="m_zoomInImageHighResolution" Runat="server" src="mewa_zoominb.gif" visible="false" style="vertical-align:middle"/>
	<mobile:Image ID="m_zoomInImage" Runat="server" BreakAfter="False" ImageUrl="mewa_zooming.gif" enabledsrc="mewa_zoomin.gif" />
	<mobile:Link ID="m_zoomInLink" Runat="server" Visible="false"/>
	<img ID="m_zoomOutImageHighResolution" Runat="server" src="mewa_zoomoutb.gif" visible="false" style="vertical-align:middle"/>
	<mobile:Image ID="m_zoomOutImage" Runat="server" BreakAfter="False" ImageUrl="mewa_zoomoutg.gif" enabledsrc="mewa_zoomout.gif" />
	<mobile:Link ID="m_zoomOutLink" Runat="server" Visible="false"/></mobile:Panel>
