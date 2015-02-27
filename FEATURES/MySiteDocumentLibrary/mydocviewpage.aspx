<%@ Page language="C#" MasterPageFile="~masterurl/custom.master"      Inherits="Microsoft.SharePoint.Portal.WebControls.PersonalWebPartPage,Microsoft.SharePoint.Portal,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server"><asp:Literal runat="server" Text="<%$Resources:spscore,SkyDrivePro%>"/></asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
<SharePoint:RssLink runat="server" />
<SharePoint:ScriptLink name="sp.js" OnDemand="true" localizable="false" runat="server" />
<SharePoint:ScriptLink name="sp.userprofiles.js" OnDemand="true" localizable="false" runat="server" />
<SharePoint:StyleBlock runat="server">
.ms-mysite-contentBox
{
    padding-top: 20px;
}
</SharePoint:StyleBlock>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server"><SharePoint:ViewIcon Width="145" Height="54" runat="server" /></asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderLeftActions" runat="server">
<SharePoint:RecentChangesMenu runat="server" id="RecentChanges"/>
<SharePoint:ModifySettingsLink runat="server" />
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

	<WebPartPages:WebPartZone runat="server" FrameType="None" ID="LeftColumn" Title="loc:LeftColumn" />
	<div>
		<SharePoint:DelegateControl id="ID_MruDocsWebpartDelegate" ControlId="SpoMruDocsWebpartDelegate" runat="server" />
	</div>
	<div>  
		<SharePoint:DelegateControl id="ID_RoamingAppsDelegate" ControlId="RoamingAppsDelegate" runat="server" />
	</div>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderBodyLeftBorder" runat="server"> 
<div height="100%" class="ms-pagemargin"><img src="/_layouts/15/images/blank.gif?rev=23" width='6' height='1' alt="" /></div>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
<SPSWC:ProfilePropertyLoader id="m_objLoader" LoadFullProfileOfCurrentUser="true" runat="server" />
<SPSWC:MySiteFirstRunExperienceWebPart id="firstRunWebpart" IsVisible="FALSE" runat="server"/>
<SPSWC:MybraryStatusTextControl id="statusTextControl" runat="server"/>
	<WebPartPages:WebPartZone runat="server" FrameType="None" ID="Main" Title="loc:Main" />
<SharePoint:ScriptBlock runat="server">
	SP.SOD.executeFunc('portal.js', 'MySite_RenderInCommonManager', function() {AddMybraryBranding();} );
</SharePoint:ScriptBlock>	
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderBodyAreaClass" runat="server">
<SharePoint:StyleBlock runat="server">
.ms-bodyareaframe {
    padding: 0px;
} 
</SharePoint:StyleBlock>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">
<SharePoint:ListProperty CssClass="ms-listdescription" Property="Description" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderCalendarNavigator" runat="server">
</asp:Content>
