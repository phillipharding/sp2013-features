<%@ Page language="C#" MasterPageFile="~masterurl/custom.master"      Inherits="Microsoft.SharePoint.Portal.WebControls.FollowedContentWebPartPage,Microsoft.SharePoint.Portal,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="NavItem" src="~/_controltemplates/15/NavItem.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="Welcome" src="~/_controltemplates/15/Welcome.ascx" %>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
<SharePoint:EncodedLiteral runat="server" Text="<%$Resources:sps,MySiteSitesPageTitle%>" EncodeMethod="HtmlEncode" />
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
    <SPSWC:MySiteHideDiv HideRibbonRow="true" HideTitleRow="true" runat="server" />
    <SharePoint:RssLink runat="server" />
    <SharePoint:ScriptLink name="sp.js" OnDemand="true" localizable="false" runat="server" />
    <SharePoint:ScriptLink name="sp.userprofiles.js" OnDemand="true" localizable="false" runat="server" />
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderPageTitleInTitleArea" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderTopNavBar" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderLeftNavBar" runat="server">
	<a name="startNavigation"></a>
	<div class="ms-core-sideNavBox-removeLeftMargin">
	<SharePoint:SPNavigationManager
		id="QuickLaunchNavigationManager"
		runat="server"
		QuickLaunchControlId="V4QuickLaunchMenu"
		ContainedControl="QuickLaunch"
		EnableViewState="false">
		<asp:SiteMapDataSource
			SiteMapProvider="MySiteSitesPageStaticProvider"
			ShowStartingNode="False"
			id="QuickLaunchSiteMap"
			StartingNodeUrl="sid:1025"
			runat="server"
		/>
		<SharePoint:AspMenu
			id="V4QuickLaunchMenu"
			runat="server"
			EnableViewState="false"
			DataSourceId="QuickLaunchSiteMap"
			UseSimpleRendering="true"
			Orientation="Vertical"
			StaticDisplayLevels="1"
			AdjustForShowStartingNode="true"
			MaximumDynamicDisplayLevels="0"
			SkipLinkText=""
		/>
	</SharePoint:SPNavigationManager>
	</div>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server">
    <div class="ms-clear"></div>
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderMain" runat="server">
    <SPSWC:PageLevelError runat="server" id="pageLevelError"/>
    <SPSWC:ProfilePropertyLoader id="m_objLoader" LoadFullProfileOfCurrentUser="true" runat="server" />
    <SPSWC:MySiteFirstRunExperienceWebPart id="firstRunWebpart" IsVisible="FALSE" runat="server" />

    <div class="ms-contentFollowing-sitesTopContainer ms-table">
        <div class="ms-tableRow">
            <div class="ms-tableCell ms-verticalAlignTop">
                <asp:literal id="linkNewSite" runat="server" />
            </div>
            <div class="ms-contentFollowing-searchBox ms-tableCell ms-verticalAlignTop">
                <SEARCHWC:SearchBoxScriptWebPart runat="server" id="searchInputBox" DefaultDropdownNodeId="1001" ServerInitialRender="true" UseSharedSettings="true" ChromeType="none" EmitStyleReference="false"/>
            </div>
        </div>
    </div>

    <div class="ms-contentFollowing-sitesWebPartZones ms-table">
        <div class="ms-tableRow">
            <div class="ms-tableCell ms-verticalAlignTop">
                <WebPartPages:WebPartZone runat="server" FrameType="None" ID="TopZone" Title="<%$Resources:sps,LayoutPageZone_TopZone%>" Orientation="Vertical" />
            </div>
        </div>
    </div>
    <div class="ms-table">
        <div class="ms-tableRow">
            <div class="ms-contentFollowing-sitesLeftZone ms-tableCell ms-verticalAlignTop">
                <div class="ms-contentFollowing-bottomZoneContainer">
                    <WebPartPages:WebPartZone runat="server" FrameType="None" ID="LeftZone" Title="<%$Resources:sps,LayoutPageZone_LeftZone%>" Orientation="Vertical" />
                </div>
            </div>
            <div class="ms-contentFollowing-sitesRightZone ms-tableCell ms-verticalAlignTop">
                <div class="ms-contentFollowing-bottomZoneContainer">
                    <WebPartPages:WebPartZone runat="server" FrameType="None" ID="RightZone" Title="<%$Resources:sps,LayoutPageZone_RightZone%>" Orientation="Vertical" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
