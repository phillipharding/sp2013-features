<!-- _lcid="1033" _version="15.0.4631" _dal="1" -->
<!-- _LocalBinding -->
<%@ Control Language="C#"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="ToolBar" src="ToolBar.ascx" %>
<SharePoint:RenderingTemplate ID="DocSetDisplayForm" runat="server">
	<Template>
		<SPAN id='part1'>
			<SharePoint:FormToolBar runat="server"/>
			<TABLE class="ms-formtable" style="margin-top: 8px;" border=0 cellpadding=0 cellspacing=0 width=100%>
			<SharePoint:FolderFormFields runat="server"/>
			<SharePoint:ListFieldIterator runat="server"/>
			<SharePoint:ApprovalStatus runat="server"/>
			<SharePoint:FormComponent TemplateName="AttachmentRows" runat="server"/>
			</TABLE>
			<TABLE cellpadding=0 cellspacing=0 width=100%>
				<tr><td class="ms-formline"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr>
			</TABLE>
			<TABLE cellpadding=0 cellspacing=0 width=100% style="padding-top: 7px">
				<tr><td width=100%>
					<SharePoint:ItemHiddenVersion runat="server"/>
					<SharePoint:ParentInformationField runat="server"/>
					<SharePoint:InitContentType runat="server"/>
				</td></tr>
			</TABLE>
		</SPAN>
	</Template>
</SharePoint:RenderingTemplate>
