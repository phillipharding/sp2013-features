<%@ Page Language="C#" Inherits="Microsoft.SharePoint.Portal.WebControls.PersonalWebPartPage,Microsoft.SharePoint.Portal,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/custom.master"      %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="edu" TagName="WebPartPageContent" Src="/_controltemplates/15/Edu/Common/WebPartPageContent.ascx" %>
<%@ Register TagPrefix="settings" TagName="SettingsControl" Src="/_controltemplates/15/Edu/Dialogs/Settings.ascx" %>
<%@ Register Tagprefix="edu" Namespace="Microsoft.Office.Education.WebUI" Assembly="Microsoft.Office.Education.WebUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
  <SharePoint:CssRegistration Name="/_layouts/15/Edu/Theme/EducationServerUI.css" After="layouts.css" runat="server"/>
  <SharePoint:CssRegistration Name="/_layouts/15/Edu/Theme/EducationServerIE.css" After="/_layouts/15/Edu/Theme/EducationServerUI.css" ConditionalExpression="lt IE 9" runat="server" /> 
  <SharePoint:ScriptLink language="javascript" name="XUI.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
  <SharePoint:ScriptLink language="javascript" name="SP.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
  <SharePoint:ScriptLink language="javascript" name="SP.Core.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
  <SharePoint:ScriptLink language="javascript" name="SP.DateTimeUtil.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
  <SharePoint:ScriptLink language="javascript" name="datepicker.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
  <SharePoint:ScriptLink language="javascript" name="EDU.Res.resx" LoadAfterUI="true" OnDemand="false" runat="server"/>
</asp:Content>

<asp:Content ID="PageTitleContent" ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:EncodedLiteral ID="EncodedLiteral1" runat="server" text="<%$Resources:edu,IDS_SettingsPageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content ID="PageTitleInTitleAreaContent" ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<SharePoint:EncodedLiteral ID="EncodedLiteral2" runat="server" text="<%$Resources:edu,IDS_SettingsPageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderId="PlaceHolderMain" runat="server">
	<edu:EduPageControl runat="server"/>
	<settings:SettingsControl ID="m_settingsControl" runat="server"></settings:SettingsControl>
</asp:Content>
