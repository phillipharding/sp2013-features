<%@ Page language="C#" MasterPageFile="~masterurl/default.master"      Inherits="Microsoft.Office.Server.Search.Internal.UI.SearchFarmDashboard,Microsoft.Office.Server.Search,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:ScriptLink runat="server" Name="sp.js" LoadAfterUI="true" Localizable="false" />
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
    <asp:literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, SearchFarmAdminDashboard_Title%>"/>
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderPageTitleInTitleArea" runat="server">
    <asp:literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, SearchFarmAdminDashboard_Title%>"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server">
</asp:Content>

<asp:content contentplaceholderid="PlaceHolderMain" runat="server">
    <div style="width:80%;float:left;">
        <div style="display:block">
            <WebPartPages:WebPartZone runat="server" 
                AllowPersonalization="false" 
                ID="TopZone" 
                Title="<%$Resources:Microsoft.Office.Server.Search,SearchAdminDashboard_TopZoneTitle%>" 
                Orientation="Vertical" 
                QuickAdd-GroupNames="SearchAdministration" 
                BorderWidth="3"/>
        </div>
        <div style="display:block">
            <WebPartPages:WebPartZone runat="server" 
                AllowPersonalization="false" 
                ID="MiddleZone" Title="<%$Resources:Microsoft.Office.Server.Search,SearchAdminDashboard_CenterZoneTitle%>" 
                Orientation="Vertical" 
                QuickAdd-GroupNames="SearchAdministration" 
                BorderWidth="3"/>
        </div>
        <div style="display:block">
            <WebPartPages:WebPartZone runat="server" 
                AllowPersonalization="false" 
                ID="BottomZone" 
                Title="<%$Resources:Microsoft.Office.Server.Search,SearchAdminDashboard_BottomZoneTitle%>" 
                Orientation="Vertical" 
                QuickAdd-GroupNames="SearchAdministration" 
                BorderWidth="3"/>
        </div>                    
    </div>
</asp:content>
