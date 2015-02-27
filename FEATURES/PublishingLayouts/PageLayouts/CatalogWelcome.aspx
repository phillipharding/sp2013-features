<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SearchWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	<PublishingWebControls:EditModePanel runat="server">
		<!-- Styles for edit mode only-->
		<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	</PublishingWebControls:EditModePanel>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitleInTitleArea" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server"> <SharePointWebControls:ListSiteMapPath runat="server" SiteMapProviders="CurrentNavigationSwitchableProvider" RenderCurrentNodeAsLink="false" PathSeparator="" CssClass="s4-breadcrumb" NodeStyle-CssClass="s4-breadcrumbNode" CurrentNodeStyle-CssClass="s4-breadcrumbCurrentNode" RootNodeStyle-CssClass="s4-breadcrumbRootNode" NodeImageOffsetX=0 NodeImageOffsetY=289 NodeImageWidth=16 NodeImageHeight=16 NodeImageUrl="/_layouts/15/images/fgimg.png?rev=23" HideInteriorRootNodes="true" SkipLinkText="" /> </asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	<div style="display:none">
	  <SearchWC:CatalogItemReuseWebPart
						id=ResultList1
						runat="server"
						FrameType="None"
						ResultsPerPage=1
						SelectedPropertiesJson="[&quot;Title&quot;]"
						RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Control_CatalogDefault.js"
						ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Item_CatalogTitle.js"
						UseServerSideRenderFormat="False"
						/>
	</div>
	<div class="welcome blank-wp">
		<div class="article-header">
		  <PublishingWebControls:EditModePanel runat="server" CssClass="edit-mode-panel">
			<PublishingWebControls:CatalogSourceFieldControl FieldName="CatalogSource" runat="server" ID="SourceItem"/>
		  </PublishingWebControls:EditModePanel>
		</div>
		<div class="welcome-content">
			<SearchWC:CatalogItemReuseWebPart
						id=ResultList4
						runat="server"
						FrameType="None"
						ResultsPerPage=1
						SelectedPropertiesJson="[&quot;PublishingPageContentOWSHTML&quot;]"
						PropertyMappings="Rich Data:PublishingPageContentOWSHTML"
						RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Control_CatalogDefault.js"
						ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Item_CatalogRich.js"
						/>
		</div>
		<table cellpadding="4" cellspacing="0" border="0" width="100%">
			<tr>
				<td valign="top" style="padding:0">
					<table cellpadding="4" cellspacing="0" border="0" width="100%" height="100%">
						<tr>
							<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" colspan="3" valign="top"> <WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_Header%>" ID="Header"/> </td>
						</tr>
						<tr>
							<td width="100%" colspan="3" valign="top" style="padding:0">
								<table cellpadding="4" cellspacing="0" width="100%" height="100%">
									<tr>
										<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top"> <WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_TopLeft%>" ID="TopLeftRow" /> </td>
																		<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top"> <WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_TopRight%>" ID="TopRightRow" /> </td>
									</tr>
								</table>
							</td>
						</tr>                            <tr>
							<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> <WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_CenterLeft%>" ID="CenterLeftColumn" /> </td>
							<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> <WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_Center%>" ID="CenterColumn"  /> </td>
							<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> <WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_CenterRight%>" ID="CenterRightColumn" /> </td>
						</tr>
						<tr>
							<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" colspan="3" valign="top"> <WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_Footer%>" ID="Footer"/> </td>
						</tr>
					</table>
				</td>
				<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> <WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_Right%>" ID="RightColumn" Orientation="Vertical"/> </td>
			</tr>
			<SharePointWebControls:ScriptBlock runat="server">if(typeof(MSOLayout_MakeInvisibleIfEmpty) == "function") {MSOLayout_MakeInvisibleIfEmpty();}</SharePointWebControls:ScriptBlock>
		</table>
	</div>
</asp:Content>
