<!-- _lcid="1033" _version="15.0.4631" _dal="1" -->
<!-- _LocalBinding -->
<%@ Control Language="C#"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="ToolBar" src="ToolBar.ascx" %>
<SharePoint:RenderingTemplate ID="VideoSetEditForm" runat="server">
	<Template>
		<SharePoint:InformationBar runat="server"/>
		<SharePoint:FormToolBar runat="server"/>
		<SharePoint:ItemValidationFailedMessage runat="server"/>
		<table class="ms-formtable" cellpadding=5 cellspacing=0 width=100% border=0 style="margin-top: 10px;">
			<SharePoint:ChangeContentType runat="server"/>
			<SharePoint:FolderFormFields runat="server"/>
			<SharePoint:ListFieldIterator runat="server"/>
			<SharePoint:ApprovalStatus runat="server"/>
			<SharePoint:FormComponent TemplateName="AttachmentRows" runat="server"/>
		</table>
		<table cellpadding=0 cellspacing=0 width=100%>
			<tr><td class="ms-formline"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr>
		</table>
		<table cellpadding=5 cellspacing=0 width=100% style="padding-top: 8px">
			<tr><td width=100%>
				<SharePoint:ItemHiddenVersion runat="server"/>
				<SharePoint:ParentInformationField runat="server"/>
				<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_Buttons>
						<SharePoint:InitContentType runat="server"/>
						<SharePoint:CreatedModifiedInfo runat="server"/>
					</Template_Buttons>
					<Template_RightButtons>
						<SharePoint:SaveButton runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
				</wssuc:ToolBar>
			</td></tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
