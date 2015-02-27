<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Taxonomy" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	<PublishingWebControls:EditModePanel runat="server">
		<!-- Styles for edit mode only-->
		<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	</PublishingWebControls:EditModePanel>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<Taxonomy:TermProperty Property="Name" runat="server" />
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<asp:SiteMapPath runat="server" ParentLevelsDisplayed="1" SiteMapProvider="CurrentNavigationSwitchableProvider" />
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server"> <SharePointWebControls:ListSiteMapPath runat="server" SiteMapProviders="CurrentNavigationSwitchableProvider" RenderCurrentNodeAsLink="false" PathSeparator="" CssClass="s4-breadcrumb" NodeStyle-CssClass="s4-breadcrumbNode" CurrentNodeStyle-CssClass="s4-breadcrumbCurrentNode" RootNodeStyle-CssClass="s4-breadcrumbRootNode" NodeImageOffsetX=0 NodeImageOffsetY=289 NodeImageWidth=16 NodeImageHeight=16 NodeImageUrl="/_layouts/15/images/fgimg.png?rev=23" HideInteriorRootNodes="true" SkipLinkText="" /> </asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">
	<Taxonomy:TermProperty Property="Description" runat="server" />
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderBodyRightMargin" runat="server">
	<div height="100%" class="ms-pagemargin"><img src="/_layouts/images/blank.gif" width="10" height="1" alt="" /></div>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
	<div style="width: 940px; padding-left: 10px; padding-right: 10px">
		<div style="width: 940px">
			<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" style="float: left; width: 240px">
				<WebPartPages:WebPartZone runat="server" title="<%$Resources:cms,WebPartZoneTitle_TopLeft%>" id="TopLeft" orientation="Vertical" style="width: 240px" />
			</div>
			<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" style="width: 690px; margin-left: 250px">
				<WebPartPages:WebPartZone runat="server" title="<%$Resources:cms,WebPartZoneTitle_TopRight%>" id="TopRight" style="width: 690px" />
			</div>
		</div>
		<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" style="width: 940px">
			<WebPartPages:WebPartZone runat="server" title="<%$Resources:cms,WebPartZoneTitle_Body%>" id="Body" orientation="Vertical" style="width: 940px" />
		</div>
		<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" style="width: 940px">
			<PublishingWebControls:RichHtmlField FieldName="PublishingPageContent" HasInitialFocus="True" MinimumEditHeight="200px" runat="server"/>
		</div>
		<div style="display: table-row; width: 940px">
			<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" style="display: table-cell;">
				<WebPartPages:WebPartZone runat="server" title="<%$Resources:cms,WebPartZoneTitle_BottomLeft%>" id="BottomLeft" orientation="Vertical" />
			</div>
			<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" style="display: table-cell;">
				<WebPartPages:WebPartZone runat="server" title="<%$Resources:cms,WebPartZoneTitle_BottomCenter%>" id="BottomCenter" />
			</div>
			<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" style="display: table-cell;">
				<WebPartPages:WebPartZone runat="server" title="<%$Resources:cms,WebPartZoneTitle_BottomRight%>" id="BottomRight" orientation="Vertical" />
			</div>
		</div>
	</div>
	<SharePointWebControls:ScriptBlock runat="server">
		if(typeof(MSOLayout_MakeInvisibleIfEmpty) == "function")
			{MSOLayout_MakeInvisibleIfEmpty();}
	</SharePointWebControls:ScriptBlock>
</asp:Content>
