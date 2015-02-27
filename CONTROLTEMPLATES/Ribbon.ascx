<%@ Control Language="C#"   %>
<%@Assembly Name="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<SharePoint:SPSecurityTrimmedControl runat="server" AuthenticationRestrictions="AnonymousUsersOnly" EmitDiv="true">
	<div id="s4-ribbonrow" style="visibility:hidden;display:none"></div>
</SharePoint:SPSecurityTrimmedControl>
<SharePoint:SPSecurityTrimmedControl runat="server" AuthenticationRestrictions="AuthenticatedUsersOnly" EmitDiv="true">
<div id="suiteBar" class="ms-dialogHidden noindex">
	<div id="suiteBarLeft">
		<div class="ms-table ms-fullWidth">
			<div class="ms-tableRow">
				<div class="ms-tableCell ms-verticalAlignMiddle">
					<SharePoint:DelegateControl id="ID_SuiteBarBrandingDelegate" ControlId="SuiteBarBrandingDelegate" runat="server" />
				</div>
				<SharePoint:AjaxDelta runat="server" id="DeltaSuiteLinks" BlockElement="true" CssClass="ms-core-deltaSuiteLinks">
						<div id="suiteLinksBox">
							<SharePoint:DelegateControl id="ID_SuiteLinksDelegate" ControlId="SuiteLinksDelegate" runat="server" />
						</div>
				</SharePoint:AjaxDelta>
			</div>
		</div>
	</div>
	<div id="suiteBarRight">
		<SharePoint:AjaxDelta runat="server" id="DeltaSuiteBarRight" CssClass="ms-core-deltaSuiteBarRight" BlockElement="true">
				<div id="welcomeMenuBox">
  <wssuc:Welcome id="IdWelcome" runat="server" EnableViewState="false" />
				</div>
				<div id="suiteBarButtons">
					   <span class="ms-siteactions-root" id="siteactiontd">
					   <SharePoint:SiteActions runat="server" accesskey="<%$Resources:wss,tb_SiteActions_AK%>" id="SiteActionsMenuMain"
						PrefixHtml=""
						SuffixHtml=""
						ImageUrl="/_layouts/15/images/spcommon.png?rev=23"
						ThemeKey="spcommon"
						MenuAlignment="Right"
						MenuNotVisibleHtml="&amp;nbsp;"
						>
						<CustomTemplate>
						<SharePoint:FeatureMenuTemplate runat="server"
							FeatureScope="Site"
							Location="Microsoft.SharePoint.StandardMenu"
							GroupId="SiteActions"
							UseShortId="true"
							>
						  <SharePoint:MenuItemTemplate runat="server"
							  id="MenuItem_ShareThisSite"
							  Text="<%$Resources:wss,siteactions_sharethissite%>"
							  Description="<%$Resources:wss,siteactions_sharethissitedescription%>"
							  MenuGroupId="100"
							  Sequence="110"
							  UseShortId="true"
							  PermissionsString="ViewPages"
							  PermissionMode="Any" />
						  <SharePoint:MenuItemTemplate runat="server" id="MenuItem_EditPage"
							  Text="<%$Resources:wss,siteactions_editpage15%>"
							  Description="<%$Resources:wss,siteactions_editpagedescriptionv4%>"
							  ImageUrl="/_layouts/15/images/ActionsEditPage.png?rev=23"
							  MenuGroupId="200"
							  Sequence="210"
							  PermissionsString="EditListItems"
							  ClientOnClickNavigateUrl="javascript:ChangeLayoutMode(false);" />
						  <SharePoint:MenuItemTemplate runat="server" id="MenuItem_CreatePage"
							  Text="<%$Resources:wss,siteactions_addpage15%>"
							  Description="<%$Resources:wss,siteactions_createpagedesc%>"
							  ImageUrl="/_layouts/15/images/NewContentPageHH.png?rev=23"
							  MenuGroupId="200"
							  Sequence="220"
							  UseShortId="true"
							  ClientOnClickScriptContainingPrefixedUrl="OpenCreateWebPageDialog('~siteLayouts/createwebpage.aspx')"
							  PermissionsString="AddListItems, EditListItems"
							  PermissionMode="All" />
						  <SharePoint:MenuItemTemplate runat="server" id="MenuItem_Create"
							  Text="<%$Resources:wss,siteactions_addapp15%>"
							  Description="<%$Resources:wss,siteactions_createdesc%>"
							  MenuGroupId="200"
							  Sequence="230"
							  UseShortId="true"
							  ClientOnClickScriptContainingPrefixedUrl="GoToPage('~siteLayouts/addanapp.aspx')"
							  PermissionsString="ManageLists, ManageSubwebs"
							  PermissionMode="Any" />
						  <SharePoint:MenuItemTemplate runat="server" id="MenuItem_ViewAllSiteContents"
							  Text="<%$Resources:wss,quiklnch_allcontent_15%>"
							  Description="<%$Resources:wss,siteactions_allcontentdescription%>"
							  ImageUrl="/_layouts/15/images/allcontent32.png?rev=23"
							  MenuGroupId="200"
							  Sequence="240"
							  UseShortId="true"
							  ClientOnClickNavigateUrl="~siteLayouts/viewlsts.aspx"
							  PermissionsString="ViewFormPages"
							  PermissionMode="Any" />
						  <SharePoint:MenuItemTemplate runat="server" id="MenuItem_ChangeTheLook"
							  Text="<%$Resources:wss,siteactions_changethelook15%>"
							  Description="<%$Resources:wss,siteactions_changethelookdesc15%>"
							  MenuGroupId="300"
							  Sequence="310"
							  UseShortId="true"
							  ClientOnClickNavigateUrl="~siteLayouts/designgallery.aspx"
							  PermissionsString="ApplyThemeAndBorder,ApplyStyleSheets,Open,ViewPages,OpenItems,ViewListItems"
							  PermissionMode="All" />
						  <SharePoint:MenuItemTemplate runat="server" id="MenuItem_Settings"
							  Text="<%$Resources:wss,siteactions_settings15%>"
							  Description="<%$Resources:wss,siteactions_sitesettingsdescriptionv4%>"
							  ImageUrl="/_layouts/15/images/settingsIcon.png?rev=23"
							  MenuGroupId="300"
							  Sequence="320"
							  UseShortId="true"
							  ClientOnClickScriptContainingPrefixedUrl="GoToPage('~siteLayouts/settings.aspx')"
							  PermissionsString="EnumeratePermissions,ManageWeb,ManageSubwebs,AddAndCustomizePages,ApplyThemeAndBorder,ManageAlerts,ManageLists,ViewUsageData"
							  PermissionMode="Any" />
						  <SharePoint:MenuItemTemplate runat="server" id="MenuItem_SwitchToMobileView"
							  Visible="false"
							  Text="<%$Resources:wss,siteactions_switchtomobileview%>"
							  Description="<%$Resources:wss,siteactions_switchtomobileviewdesc%>"
							  MenuGroupId="300"
							  Sequence="330"
							  UseShortId="true"
							  ClientOnClickScript="var mswlh = window.location.href; if (mswlh.indexOf('?')==-1) { window.location = mswlh + '?mobile=1'; } else { window.location = mswlh + '&mobile=1'; }" />
						</SharePoint:FeatureMenuTemplate>
						</CustomTemplate>
					  </SharePoint:SiteActions></span>
