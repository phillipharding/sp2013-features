<%@ Page Language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/custom.master"      %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Dms" TagName="DMSLeftNavigationControl" Src="~/_controltemplates/15/DMSLeftNavigationControl.ascx" %>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:ScriptLink language="javascript" name="dms.res.resx" OnDemand="false" Localizable="true" runat="server"/>
    <SharePoint:ScriptLink language="javascript" name="SP.DateTimeUtil.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderLeftNavBar" runat="server">
    <Dms:DMSLeftNavigationControl runat="server" />
    <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" Title="$Resources:dms, IDS_DetailPageLeftWebPartZoneTitle;" ID="LeftZone" /> 
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server" >
    <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" Title="$Resources:dms, IDS_DetailsPageMainWebPartZoneTitle;" ID="MainZone" />
</asp:Content>
