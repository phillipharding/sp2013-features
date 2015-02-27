<%@ Page language="C#" MasterPageFile="~masterurl/default.master"      Inherits="Microsoft.Office.Server.Search.Internal.UI.SearchAdministration,Microsoft.Office.Server.Search,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
    <SEARCHWC:FormattedStringWithSearchApplicationId  
      EncodeMethod="HtmlEncode" 
      FormatText="<%$Resources:Microsoft.Office.Server.Search, SearchAppAdminDashboard_Title%>"
      UseSearchApplicationName="true"
      id="SearchAdminTitleId" runat="server" >
    </SEARCHWC:FormattedStringWithSearchApplicationId >
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderPageTitleInTitleArea" runat="server">
    <SEARCHWC:FormattedStringWithSearchApplicationId  
      EncodeMethod="HtmlEncode" 
      UseSearchApplicationName="true"
      FormatText="<%$Resources:Microsoft.Office.Server.Search, SearchAppAdminDashboard_Title%>"
      id="SearchAdminTitleAreaId" runat="server" >
     </SEARCHWC:FormattedStringWithSearchApplicationId >
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">
    <asp:literal runat="server" id="pageDescriptiveText"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderLeftNavBar" runat="server">
<div class="ms-quicklaunchouter">
  <div class="ms-quickLaunch" >  
       <asp:SiteMapDataSource 
            SiteMapProvider="SPXmlAdminContentMapProvider" 
            StartingNodeUrl ="/searchadministration.aspx" 
            id="S2SiteMap"  
            runat="server" ShowStartingNode="false"/>

        <div id="zz14_V4QuickLaunchMenu" class="s4-ql">
        <div class="menu vertical menu-vertical">

        <ul class="root static">
        <li class="static">
            <ul class="static">
                <li class="static ms-nav-list-item">
                    <a  class="static menu-item" href="<%Response.Write(Microsoft.Office.Server.Search.Internal.UI.SearchAdminPageBase.CentralAdministrationUrl);%>"
                        title='<asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, S2LeftNav_CentralAdministration%>"/>'
                        id="S2LeftNav_CentralAdmin">
                        <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, S2LeftNav_CentralAdministration%>"/> 
                    </a>
                </li>
                <% if (!IsReadOnlyMode) { %>
                    <li class="static ms-nav-list-item">
                        <a class="static menu-item" href="<%Response.Write(Microsoft.Office.Server.Search.Internal.UI.SearchAdminPageBase.CentralAdministrationUrl);%>searchfarmdashboard.aspx"
                            title='<asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, Admin_SearchFarmDasboard_Title%>"/>'
                            id = "S2LeftNav_Searchfarmdashboard">
                            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, Admin_SearchFarmDasboard_Title%>"/>
                        </a>
                    </li>
                <%}%>
                <li class="static ms-nav-list-item">
                    <a  class="static menu-item" href="/searchadministration.aspx?appid=<%=SearchApplicationId%>"
                        title='<asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, Dashboard_SearchAdminBreadcrumb%>"/>'
                        id="S2LeftNav_Dashboard" 
                        accesskey='<asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, Dashboard_SearchAdminAccessKey%>"/>'>
                        <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, Dashboard_SearchAdminBreadcrumb%>"/> 
                    </a>
                </li>
             </ul>
         </li>
        <asp:Repeater runat="server" DatasourceId="S2SiteMap" >
            <HeaderTemplate>
                <li class="static ms-nav-subList-item">

                        <span class="static menu-item" >
                            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, S2LeftNavCategory_Diagnostics%>"/>
                        </span> 

                    <ul class="static">
            </HeaderTemplate>
            <ItemTemplate>  
                <%#Microsoft.Office.Server.Search.Administration.PublicUtilities.GetMarkup(Container.DataItem, "Diagnostics", SearchApplicationId, IsReadOnlyMode)%>
            </ItemTemplate>
            <FooterTemplate>
                    </ul>
                </li>
            </FooterTemplate>
        </asp:Repeater>	
        <asp:Repeater runat="server" DatasourceId="S2SiteMap" >
            <HeaderTemplate>
                <% if (!IsReadOnlyMode) { %>
                    <li class="static ms-nav-subList-item">

                        <span class="static menu-item" >
                            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, S2LeftNavCategory_CrawlContent%>"/>
                        </span> 

                    <ul class="static">
                <%}%>
            </HeaderTemplate>
            <ItemTemplate>   
                <%#Microsoft.Office.Server.Search.Administration.PublicUtilities.GetMarkup(Container.DataItem, "CrawlContent", SearchApplicationId, IsReadOnlyMode)%>
            </ItemTemplate>
            <FooterTemplate>
                <% if (!IsReadOnlyMode) { %>
                    </ul>
                </li>
                <%}%>
            </FooterTemplate>
        </asp:Repeater>

        <asp:Repeater runat="server" DatasourceId="S2SiteMap" >
            <HeaderTemplate>
              <% if (!IsReadOnlyMode) { %>
                <li class="static ms-nav-subList-item">

                        <span class="static menu-item" >
                            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, S2LeftNavCategory_QueriesAndResults%>"/>
                        </span> 

                    <ul class="static">
              <%}%>
            </HeaderTemplate>
            <ItemTemplate> 
                    <%#Microsoft.Office.Server.Search.Administration.PublicUtilities.GetMarkup(Container.DataItem, "Queries", SearchApplicationId, IsReadOnlyMode)%>
            </ItemTemplate>
            <FooterTemplate>
                <% if (!IsReadOnlyMode) { %>
                    </ul>
                </li>
                <%}%>
            </FooterTemplate>
        </asp:Repeater>
        </ul>
        </div>
        </div>
    </div>
</div>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server">
</asp:Content>

<asp:content contentplaceholderid="PlaceHolderMain" runat="server">
    <SharePoint:SPPageStatusSetter id="pageStatus" runat="server"/>
    <table width="100%" border="0" cellpadding="1" cellspacing="1">
        <tr>
            <td width="80%">
                <div style="float:left;width:100%">
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
                            ID="BottomZone" 
                            Title="<%$Resources:Microsoft.Office.Server.Search,SearchAdminDashboard_BottomZoneTitle%>" 
                            Orientation="Vertical" 
                            QuickAdd-GroupNames="SearchAdministration" 
                            BorderWidth="3"/>
                    </div>
                </div>
            </td>
            <td width="20%" valign="top" class ="ms-leftareacell">
                <table width="100%">
                    <tr>
                        <td>
                            <WebPartPages:WebPartZone runat="server" 
                                AllowPersonalization="false" 
                                ID="LinksZone" 
                                Title="<%$Resources:Microsoft.Office.Server.Search,SearchAdminDashboard_RightZoneTitle%>" 
                                Orientation="Vertical" 
                                PartChromeType = "TitleOnly"                                
                                QuickAdd-GroupNames="SearchAdministration" 
                                BorderWidth="3"/>
                        </td>
                    </tr></table> 
                </td></tr></table> 
    <SharePoint:FormattedString id="helptopic_WSSCentralAdmin_AboutSSATopologyAndSystemStatus" FormatText="<%$Resources:wss,helptopic_link%>" EncodeMethod="NoEncode" runat="server"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:Microsoft.Office.Server.Search, LearnMoreAboutTopology_HelpLinkText%>" EncodeMethod='HtmlEncode'/> <SharePoint:EncodedLiteral runat="server" text='WSSCentralAdmin_AboutSSATopologyAndSystemStatus' EncodeMethod='EcmaScriptStringLiteralEncode'/> </SharePoint:FormattedString>
</asp:content>
