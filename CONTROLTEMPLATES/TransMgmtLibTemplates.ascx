<!-- _lcid="1033" _version="15.0.4631" _dal="1" -->
<!-- _LocalBinding -->
<%@ Control Language="C#"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="dlcdm" Namespace="Microsoft.Office.DocumentManagement.WebControls" Assembly="Microsoft.Office.Policy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="ToolBar" src="ToolBar.ascx" %>
<!-- MultiLangLibraryForm -->
<SharePoint:RenderingTemplate ID="MultiLangLibraryForm" runat="server">
	<Template>
		<SharePoint:InformationBar runat="server"/>
		<SharePoint:FormToolBar runat="server" />
		<TABLE class="ms-formtable" border=0 cellpadding=0 id="formTbl" cellspacing=0 width=100%>
			<SharePoint:ChangeContentType runat="server"/>
			<dlcdm:MultiLangLibraryFields runat="server"/>
			<SharePoint:ApprovalStatus runat="server"/>
		</TABLE>
		<TABLE cellpadding=0 cellspacing=0 width=100% style="padding-top: 10px"><tr><td width=100%>
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&#160;" runat="server">
				<Template_RightButtons>
					<SharePoint:SaveButton TabIndex=1 runat="server"/>
					<SharePoint:GoBackButton runat="server"/>
				</Template_RightButtons>
			</wssuc:ToolBar>
			<table cellpadding=0 cellspacing=0 width=100% style="margin-top: 10px;"><tr><td class="ms-formline"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr></table>
			<SharePoint:InitContentType runat="server"/>
			<SharePoint:WebPartPageMaintenanceMessage runat="server"/>
			<SharePoint:CreatedModifiedInfo runat="server"/>
			<SharePoint:DocumentTransformersInfo runat="server"/>
			<SharePoint:ItemHiddenVersion runat="server"/>
			</td></tr>
		</TABLE>
	</Template>
</SharePoint:RenderingTemplate>
<!-- MultiLangFileFormFields -->
<SharePoint:RenderingTemplate ID="MultiLangFileFormFields" runat="server">
	<Template>
			<SharePoint:ListFieldIterator ExcludeFields="TranslationBaseDocument" runat="server" />
			<dlcdm:MultiLangBaseDocContainer FieldName="TranslationBaseDocument" runat="server" />
	</Template>
</SharePoint:RenderingTemplate>
<!-- MultiLangBaseDocField_Input -->
<SharePoint:RenderingTemplate ID="MultiLangBaseDocField_Input" runat="server">
	<Template>
		<tr><td colspan=2><dlcdm:MultiLangBaseDocFieldControl FieldName="TranslationBaseDocument" runat="server" /></td></tr><br>
	</Template>
</SharePoint:RenderingTemplate>
<!-- MultiLangBaseDocField_Display -->
<SharePoint:RenderingTemplate ID="MultiLangBaseDocField_Display" runat="server">
	<Template>
		<tr>
			<td nowrap="true" valign="top" class="ms-formlabel">
				<SharePoint:FieldLabel FieldName="TranslationBaseDocument" runat="server" />
			</td>
			<td valign="top" class="ms-formbody" runat="server" />
				<dlcdm:MultiLangBaseDocFieldControl FieldName="TranslationBaseDocument" runat="server" /><br>
				<SharePoint:FieldDescription FieldName="TranslationBaseDocument" runat="server" />
			</td>
		</tr>
	</Template>
</SharePoint:RenderingTemplate>
