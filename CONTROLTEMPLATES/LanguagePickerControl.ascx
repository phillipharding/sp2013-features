<%@ Control Language="C#" AutoEventWireup="true" className="LanguagePickerControl" Inherits="Microsoft.SharePoint.Portal.WebControls.LanguagePickerControl&#44;Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

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
}
</SharePoint:ScriptBlock>

<asp:Panel ID="DisplayLanguageLabelPanel" runat="server">
	<h3><asp:Label ID="LblDisplayLanguage" runat="server" text="<%$Resources:sps, LanguagePicker_MyDisplayLanguage_Selection%>" /></h3>
</asp:Panel>

<asp:Panel ID="DisplayLanguagePanel" runat="server">
	<div>
		<asp:UpdatePanel>
			<ContentTemplate>
				<asp:HiddenField id="HfMultipleDisplayLanguages" runat="server" Value="" />
				<asp:HiddenField id="HfMultipleContentLanguages" runat="server" Value="" />
				<asp:HiddenField id="HfLanguagePickerNoLanguageValue" runat="server" Value="<%$Resources:sps, LanguagePicker_NoLanguageSelected%>" />
				<asp:HiddenField id="HfUILanguagesReadOnlyMode" runat="server" Value="" />
				<asp:HiddenField id="HfContentLanguagesReadOnlyMode" runat="server" Value="" />
			</ContentTemplate>
		</asp:UpdatePanel>
		<div id="SelectDisplayLanguageList" class="ms-languagepickercontrol-languagelistdiv ms-languagepickercontrol-controlwidth">
		</div>
	</div>

	<div>
	<asp:DropDownList ID="DdlAnotherDisplayLanguage" style="width:250px" runat="server"/>
	<asp:Button id="BtnAddDisplayLanguage" runat="server" Text="<%$Resources:sps, multipages_Add%>" />
	</div>
	<asp:Panel ID="DisplayProviderLink" runat="server" />
</asp:Panel>

<asp:Label id="DisplayLanguagePickerError" runat="server" class="ms-error" text="<%$Resources:sps, LanguagePicker_ErrorTooManyLanguages%>" />
<br/>

<div id="ShowAdvancedLanguageSettings">
<a href=# onclick="return OnShowAdvanced()"><img src="/_layouts/15/images/jsgrid-down-arrow.png?rev=23" /> <asp:Literal runat="server" text="<%$Resources:sps, LanguagePicker_ShowAdvancedLanguageSettings%>" /></a>
</div>
<div id="HideAdvancedLanguageSettings">
<a href=# onclick="return OnHideAdvanced()"><img src="/_layouts/15/images/jsgrid-up-arrow.png?rev=23" /> <asp:Literal runat="server" text="<%$Resources:sps, LanguagePicker_HideAdvancedLanguageSettings%>" /></a>
</div>

<br/>

<asp:Panel ID="ContentLanguageContainer" runat="server">

<asp:Panel ID="ContentLanguageLabelPanel" runat="server">
	<h3><asp:Label ID="LblContentLanguage" runat="server" text="<%$Resources:sps, LanguagePicker_MyContentLanguage_Selection%>" /></h3>
</asp:Panel>

<asp:Panel ID="ContentLanguagePanel" runat="server">

	<div>
		<div id="SelectContentLanguageList" class="ms-languagepickercontrol-languagelistdiv ms-languagepickercontrol-controlwidth">
		</div>
	</div>
	<div>
		<asp:DropDownList ID="DdlAnotherContentLanguage" runat="server" style="width:250px"/>
		<asp:Button id="BtnAddContentLanguage" runat="server" Text="<%$Resources:sps, multipages_Add%>" />
	</div>
	<asp:Panel ID="ContentProviderLink" runat="server" />
</asp:Panel>

<asp:Label id="ContentLanguagePickerError" runat="server" class="ms-error" text="<%$Resources:sps, LanguagePicker_ErrorTooManyLanguages%>" />

</asp:Panel>
