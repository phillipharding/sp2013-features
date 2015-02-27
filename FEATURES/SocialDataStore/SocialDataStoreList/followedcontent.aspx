<%@ Page language="C#" MasterPageFile="~masterurl/custom.master"      Inherits="Microsoft.SharePoint.Portal.WebControls.FollowedContentWebPartPage,Microsoft.SharePoint.Portal,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="NavItem" src="~/_controltemplates/15/NavItem.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="Welcome" src="~/_controltemplates/15/Welcome.ascx" %>

<asp:Content contentplaceholderid="PlaceHolderPageTitle" runat="server">
    <SPSWC:StringValue LocId="MultPages_FollowedDocuments_Label" runat="server" />
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
    <SPSWC:MySiteHideDiv HideRibbonRow="true" HideTitleRow="false" runat="server" />
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderPageTitleInTitleArea" runat="server">
    <SPSWC:StringValue LocId="MultPages_FollowedDocuments_Label" runat="server" />
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderTopNavBar" runat="server">
	<SharePoint:AspMenu
		ID="TopNavigationMenu"
		Runat="server"
		EnableViewState="false"
		DataSourceID="vanillaTopSiteMap"
		AccessKey="<%$Resources:wss,navigation_accesskey%>"
		UseSimpleRendering="true"
		UseSeparateCss="false"
		Orientation="Horizontal"
		StaticDisplayLevels="2"
		AdjustForShowStartingNode="true"
		MaximumDynamicDisplayLevels="2"
		SkipLinkText="" />

	<asp:SiteMapDataSource
		ShowStartingNode="False"
		SiteMapProvider="SPNavigationProvider"
		id="vanillaTopSiteMap"
		runat="server"
		StartingNodeUrl="sid:1002"/>
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
			SiteMapProvider="MySiteDocumentStaticProvider"
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

<asp:Content contentplaceholderid="PlaceHolderMain" runat="server">
    <SPSWC:PageLevelError runat="server" id="pageLevelError"/>
    <SPSWC:ProfilePropertyLoader id="m_objLoader" LoadFullProfileOfCurrentUser="true" runat="server" />
    <SPSWC:MySiteFirstRunExperienceWebPart id="firstRunWebpart" IsVisible="FALSE" runat="server" />

    <table id="MSO_ContentTable" MsoPnlId="layout" class="ms-core-tableNoSpace">
        <tr id="MiddleRow">
            <td valign="top" id="LeftCell" width="622" >
                <WebPartPages:WebPartZone runat="server" FrameType="None" ID="LeftZone" Title="<%$Resources:sps,LayoutPageZone_LeftZone%>" Orientation="Vertical" />
            </td>
            <td valign="top" id="RightCell">
                <div class="ms-contentFollowing-docsRightZone">
                    <WebPartPages:WebPartZone runat="server" FrameType="None" ID="RightZone" Title="<%$Resources:sps,LayoutPageZone_RightZone%>" Orientation="Vertical" />
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

