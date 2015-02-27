<%@ Page Language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master"      %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Dms" TagName="DMSLeftNavigationControl" Src="~/_controltemplates/15/DMSLeftNavigationControl.ascx" %>

<asp:Content contentplaceholderid="PlaceHolderPageTitle" runat="server">
    <SharePoint:EncodedLiteral runat="server" text="<%$Resources:dms, IDS_MyCollectionPageTitle%>" EncodeMethod='HtmlEncode'/>
</asp:Content>
<asp:Content contentplaceholderid="PlaceHolderPageTitleInTitleArea" runat="server">
    <SharePoint:EncodedLiteral runat="server" text="<%$Resources:dms, IDS_MyCollectionPageTitle%>" EncodeMethod='HtmlEncode'/>
</asp:Content>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:CssRegistration Name="Themable/dms.css" runat="server"/>
    <SharePoint:CssRegistration Name="Themable/searchv15.css" runat="server"/>
    <SharePoint:ScriptLink language="javascript" name="dms.res.resx" OnDemand="false" Localizable="true" runat="server"/>
    <SharePoint:ScriptLink language="javascript" name="dmscore.resx" OnDemand="false" Localizable="true" runat="server"/>
</asp:Content>

<asp:Content ID="PageLeftNav" ContentPlaceHolderID="PlaceHolderLeftNavBar" runat="server">
    <Dms:DMSLeftNavigationControl runat="server" />
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
    <WebPartPages:WebPartZone runat="server" FrameType="None" ID="Main" Title="loc:Main" />
</asp:Content>
