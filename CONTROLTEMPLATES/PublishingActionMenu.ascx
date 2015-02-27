<%@ Control Language="C#"   %>
<%@Assembly Name="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<!-- Begin Action Menu Markup -->
<table height=100% class="ms-siteaction" cellpadding=0 cellspacing=0>
	<tr>
						<span class="ms-siteactionsmenu" id="siteactiontd">
					   <SharePoint:SiteActions runat="server" accesskey="<%$Resources:wss,tb_SiteActions_AK%>" id="SiteActionsMenuMain"
						PrefixHtml=""
						SuffixHtml=""
						MenuNotVisibleHtml="&amp;nbsp;"
						>
						<CustomTemplate>
						<SharePoint:FeatureMenuTemplate runat="server"
							FeatureScope="Site"
							Location="Microsoft.SharePoint.StandardMenu"
							GroupId="SiteActions"
							UseShortId="true"
							>
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_EditPage"
								Text="<%$Resources:wss,siteactions_editpage%>"
								Description="<%$Resources:wss,siteactions_editpagedescriptionv4%>"
								ImageUrl="/_layouts/images/ActionsEditPage.png"
								MenuGroupId="100"
								Sequence="110"
								ClientOnClickNavigateUrl="javascript:ChangeLayoutMode(false);"
								/>
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_TakeOffline"
								Text="<%$Resources:wss,siteactions_takeoffline%>"
								Description="<%$Resources:wss,siteactions_takeofflinedescription%>"
								ImageUrl="/_layouts/images/connecttospworkspace32.png"
								MenuGroupId="100"
								Sequence="120"
								/>
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_CreatePage"
								Text="<%$Resources:wss,siteactions_createpage%>"
								Description="<%$Resources:wss,siteactions_createpagedesc%>"
								ImageUrl="/_layouts/images/NewContentPageHH.png"
								MenuGroupId="200"
								Sequence="210"
								UseShortId="true"
								ClientOnClickScriptContainingPrefixedUrl="if (LaunchCreateHandler('Page')) { OpenCreateWebPageDialog('~site/_layouts/15/createwebpage.aspx') }"
								PermissionsString="AddListItems, EditListItems"
								PermissionMode="All" />
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_CreateDocLib"
								Text="<%$Resources:wss,siteactions_createdoclib%>"
								Description="<%$Resources:wss,siteactions_createdoclibdesc%>"
								ImageUrl="/_layouts/images/NewDocLibHH.png"
								MenuGroupId="200"
								Sequence="220"
								UseShortId="true"
								ClientOnClickScriptContainingPrefixedUrl="if (LaunchCreateHandler('DocLib')) { GoToPage('~site/_layouts/15/new.aspx?FeatureId={00bfea71-e717-4e80-aa17-d0c71b360101}&amp;ListTemplate=101') }"
								PermissionsString="ManageLists"
								PermissionMode="Any"
								VisibilityFeatureId="00BFEA71-E717-4E80-AA17-D0C71B360101" />
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_CreateSite"
								Text="<%$Resources:wss,siteactions_createsite%>"
								Description="<%$Resources:wss,siteactions_createsitedesc%>"
								ImageUrl="/_layouts/images/newweb32.png"
								MenuGroupId="200"
								Sequence="230"
								UseShortId="true"
								ClientOnClickScriptContainingPrefixedUrl="if (LaunchCreateHandler('Site')) { STSNavigate('~site/_layouts/15/newsbweb.aspx') }"
								PermissionsString="ManageSubwebs,ViewFormPages"
								PermissionMode="All" />
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_Create"
								Text="<%$Resources:wss,siteactions_create%>"
								Description="<%$Resources:wss,siteactions_createdesc%>"
								MenuGroupId="200"
								Sequence="240"
								UseShortId="true"
								ClientOnClickScriptContainingPrefixedUrl="if (LaunchCreateHandler('All')) { STSNavigate('~site/_layouts/15/create.aspx') }"
								PermissionsString="ManageLists, ManageSubwebs"
								PermissionMode="Any" />
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_ViewAllSiteContents"
								Text="<%$Resources:wss,quiklnch_allcontent%>"
								Description="<%$Resources:wss,siteactions_allcontentdescription%>"
								ImageUrl="/_layouts/images/allcontent32.png"
								MenuGroupId="300"
								Sequence="302"
								UseShortId="true"
								ClientOnClickNavigateUrl="~site/_layouts/15/viewlsts.aspx"
								PermissionsString="ViewFormPages"
								PermissionMode="Any" />
							 <SharePoint:MenuItemTemplate runat="server" id="MenuItem_EditSite"
								Text="<%$Resources:wss,siteactions_editsite%>"
								Description="<%$Resources:wss,siteactions_editsitedescription%>"
								ImageUrl="/_layouts/images/SharePointDesigner32.png"
								MenuGroupId="300"
								Sequence="304"
								UseShortId="true"
								ClientOnClickScriptContainingPrefixedUrl="EditInSPD('~site/',true);"
								PermissionsString="AddAndCustomizePages"
								PermissionMode="Any"
							/>
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_SitePermissions"
								Text="<%$Resources:wss,people_sitepermissions%>"
								Description="<%$Resources:wss,siteactions_sitepermissiondescriptionv4%>"
								ImageUrl="/_layouts/images/Permissions32.png"
								MenuGroupId="300"
								Sequence="310"
								UseShortId="true"
								ClientOnClickScriptContainingPrefixedUrl="GoToPage('~site/_layouts/user.aspx')"
								PermissionsString="ViewPages"
								PermissionMode="Any" />
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_Settings"
								Text="<%$Resources:wss,settings_pagetitle%>"
								Description="<%$Resources:wss,siteactions_sitesettingsdescriptionv4%>"
								ImageUrl="/_layouts/images/settingsIcon.png"
								MenuGroupId="300"
								Sequence="320"
								UseShortId="true"
								ClientOnClickScriptContainingPrefixedUrl="GoToPage('~site/_layouts/settings.aspx')"
								PermissionsString="EnumeratePermissions,ManageWeb,ManageSubwebs,AddAndCustomizePages,ApplyThemeAndBorder,ManageAlerts,ManageLists,ViewUsageData"
								PermissionMode="Any" />
						</SharePoint:FeatureMenuTemplate>
						</CustomTemplate>
					  </SharePoint:SiteActions></span>
	</tr>
</table>
<!-- End Action Menu Markup -->
