<%@ Control Language="C#"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<script runat="server">
private bool m_bShouldUseExtra;
private int m_ver = 3;
public bool ShouldUseExtra
{
	get { return m_bShouldUseExtra; }
	set { m_bShouldUseExtra = value; }
}
public int Version
{
	get { return m_ver;}
	set { m_ver = value; }
}
</script>
<%
		SPWeb web = SPControl.GetContextWeb(Context);
		string alternateHeader = web.AlternateHeader;
		if (alternateHeader == null || alternateHeader == "")
		{
			if (web.UIVersion == 3)
			{
%>
		  <!--Top bar-->
		  <table class="ms-bannerframe" border="0" cellspacing="0" cellpadding="0" width="100%">
		   <tr>
			<td nowrap="nowrap" valign="middle"></td>
			<td class="ms-banner" width="99%" nowrap="nowrap" id="HBN100" valign="middle">
			  <!--webbot Bot="Navigation" startspan-->
<% if (m_bShouldUseExtra == true ) { %>
	<SharePoint:AspMenu
	  ID="TopNavigationMenu"
	  Runat="server"
	  DataSourceID="topSiteMap"
	  EnableViewState="false"
	  AccessKey="<%$Resources:wss,navigation_accesskey%>"
	  Orientation="Horizontal"
	  StaticDisplayLevels="2"
	  MaximumDynamicDisplayLevels="1"
	  DynamicHorizontalOffset="0"
	  StaticPopoutImageUrl="/_layouts/images/menudark.gif"
	  StaticPopoutImageTextFormatString=""
	  DynamicHoverStyle-BackColor="#CBE3F0"
	  SkipLinkText=""
	  StaticSubMenuIndent="0"
	  CssClass="ms-topNavContainer">
		<StaticMenuStyle/>
		<StaticMenuItemStyle CssClass="ms-topnav" ItemSpacing="0px"/>
		<StaticSelectedStyle CssClass="ms-topnavselected" />
		<StaticHoverStyle CssClass="ms-topNavHover" />
		<DynamicMenuStyle  BackColor="#F2F3F4" BorderColor="#A7B4CE" BorderWidth="1px"/>
		<DynamicMenuItemStyle CssClass="ms-topNavFlyOuts"/>
		<DynamicHoverStyle CssClass="ms-topNavFlyOutsHover"/>
		<DynamicSelectedStyle CssClass="ms-topNavFlyOutsSelected"/>
	</SharePoint:AspMenu>
	<SharePoint:DelegateControl runat="server" ControlId="TopNavigationDataSource" Id="topNavigationDelegate">
		<Template_Controls>
			<asp:SiteMapDataSource
			  ShowStartingNode="False"
			  SiteMapProvider="SPNavigationProvider"
			  id="topSiteMap"
			  runat="server"
			  StartingNodeUrl="sid:1002"/>
		</Template_Controls>
	</SharePoint:DelegateControl>
<% } else { %>
			  &#160;<SharePoint:Navigation LinkBarId="1002" runat="server" Id="linkbar1002"/>
<% } %>
			</td>
			<td class="ms-banner">&#160;&#160;</td>
			<td valign="bottom" align="right">
			 <table cellpadding="0" cellspacing="0" border="0">
			  <tr>
			   <td>
				<table height="100%" class="ms-siteaction" cellpadding="0" cellspacing="0">
				 <tr>
					<SharePoint:SiteActions runat="server" accesskey="<%$Resources:wss,tb_SiteActions_AK%>" id="SiteActionsMenu"
						PrefixHtml="&lt;td class=&quot;ms-siteactionsmenu&quot;&gt;&lt;div&gt;&lt;div&gt;"
						SuffixHtml="&lt;/div&gt;&lt;/div&gt;&lt;/td&gt;"
						>
						<CustomTemplate>
						<SharePoint:FeatureMenuTemplate runat="server"
							FeatureScope="Site"
							Location="Microsoft.SharePoint.StandardMenu"
							GroupId="SiteActions"
							UseShortId="true"
							>
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_Create"
								Text="<%$Resources:wss,viewlsts_pagetitle_create%>"
								Description="<%$Resources:wss,siteactions_createdescription%>"
								ImageUrl="/_layouts/15/images/Actionscreate.gif?rev=23"
								MenuGroupId="100"
								Sequence="100"
								UseShortId="true"
								ClientOnClickScriptContainingPrefixedUrl="if (LaunchCreateHandler('All')) { STSNavigate('~siteLayouts/create.aspx') }"
								PermissionsString="ManageLists, ManageSubwebs"
								PermissionMode="Any" />
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_Settings"
								Text="<%$Resources:wss,settings_pagetitle%>"
								Description="<%$Resources:wss,siteactions_sitesettingsdescription%>"
								ImageUrl="/_layouts/15/images/ActionsSettings.gif?rev=23"
								MenuGroupId="100"
								Sequence="300"
								UseShortId="true"
								ClientOnClickNavigateUrl="~siteLayouts/settings.aspx"
								PermissionsString="EnumeratePermissions,ManageWeb,ManageSubwebs,AddAndCustomizePages,ApplyThemeAndBorder,ManageAlerts,ManageLists,ViewUsageData"
								PermissionMode="Any" />
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_SitePermissions"
								Text="<%$Resources:wss,people_sitepermissions%>"
								Description="<%$Resources:wss,siteactions_sitepermissiondescription%>"
								ImageUrl="/_layouts/15/images/placeholder32x32.png?rev=23"
								MenuGroupId="100"
								Sequence="500"
								UseShortId="true"
								ClientOnClickNavigateUrl="~siteLayouts/user.aspx"
								PermissionsString="EnumeratePermissions"
								PermissionMode="Any" />
						</SharePoint:FeatureMenuTemplate>
						</CustomTemplate>
					</SharePoint:SiteActions>
				 </tr>
				</table>
			   </td>
			  </tr>
			 </table>
			</td>
		   </tr>
		  </table>
<%
			}
			else
			{
if (m_bShouldUseExtra == true ) { %>
	<SharePoint:AspMenu
	  ID="TopNavigationMenuV4"
	  Runat="server"
	  EnableViewState="false"
	  DataSourceID="topSiteMap"
	  AccessKey="<%$Resources:wss,navigation_accesskey%>"
	  UseSimpleRendering="true"
	  UseSeparateCss="false"
	  Orientation="Horizontal"
	  StaticDisplayLevels="2"
	  AdjustForShowStartingNode="true"
	  MaximumDynamicDisplayLevels="1"
	  SkipLinkText=""
	  CssClass="s4-tn" />
<% } else { %>
			  &#160;<SharePoint:Navigation LinkBarId="1002" runat="server" Id="linkbar1002_1" />
<% }
			}
		}
		else
		{
%>
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
<%
			if (!alternateHeader.StartsWith("/"))
				alternateHeader = "/_layouts/15/" + web.Language.ToString(System.Globalization.CultureInfo.InvariantCulture) + "/" + alternateHeader;
			Server.Execute(alternateHeader);
%>
			</table>
<%
		}
%>
