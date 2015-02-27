<%@ Control Language="C#"   AutoEventWireup="false" %>
<%@Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@Register TagPrefix="SharePoint" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.WebControls"%>
<%@Register TagPrefix="ApplicationPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.ApplicationPages.WebControls"%>
<%@Register TagPrefix="SPHttpUtility" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.Utilities"%>
<%@ Register TagPrefix="wssuc" TagName="ToolBar" src="~/_controltemplates/15/ToolBar.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="~/_controltemplates/15/ToolBarButton.ascx" %>

<SharePoint:RenderingTemplate id="RptLibraryFormCore" runat="server">
	<Template>
			<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" id="formTbl" cellspacing="0" width="100%">
			<SharePoint:DocumentLibraryFields runat="server"/>
			<SharePoint:ApprovalStatus runat="server"/>
			</table>
			<SharePoint:WebPartPageMaintenanceMessage runat="server"/>
			<SharePoint:DocumentTransformersInfo runat="server"/>
			<table cellpadding="0" cellspacing="0" width="100%"><tr><td class="ms-formline"><img src="/_layouts/images/blank.gif" width='1' height='1' alt="" /></td></tr></table>
			<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
			<SharePoint:ItemHiddenVersion runat="server"/>
			<SharePoint:InitContentType runat="server"/>
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
				<Template_Buttons>
					<SharePoint:CreatedModifiedInfo runat="server"/>
				</Template_Buttons>
				<Template_RightButtons>
					<SharePoint:SaveButton runat="server"/>
					<SharePoint:GoBackButton runat="server"/>
				</Template_RightButtons>
			</wssuc:ToolBar>
			</td></tr></table>
	</Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate id="RptLibraryForm" runat="server">
	<Template>
			<SharePoint:InformationBar runat="server"/>
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbltop" RightButtonSeparator="&amp;#160;" runat="server">
				<Template_RightButtons>
					<SharePoint:SaveButton runat="server"/>
					<SharePoint:GoBackButton runat="server"/>
				</Template_RightButtons>
			</wssuc:ToolBar>
			<SharePoint:FormToolBar runat="server"/>
			<SharePoint:FormComponent TemplateName="RptLibraryFormCore" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>