<span id="ms-help">
	<SharePoint:ThemedClusteredHoverImage
		runat="server"
		ID="TopHelpLink"
		ThemeKey="spintl"
		TouchMode="true"
		TouchModeWidth="30"
		TouchModeHeight="30"
		TouchModePaddingTop="7"
		TouchModePaddingRight="7"
		TouchModePaddingBottom="7"
		TouchModePaddingLeft="7"
		ImageUrl="/_layouts/15/~lcid/images/spintl.png"
		Width="16"
		Height="16"
		OffsetX="19"
		OffsetY="1"
		HoverOffsetX="1"
		HoverOffsetY="1"
		NavigateUrl="#"
		onclick="TopHelpButtonClick('HelpHome',event);return false"
		AlternateText="<%$Resources:wss,multipages_helplink_text%>"
		AccessKey="<%$Resources:wss,multipages_helplink_accesskey%>"
		ToolTip="<%$Resources:wss,multipages_helplink_text%>" />
</span>
				</div>
		</SharePoint:AjaxDelta>
	</div>
</div>
	<div id="s4-ribbonrow">
		<div id="globalNavBox">
<div id="ribbonBox">
	<div id="s4-ribboncont">
		<SharePoint:AjaxDelta id="DeltaSPRibbon" BlockElement="true" runat="server">
			<SharePoint:SPRibbon
				runat="server"
				PlaceholderElementId="RibbonContainer"
				CssFile="" >
				<SharePoint:SPRibbonPeripheralContent
					runat="server"
					CssClass="ms-core-defaultFont ms-dialogHidden"
					Location="TabRowLeft">
				</SharePoint:SPRibbonPeripheralContent>
				<SharePoint:SPRibbonPeripheralContent
					runat="server"
					Location="TabRowRight"
					ID="RibbonTabRowRight"
					CssClass="s4-trc-container s4-notdlg ms-core-defaultFont">
					<SharePoint:SPSharePromotedActionButton runat="server"/>
					<SharePoint:DelegateControl runat="server" ControlId="PromotedActions" AllowMultipleControls="true" />
					<SharePoint:SPSyncPromotedActionButton runat="server"/>
					<SharePoint:PageStateActionButton id="PageStateActionButton" runat="server" Visible="false" />
