<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>
<%@ Control Language="C#" Inherits="Microsoft.Office.Excel.WebUI.Mobile.MewaMenu,Microsoft.Office.Excel.WebUI.Mobile,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>

<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>

<mobile:Panel ID="m_menuPanel" Runat="server">
	<img ID="m_gotoSheetsImageHighResolution" Runat="server" src="mewa_gotosheetsb.gif" visible="false" style="vertical-align:middle"/>
	<mobile:Image ID="m_gotoSheetsImage" Runat="server" BreakAfter="False" ImageUrl="mewa_gotosheets.gif" />
	<mobile:Link ID="m_gotoSheetsLink" Runat="server"></mobile:Link>
	<img ID="m_gotoNamedItemsImageHighResolution" Runat="server" src="mewa_gotonameditemsb.gif" visible="false" style="vertical-align:middle"/>
	<mobile:Image ID="m_gotoNamedItemsImage" Runat="server" BreakAfter="False" ImageUrl="mewa_gotonameditems.gif" Visible ="false" />
	<mobile:Link ID="m_gotoNamedItemsLink" Runat="server" Visible ="false"></mobile:Link>

	<mobile:Panel ID="m_worksheetNavigationPanel" Runat="server">
		<img ID="m_gotoCellImageHighResolution" Runat="server" src="mewa_gotocellb.gif" visible="false" style="vertical-align:middle"/>
		<mobile:Image ID="m_gotoCellImage" Runat="server" BreakAfter="False" ImageUrl="mewa_gotoCell.gif" />
		<mobile:Link ID="m_gotoCellLink" Runat="server"></mobile:Link>		
		<img ID="m_findImageHighResolution" Runat="server" src="mewa_findb.gif" visible="false" style="vertical-align:middle"/>
		<mobile:Image ID="m_findImage" Runat="server" BreakAfter="False" ImageUrl="mewa_find.gif" />
		<mobile:Link ID="m_findLink" Runat="server"></mobile:Link>
		<img ID="m_chartListImageHighResolution" Runat="server" src="mewa_chartListb.gif" visible="false" style="vertical-align:middle"/>
		<mobile:Image ID="m_chartListImage" Runat="server" BreakAfter="False" ImageUrl="mewa_chartList.gif" />
		<mobile:Link ID="m_chartListLink" Runat="server"></mobile:Link>
		<img ID="m_frozenImageHighResolution" Runat="server" src="mewa_frozenb.gif" visible="false" style="vertical-align:middle"/>
		<mobile:Image ID="m_frozenImage" Runat="server" BreakAfter="False" ImageUrl="mewa_frozen.gif" />
		<mobile:Link ID="m_frozenLink" Runat="server"></mobile:Link>
		<img ID="m_displaySettingImageHighResolution" Runat="server" src="mewa_displaySettingb.gif" visible="false" style="vertical-align:middle"/>
		<mobile:Image ID="m_displaySettingImage" Runat="server" BreakAfter="False" ImageUrl="mewa_displaySetting.gif" />
		<mobile:Link ID="m_displaySettingLink" Runat="server"></mobile:Link>
	</mobile:Panel>
	<img ID="m_refreshAllImageHighResolution" Runat="server" src="mewa_refreshallb.gif" style="vertical-align:middle" visible="false"/>
	<mobile:Image ID="m_refreshAllImage" Runat="server" BreakAfter="False" ImageUrl="mewa_refreshall.gif" />
	<mobile:Link ID="m_refreshAllLink" Runat="server"></mobile:Link>
	<img ID="m_documentPropertyImageHighResolution" Runat="server" src="mewa_docPropertyb.gif" visible="false" style="vertical-align:middle"/>
	<mobile:Image ID="m_documentPropertyImage" Runat="server" BreakAfter="False" ImageUrl="mewa_docProperty.gif" />
	<mobile:Link ID="m_documentPropertyLink" Runat="server"></mobile:Link>
	<img ID="m_downloadFileImageHighResolution" Runat="server" src="mewa_downloadb.gif" visible="false" style="vertical-align:middle"/>
	<mobile:Image ID="m_downloadFileImage" Runat="server" BreakAfter="False" ImageUrl="mewa_download.gif" />
	<mobile:Link ID="m_downloadFileLink" Runat="server"></mobile:Link>
	<img ID="m_backToEntryImageHighResolution" Runat="server" src="mewa_backb.gif" visible="false" style="vertical-align:middle"/>
	<mobile:Image ID="m_backToEntryImage" Runat="server" BreakAfter="False" ImageUrl="mewa_back.gif" />
	<mobile:Link ID="m_backToEntryLink" Runat="server"></mobile:Link>
</mobile:Panel>
