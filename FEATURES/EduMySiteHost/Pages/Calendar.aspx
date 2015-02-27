<%@ Page Language="C#" Inherits="Microsoft.SharePoint.Portal.WebControls.PersonalWebPartPage,Microsoft.SharePoint.Portal,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/custom.master"      %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="edu" TagName="WebPartPageOneColumnContent" Src="~/_controltemplates/15/Edu/Common/WebPartPageOneColumnContent.ascx" %>
<%@ Register Tagprefix="edu" Namespace="Microsoft.Office.Education.WebUI" Assembly="Microsoft.Office.Education.WebUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 

<asp:Content ID="PageTitleContent" ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:EncodedLiteral ID="EncodedLiteral1" runat="server" text="<%$Resources:edu,IDS_CalendarPageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content ID="PageTitleInTitleAreaContent" ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<SharePoint:EncodedLiteral ID="EncodedLiteral2" runat="server" text="<%$Resources:edu,IDS_CalendarPageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderAdditionalPageHead" runat="server">
    <SPSWC:MySiteHideDiv HideRibbonRow="true" HideTitleRow="true" runat="server" />
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderId="PlaceHolderMain" runat="server">
	<edu:EduPageControl runat="server"/>
	<edu:WebPartPageOneColumnContent runat="server"></edu:WebPartPageOneColumnContent>
</asp:Content>
