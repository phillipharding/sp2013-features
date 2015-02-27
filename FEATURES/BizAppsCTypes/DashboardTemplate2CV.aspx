<%@ Page language="C#" MasterPageFile="~masterurl/default.master"      Inherits="Microsoft.SharePoint.Portal.WebControls.DashboardPage,Microsoft.SharePoint.Portal,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content runat="server" ContentPlaceHolderId="PlaceHolderPageTitle">
    <SPSWC:FormattedListItemProperty id="PageTitle" FieldName="Title" runat="server" />
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    <SharePoint:ListItemProperty id="PageTitle2" Property="Title" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <table border="0" cellpadding="1" cellspacing="1" ID="TopZoneTable" width="100%">
        <tr ID="TopRow" >
            <td valign="top" ID="TopLeftCell" width="75%">
                <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="TopLeftZone" Title="<%$Resources:sps,DashboardTemplate_TopLeftZone%>" Orientation="Vertical" QuickAdd-GroupNames="Dashboard" BorderWidth="3"/>
            </td>
            <td valign="top" ID="TopRightCell" width="25%">
                <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="TopRightZone" Title="<%$Resources:sps,DashboardTemplate_TopRightZone%>" Orientation="Vertical" QuickAdd-GroupNames="Dashboard" BorderWidth="3"/>
            </td>
        </tr>
    </table>

    <table border="0" cellpadding="1" cellspacing="1" ID="FilterZoneTable" width="100%">
        <tr ID="FilterRow">
            <td valign="top" ID="FilterCell" width="100%">
                <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="FilterZone" Title="<%$Resources:sps,DashboardTemplate_FilterZone%>" Orientation="Horizontal" QuickAdd-GroupNames="Filters" QuickAdd-ShowListsAndLibraries="false" QuickAdd-ButtonText="<%$Resources:sps,DashboardTemplate_FilterZoneButtonText%>" BorderWidth="3"/>
            </td>
        </tr>
    </table>

	<table border="0" cellpadding="1" cellspacing="1" ID="BottomZoneTable" width="100%">
        <tr ID="MiddleRow" class="ms-tzbottom">
            <td valign="top" ID="MiddleLeftCell">
                <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="MiddleLeftZone" Title="<%$Resources:sps,ScorecardTemplate_MiddleLeftZone%>" Orientation="Vertical" QuickAdd-GroupNames="Dashboard" BorderWidth="3"/>
            </td>
            <td valign="top" ID="MiddleRightCell">
                <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="MiddleRightZone" Title="<%$Resources:sps,ScorecardTemplate_MiddleRightZone%>" Orientation="Vertical" QuickAdd-GroupNames="Dashboard" BorderWidth="3"/>
            </td>            
        </tr>
        <tr ID="BottomRow" class="ms-tzbottom">
            <td valign="top" ID="BottomLeftCell">
                <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="BottomLeftZone" Title="<%$Resources:sps,DashboardTemplate_BottomLeftZone%>" Orientation="Vertical" QuickAdd-GroupNames="Dashboard" BorderWidth="3"/>
            </td>
            <td valign="top" ID="BottomRightCell">
                <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="BottomRightZone" Title="<%$Resources:sps,DashboardTemplate_BottomRightZone%>" Orientation="Vertical" QuickAdd-GroupNames="Dashboard" BorderWidth="3"/>
            </td>            
        </tr>
    </table>

</asp:Content>

