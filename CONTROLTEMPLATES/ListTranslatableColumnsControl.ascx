<%@ Assembly Name="Microsoft.SharePoint.Translation, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Control Language="C#" Inherits="Microsoft.SharePoint.Translation.CodeBehind.ListTranslatableColumnsControl,Microsoft.SharePoint.Translation,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"   compilationMode="Always" %>
<SharePoint:ScriptBlock runat="server" Visible="false" id="errorMessageBlob" EnableViewState="false">
	EnsureScriptFunc("core.js", "SP.UI.Notify", function() {
		var tempocId = addNotification("<asp:Literal runat="server" Text="<%$Resources:sms,ErrorSiteTranslatableColumnColumnRemoved%>" />", true);
		setTimeout(function(){removeNotification(tempocId);}, 10000);
	});
</SharePoint:ScriptBlock>
<wssuc:InputFormSection Title="<%$Resources:sms,ListTranslatableColumnPageTitle%>"
		Description="<%$Resources:sms,ListTranslatableColumnPageDescription%>"
		runat="server">
	<Template_InputFormControls>
	<wssuc:InputFormControl runat="server" LabelText="<%$Resources:sms,ListTranslatableColumnSiteSectionTitle%>">
		<Template_Control>
			<p class="ms-descriptiontext ms-inputformdescription">
				<asp:Literal runat="server" Text="<%$Resources:sms,ListTranslatableColumnSiteSectionDescription%>"/>
			</p>
			<asp:CheckBox id="checkBoxSiteTranslatableColumnsInherit" Text="<%$Resources:sms,ListTranslatableColumnInheritCheckbox%>" runat="server" AutoPostBack="True" OnCheckedChanged="OnInheritanceChanged"/>
			<div id="listTranslatableColumnsParentFieldsDiv" style="padding-top:10px; border: solid 1px lightgrey">
				<table width="100%" cellpadding="0" cellspacing="0" border="0" id="siteLevelColumnsTable" style="padding-left:20px">
					<colgroup>
						<col/>
						<col width="50%"/>
						<col width="50%"/>
					</colgroup>
					<tr>
						<th scope="col" id="ChechboxTypeHeader" class="ms-headerCellStyleNormal ms-vh2 ms-minWidthHeader"><asp:Literal runat="server" Text="<%$Resources:sms,SiteTranslatableColumnIsTranslatable%>" /></th>
						<th scope="col" id="ColumnTypeHeader" class="ms-headerCellStyleNormal ms-vh2 ms-minWidthHeader"><asp:Literal runat="server" Text="<%$Resources:sms,SiteTranslatableColumnColumnName%>" /></th>
						<th scope="col" id="ColumnTypeHeader" class="ms-headerCellStyleNormal ms-vh2 ms-minWidthHeader"><asp:Literal runat="server" Text="<%$Resources:sms,SiteTranslatableColumnColumnGroup%>" /></th>
					</tr>
					<asp:Literal id="siteLevelFieldsTableLiteral" runat="server"/>
				</table>
			</div>
		</Template_Control>
	</wssuc:InputFormControl>
	<% if (this.HasChildColumns) {%>
	<wssuc:InputFormControl runat="server" LabelText="<%$Resources:sms,ListTranslatableColumnListSectionTitle%>">
		<Template_Control>
		    <p class="ms-descriptiontext ms-inputformdescription">
				<asp:Literal runat="server" Text="<%$Resources:sms,ListTranslatableColumnListSectionDescription%>"/>
			</p>
			<table width="100%" cellpadding="0" cellspacing="0" border="0" id="listLevelColumnsTable" style="padding-left:20px">
				<colgroup>
					<col/>
					<col width="50%"/>
					<col width="50%"/>
				</colgroup>
				<tr>
					<th scope="col" id="ChechboxTypeHeader" class="ms-headerCellStyleNormal ms-vh2 ms-minWidthHeader"><asp:Literal runat="server" Text="<%$Resources:sms,SiteTranslatableColumnIsTranslatable%>" /></th>
					<th scope="col" id="ColumnTypeHeader" class="ms-headerCellStyleNormal ms-vh2 ms-minWidthHeader"><asp:Literal runat="server" Text="<%$Resources:sms,SiteTranslatableColumnColumnName%>" /></th>
					<th scope="col" id="ColumnTypeHeader" class="ms-headerCellStyleNormal ms-vh2 ms-minWidthHeader"><asp:Literal runat="server" Text="<%$Resources:sms,SiteTranslatableColumnColumnGroup%>" /></th>
				</tr>
				<asp:Literal id="listLevelFieldsTableLiteral" runat="server"/>
			</table>
		</Template_Control>
	</wssuc:InputFormControl>
	<% } %>
	</Template_InputFormControls>
</wssuc:InputFormSection>
