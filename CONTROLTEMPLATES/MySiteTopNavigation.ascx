<%@ Control Language="C#" %>
<%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="MSSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="Welcome" src="~/_controltemplates/15/Welcome.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="MUISelector" src="~/_controltemplates/15/MUISelector.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="DesignModeConsole" src="~/_controltemplates/15/DesignModeConsole.ascx" %>

<SPSWC:MySiteCssRegistration ID="MySiteCss" name="Themable/portal.css" runat="server"/>

<style type="text/css">
.ms-WPBody a:visited {
     color: #b10069;
}
.ms-WPBody a:hover {
     text-decoration:underline;
}
.srch-stats{
    background-color: #FFFFFF !important;
}
.srch-Page{
    background-color: #FFFFFF !important;
}
.srchctr_leftcell {
    vertical-align:top;
    width:175px;
}
.srchctr_mainleftcell {
    vertical-align:top;
    width:auto;
}
</style> 

<div class="s4-pr ms-globalnav s4-notdlg">

<div class="ms-globalnavtrc s4-trc-container s4-notdlg">
<span class="ms-globalnavhelp">
  <span style="height:17px;width:17px;position:relative;display:inline-block;overflow:hidden;" class="s4-clust"><a href="javascript:TopHelpButtonClick('HelpHome')" style="height:17px;width:17px;display:inline-block;" accesskey="<%$Resources:wss,multipages_helplink_accesskey%>" id="GlobalNavHelpLink" title="<%$Resources:wss,multipages_helplinkalt_text%>" runat="server"><img src="/_layouts/15/images/fgimg.png?rev=23" alt="<%$Resources:wss,multipages_helplinkalt_text%>" style="left:-0px !important;top:-245px !important;position:absolute;" align="absmiddle" border="0" runat="server" /></a></span>
</span>

    <SharePoint:DelegateControl runat="server" ID="GlobalDelegate0" ControlId="GlobalSiteLink0" />

     <a href="#" tabindex="-1" style="display:none"></a><a href="#" tabindex="-1" style="display:none"></a>
     <div class="s4-trc-container-menu">
         <div>
            <wssuc:Welcome id="IdWelcome" runat="server" EnableViewState="false">
            </wssuc:Welcome>
            <wssuc:MUISelector ID="IdMuiSelector" runat="server"/>
        </div>
    </div>
    <SharePoint:DelegateControl ControlId="GlobalSiteLink2" ID="GlobalDelegate2" Scope="Farm" runat="server" />
    <span>

        <span class="s4-devdashboard">
            <Sharepoint:DeveloperDashboardLauncher 
                ID="DeveloperDashboardLauncher"
                ThemeKey="fgimg"
                NavigateUrl="javascript:return false"
                OnClick="ToggleDeveloperDashboard(window.g_ddHostBase);return false"
                runat="server"
                ImageUrl="/_layouts/15/images/fgimg.png?rev=23"
                Text="<%$Resources:wss,multipages_launchdevdashalt_text%>"
                OffsetX="0"
                OffsetY="126"
                Height="16"
                Width="16" />
        </span>

    </span>

</div>

<div class="ms-globalnavicon">
    <SPSWC:MySiteLink ID="mysitelink" runat="server"/>
</div>

<div class="ms-globalnavmenu">
  <SharePoint:AspMenu
     ID="MySiteTopNavigationMenu"
     Runat="server"
     EnableViewState="false"
     DataSourceID="MySiteTopNavDS"
     AccessKey="<%$Resources:wss,navigation_accesskey%>"
     UseSimpleRendering="true"
     UseSeparateCss="false"
     Orientation="Horizontal"
     StaticDisplayLevels="1"
     MaximumDynamicDisplayLevels="1"
     PopOutImageUrl=""
     SkipLinkText=""
     CssClass="s4-mysitetn">
  </SharePoint:AspMenu>
  <SPSWC:MySiteDataSource
     ShowStartingNode="False"
     SiteMapProvider="MySiteMapProvider"
     id="MySiteTopNavDS" 
     StartingNodeUrl = "sid:1002"    
     runat="server"/>
</div>

<div class="ms-globalnavsearch">
  <div class="s4-search s4-rp">
  <SPSWC:PeopleSearchBoxEx 
         ID="MySiteGlobalSearchBox"
         FrameType="none" 
         HonorUseSiteDefaults="true"
         IsMysiteSearchBox = "true"
         DropDownMode="HideScopeDD" 
         ShowSearchOptions="false" 
         GoImageUrl="/_layouts/images/ppl_search_normal.png"
         GoImageUrlRTL="/_layouts/images/ppl_search_normal_rtl.png"
         GoImageActiveUrl="/_layouts/images/ppl_search_active.png"
         GoImageActiveUrlRTL="/_layouts/images/ppl_search_active_rtl.png"
         QueryPromptString="<%$Resources:sps,MySiteTopNav_PeopleSearch_Text%>"
         runat="server"/>
  </div>
</div>

<SPSWC:MyGlobalNavigationFixup ID="globalnav" runat="server"/>
</div>
