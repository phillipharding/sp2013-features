<%@ Page Language="C#" Inherits="Microsoft.Office.Education.WebUI.ResultsAndReports,Microsoft.Office.Education.WebUI,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/custom.master"      %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ID="PageHead" ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
  <SharePoint:CssRegistration Name="Themable/EDU.css" runat="server"/>
  <SharePoint:ScriptLink language="javascript" name="XUI.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
  <SharePoint:ScriptLink language="javascript" name="SP.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
  <SharePoint:ScriptLink language="javascript" name="SP.Core.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
  <SharePoint:ScriptLink language="javascript" name="SP.DateTimeUtil.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
</asp:Content>

<asp:Content ID="PageTitleContent" ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:EncodedLiteral ID="EncodedLiteral1" runat="server" text="<%$Resources:edu,IDS_ResultsAndReportsPageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content ID="PageTitleInTitleAreaContent" ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<SharePoint:EncodedLiteral ID="EncodedLiteral2" runat="server" text="<%$Resources:edu,IDS_ResultsAndReportsPageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderMain" runat="server">
    <div runat="server"><% CreateResultDisplayList(); %></div>
</asp:Content>