<span id="fullscreenmodebox" class="ms-qatbutton">
	<span id="fullscreenmode">
		<SharePoint:ThemedClusteredHoverImage
			runat="server"
			ID="fullscreenmodeBtn"
			ThemeKey="spcommon"
			TouchMode="true"
			TouchModeWidth="30"
			TouchModeHeight="30"
			TouchModePaddingLeft="7"
			TouchModePaddingTop="7"
			TouchModePaddingRight="7"
			TouchModePaddingBottom="7"
			ImageUrl="/_layouts/15/images/spcommon.png?rev=23"
			Width="16"
			Height="16"
			OffsetX="143"
			OffsetY="178"
			HoverOffsetX="125"
			HoverOffsetY="178"
			NavigateUrl="#"
			onclick="SetFullScreenMode(true);PreventDefaultNavigation();return false;"
			AlternateText="<%$Resources:wss,multipages_fullscreenmodelinkalt_text%>"
			ToolTip="<%$Resources:wss,multipages_fullscreenmodelinkalt_text%>"
			/>
	</span>
	<span id="exitfullscreenmode" style="display: none;">
		<SharePoint:ThemedClusteredHoverImage
			runat="server"
			ID="exitfullscreenmodeBtn"
			ThemeKey="spcommon"
			TouchMode="true"
			TouchModeWidth="30"
			TouchModeHeight="30"
			TouchModePaddingLeft="7"
			TouchModePaddingTop="7"
			TouchModePaddingRight="7"
			TouchModePaddingBottom="7"
			ImageUrl="/_layouts/15/images/spcommon.png?rev=23"
			Width="16"
			Height="16"
			OffsetX="107"
			OffsetY="178"
			HoverOffsetX="179"
			HoverOffsetY="96"
			NavigateUrl="#"
			onclick="SetFullScreenMode(false);PreventDefaultNavigation();return false;"
			AlternateText="<%$Resources:wss,multipages_fullscreenmodelinkalt_text%>"
			ToolTip="<%$Resources:wss,multipages_fullscreenmodelinkalt_text%>"
			/>
	</span>
</span>
<SharePoint:DeveloperDashboard runat="server" />
<SharePoint:DeveloperDashboardLauncher
	ID="DeveloperDashboardLauncher"
	ThemeKey="spcommon"
	TouchMode="true"
	TouchModeWidth="30"
	TouchModeHeight="30"
	TouchModePaddingLeft="7"
	TouchModePaddingTop="7"
	TouchModePaddingRight="7"
	TouchModePaddingBottom="7"
	NavigateUrl="javascript:return false"
	OnClick="ToggleDeveloperDashboard(window.g_ddHostBase);return false"
	OuterCssClass="ms-dd-button ms-qatbutton"
	runat="server"
	ImageUrl="/_layouts/15/images/spcommon.png?rev=23"
	AlternateText="<%$Resources:wss,multipages_launchdevdashalt_text%>"
	ToolTip="<%$Resources:wss,multipages_launchdevdashalt_text%>"
	OffsetX="145"
	OffsetY="196"
	HoverOffsetX="163"
	HoverOffsetY="196"
	Height="16"
	Width="16" />
				</SharePoint:SPRibbonPeripheralContent>
			</SharePoint:SPRibbon>
		</SharePoint:AjaxDelta>
	</div>
	<SharePoint:AjaxDelta id="DeltaSPNavigation" runat="server">
			<SharePoint:DelegateControl runat="server" ControlId="PublishingConsole" Id="PublishingConsoleDelegate" />
	</SharePoint:AjaxDelta>
</div>
<SharePoint:AjaxDelta id="DeltaWebPartAdderUpdatePanelContainer" BlockElement="true" CssClass="ms-core-webpartadder" runat="server">
  <div id="WebPartAdderUpdatePanelContainer">
	<asp:UpdatePanel
		ID="WebPartAdderUpdatePanel"
		UpdateMode="Conditional"
		ChildrenAsTriggers="false"
		runat="server">
	  <ContentTemplate>
		<WebPartPages:WebPartAdder ID="WebPartAdder" runat="server" />
	  </ContentTemplate>
	  <Triggers>
		<asp:PostBackTrigger ControlID="WebPartAdder" />
	  </Triggers>
	</asp:UpdatePanel>
  </div>
</SharePoint:AjaxDelta>
		</div>
	</div>
	<div id="notificationArea" class="ms-notif-box"></div>
	<SharePoint:AjaxDelta id="DeltaPageStatusBar" BlockElement="true" runat="server">
		<div id="pageStatusBar"></div>
	</SharePoint:AjaxDelta>
</SharePoint:SPSecurityTrimmedControl>
