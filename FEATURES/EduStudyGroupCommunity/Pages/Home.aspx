<%@ Page Language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/custom.master"      %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="edu" TagName="WebPartPageContent" Src="~/_controltemplates/15/Edu/Common/WebPartPageContent.ascx" %>
<%@ Register Tagprefix="edu" Namespace="Microsoft.Office.Education.WebUI" Assembly="Microsoft.Office.Education.WebUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ID="PageTitleContent" ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:EncodedLiteral ID="EncodedLiteral1" runat="server" text="<%$Resources:edu,IDS_HomePageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content ID="PageTitleInTitleAreaContent" ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<SharePoint:EncodedLiteral ID="EncodedLiteral2" runat="server" text="<%$Resources:edu,IDS_HomePageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderId="PlaceHolderMain" runat="server">
	<edu:EduPageControl runat="server"/>
	<edu:WebPartPageContent runat="server"></edu:WebPartPageContent>
</asp:Content>
