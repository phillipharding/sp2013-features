<%@ Assembly Name="Microsoft.SharePoint.Translation, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Control Language="C#" Inherits="Microsoft.SharePoint.Translation.CodeBehind.TaxonomyTranslationControl,Microsoft.SharePoint.Translation,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"   compilationMode="Always" %>
<style type="text/css">
	.not-wide
	{
		width: auto;
	}
</style>
<div class="tmt-ps not-wide">
	<ContentTemplate>
		<table class=propertysheet border="0" width="auto" cellspacing="0" cellpadding="0">
			<tr><td>
			<div class="tmt-ps not-wide">
				<h4 class="ms-standardheader ms-sectionheader TmtPropertyName">
					<asp:RadioButton runat="server" id="machineRadioButton" text="<%$Resources:sms, TaxonomyTranslation_MachineTranslate%>" groupname="translationType" />
				</h4>
				<div>
					<div class="ms-descriptiontext tmt-description" style="clear: both;">
						&#160;&#160;&#160;&#160;&#160;&#160;
						<asp:Literal runat="server" text="<%$Resources:sms, TaxonomyTranslation_MachineTranslate_Description%>" />
					</div>
				</div>
				<asp:HiddenField runat="server" id="machineDialogTitleHiddenField" Value="<%$Resources:sms, TaxonomyTranslation_DialogTitle_MachineTranslation%>" />
			</div>
			<div class="tmt-ps not-wide">
				<h4 class="ms-standardheader ms-sectionheader TmtPropertyName">
					<asp:RadioButton runat="server" id="vendorRadioButton" text="<%$Resources:sms, TaxonomyTranslation_CreatePackage%>" groupname="translationType" />
				</h4>
				<div>
					<div class="ms-descriptiontext tmt-description" style="clear: both;">
						&#160;&#160;&#160;&#160;&#160;&#160;
						<asp:Literal runat="server" text="<%$Resources:sms, TaxonomyTranslation_CreatePackage_Description%>" />
					</div>
				</div>
				<asp:HiddenField runat="server" id="exportDialogTitleHiddenField" Value="<%$Resources:sms, TaxonomyTranslation_DialogTitle_CreatePackage%>" />
			</div>
			<div class="tmt-ps not-wide">
				<h4 class="ms-standardheader ms-sectionheader TmtPropertyName">
					<asp:RadioButton runat="server" id="uploadRadioButton" text="<%$Resources:sms, TaxonomyTranslation_UploadTranslation%>" groupname="translationType" />
				</h4>
				<div>
					<div class="ms-descriptiontext tmt-description" style="clear: both;">
						&#160;&#160;&#160;&#160;&#160;&#160;
						<asp:Literal runat="server" text="<%$Resources:sms, TaxonomyTranslation_UploadTranslation_Description%>" />
					</div>
				</div>
				<asp:HiddenField runat="server" id="uploadDialogTitleHiddenField" Value="<%$Resources:sms, TaxonomyTranslation_DialogTitle_UploadTranslation%>" />
			</div>
			</td></tr>
			<tr>
				<td> </td>
				<td>
					<div class="tmt-ps not-wide" style="margin:auto; float:left;">
						<asp:Button class="ms-ButtonHeightWidth" id="continueButton" OnClientClick="javascript: return false;" Text="<%$Resources:sms, TaxonomyTranslation_ExportButton%>" runat="server" />
					</div>
				</td>
			</tr>
		</table>
		<div>
			<asp:HiddenField id="translationTermSetIdHiddenField" runat="server" Value="" />
			<asp:HiddenField id="translationTermStoreIdHiddenField" runat="server" Value="" />
		</div>
	</ContentTemplate>
</div>
