<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.TemplatePicker,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<wssuc:InputFormSection title="<%$Resources:wss,templatepick_pagetitle%>" runat="server">
	<Template_InputFormControls>
		<wssuc:InputFormControl id="DDCompatibilityLevelFormControl" runat="server" LabelText="<%$Resources:wss,templatepick_compatibilitydropdown_label%>" LabelAssociatedControlId="DdSiteCompatibilityLevel">
			<Template_Control>
				<select size="1" id="DdSiteCompatibilityLevel" runat="server" />
			</Template_Control>
		</wssuc:InputFormControl>
		<wssuc:InputFormControl id="DDLanguageFormControl" runat="server" LabelText="<%$Resources:wss,templatepick_languagedropdown_label%>" LabelAssociatedControlId="DdLanguageWebTemplate">
			<Template_Control>
				<select size="1" id="DdLanguageWebTemplate" runat="server" />
			</Template_Control>
		</wssuc:InputFormControl>
		<wssuc:InputFormControl runat="server" LabelText="<%$Resources:wss,templatepick_templatelist_label%>" LabelAssociatedControlId="LbWebTemplate">
			<Template_Control>
				<div class="ms-templatepicker">
					<input type="hidden" id="HiddenSelectedCategory" value="" runat="server"/>
					<div id="FilterTabs" runat="server" class="ms-templatepicker" />
					<select id="LbWebTemplate" Runat="server" size="12" class="ms-templatepicker-select ms-templatepicker ms-floatLeft" onchange="OnWebTemplateChange()" />
					<div class="ms-descriptiontext ms-floatLeft" style="width: 440px; display: inline;">
						<asp:Label id="LabelWebTemplateDescription" runat="server"/>
					</div>
				</div>
			</Template_Control>
		</wssuc:InputFormControl>
	</Template_InputFormControls>
</wssuc:InputFormSection>
