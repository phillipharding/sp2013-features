<%@ Control Language="C#" Inherits="Microsoft.SharePoint.ApplicationPages.LanguagePickerControl,Microsoft.SharePoint.ApplicationPages"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<SharePoint:CssRegistration name="languagepickercontrol.css" runat="server" />
<SharePoint:ScriptLink Name="languagepickercontrol.js" Localizable="false" language="javascript" runat="server" />
<SharePoint:ScriptBlock runat="server">
function OnLanguageSettingsInit()
{
	AnotherDisplayLanguageDropDown = document.getElementById("<%= DdlAnotherDisplayLanguage.ClientID %>");
	AnotherContentLanguageDropDown = document.getElementById("<%= DdlAnotherContentLanguage.ClientID %>");
	MultipleDisplayLanguageHiddenField = document.getElementById("<%= HfMultipleDisplayLanguages.ClientID %>");
	MultipleContentLanguageHiddenField = document.getElementById("<%= HfMultipleContentLanguages.ClientID %>");
	UILanguagesReadOnlyModeHiddenField = document.getElementById("<%= HfUILanguagesReadOnlyMode.ClientID %>");
	ContentLanguagesReadOnlyModeHiddenField = document.getElementById("<%= HfContentLanguagesReadOnlyMode.ClientID %>");
	ContentLanguageContainer = document.getElementById("<%= ContentLanguageContainer.ClientID %>");
	DisplayLanguageSelectionDiv = document.getElementById("SelectDisplayLanguageList");
	ContentLanguageSelectionDiv = document.getElementById("SelectContentLanguageList");
	ShowAdvancedLanguageSettings = document.getElementById("ShowAdvancedLanguageSettings");
	HideAdvancedLanguageSettings = document.getElementById("HideAdvancedLanguageSettings");
	DisplayLanguagePickerError = document.getElementById("<%= DisplayLanguagePickerError.ClientID %>");
	ContentLanguagePickerError = document.getElementById("<%= ContentLanguagePickerError.ClientID %>");
	NoLanguageSelectedText = document.getElementById("<%= HfLanguagePickerNoLanguageValue.ClientID %>").value;
	SetUpLanguagePicker();
	AnotherDisplayLanguageDropDown.disabled = false;
	AnotherContentLanguageDropDown.disabled = false;
}
</Sharepoint:ScriptBlock>
<asp:Panel ID="DisplayLanguageLabelPanel" runat="server">
	<h3><asp:Label ID="LblDisplayLanguage" runat="server" text="<%$Resources:wss,regionalsetng_preferredui_languages_label%>" /></h3>
</asp:Panel>
<asp:Panel ID="DisplayLanguagePanel" runat="server">
	<div>
		<asp:UpdatePanel>
			<ContentTemplate>
				<asp:HiddenField id="HfMultipleDisplayLanguages" runat="server" Value="" />
				<asp:HiddenField id="HfMultipleContentLanguages" runat="server" Value="" />
				<asp:HiddenField id="HfLanguagePickerNoLanguageValue" runat="server" Value="<%$Resources:wss,languagepickercontrol_nolanguageselected%>" />
				<asp:HiddenField id="HfUILanguagesReadOnlyMode" runat="server" Value="" />
				<asp:HiddenField id="HfContentLanguagesReadOnlyMode" runat="server" Value="" />
			</ContentTemplate>
		</asp:UpdatePanel>
		<div id="SelectDisplayLanguageList" class="ms-languagepickercontrol-languagelistdiv ms-languagepickercontrol-controlwidth">
		</div>
	</div>
	<div>
	<asp:DropDownList ID="DdlAnotherDisplayLanguage" style="width:250px" runat="server"/>
	<input type="button" id="BtnAddDisplayLanguage" runat="server" onclick="return OnAddNewLanguage(LanguageType.Display)" value="<%$Resources:wss,multipages_Add%>" />
	</div>
	<asp:Panel ID="DisplayProviderLink" runat="server" />
</asp:Panel>
<asp:Label id="DisplayLanguagePickerError" runat="server" class="ms-error" text="<%$Resources:wss,languagepickercontrol_errortoomanylanguages%>" />
<br/>
<div id="ShowAdvancedLanguageSettings">
<a href=# onclick="return OnShowAdvanced()"><img src="/_layouts/15/images/jsgrid-down-arrow.png?rev=23" /> <asp:Literal runat="server" text="<%$Resources:wss,regionalsetng_show_advanced_language_settings%>" /></a>
</div>
<div id="HideAdvancedLanguageSettings">
<a href=# onclick="return OnHideAdvanced()"><img src="/_layouts/15/images/jsgrid-up-arrow.png?rev=23" /> <asp:Literal runat="server" text="<%$Resources:wss,regionalsetng_hide_advanced_language_settings%>" /></a>
</div>
<br/>
<asp:Panel ID="ContentLanguageContainer" runat="server">
<asp:Panel ID="ContentLanguageLabelPanel" runat="server">
	<h3><asp:Label ID="LblContentLanguage" runat="server" text="<%$Resources:wss,regionalsetng_preferredcontent_languages_label%>" /></h3>
</asp:Panel>
<asp:Panel ID="ContentLanguagePanel" runat="server">
	<div>
		<div id="SelectContentLanguageList" class="ms-languagepickercontrol-languagelistdiv ms-languagepickercontrol-controlwidth">
		</div>
	</div>
	<div>
		<asp:DropDownList ID="DdlAnotherContentLanguage" runat="server" style="width:250px"/>
		<input type="button" id="BtnAddContentLanguage" runat="server" onclick="return OnAddNewLanguage(LanguageType.Content)" value="<%$Resources:wss,multipages_Add%>" />
	</div>
	<asp:Panel ID="ContentProviderLink" runat="server" />
</asp:Panel>
<asp:Label id="ContentLanguagePickerError" runat="server" class="ms-error" text="<%$Resources:wss,languagepickercontrol_errortoomanylanguages%>" />
</asp:Panel>
