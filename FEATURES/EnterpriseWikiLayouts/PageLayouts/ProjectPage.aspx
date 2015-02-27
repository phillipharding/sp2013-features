<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Taxonomy" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointPortalControls" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
	<SharePoint:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/page-layouts-21.css %>" runat="server"/>
	<PublishingWebControls:EditModePanel runat="server" id="editmodestyles">
		<!-- Styles for edit mode only-->
		<SharePoint:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/edit-mode-21.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/page-layouts-21.css %>" runat="server"/>
	</PublishingWebControls:EditModePanel>
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
	<SharePoint:ListItemProperty runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
	<SharePoint:ListItemProperty runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server">
	<SharePoint:ListSiteMapPath
		runat="server"
		SiteMapProviders="CurrentNavigation"
		RenderCurrentNodeAsLink="false"
		PathSeparator=""
		CssClass="s4-breadcrumb"
		NodeStyle-CssClass="s4-breadcrumbNode"
		CurrentNodeStyle-CssClass="s4-breadcrumbCurrentNode"
		RootNodeStyle-CssClass="s4-breadcrumbRootNode"
		NodeImageOffsetX=0
		NodeImageOffsetY=289
		NodeImageWidth=16
		NodeImageHeight=16
		NodeImageUrl="/_layouts/15/images/fgimg.png?rev=23"
		HideInteriorRootNodes="true"
		SkipLinkText="" />
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	<div style="padding:11px 0px 0px 0px;">
		<div class="col-fluid-1">
			<div class="col-fluid-2">
				<div class="ms-descriptiontext ewiki-margin">
					 <SharePoint:FormattedString FormatText="<%$Resources:wss,wikidiff_lastmodifiedby%>" runat="server">
						<SharePoint:FormField id="modifiedFieldCtrl" ControlMode="Display" FieldName="Modified" runat="server"/>
						<SharePoint:UserField id="editorFieldCtrl" ControlMode="Display" FieldName="Editor" runat="server"/>
					 </SharePoint:FormattedString>
					 <PublishingWebControls:EditPageHyperLink id="editPageLink" Text="<%$Resources:cms,enterwiki_editpage%>" runat="server"/>
				</div>
				<PublishingWebControls:EditModePanel class="ewiki-margin" runat="server">
					<div class="ms-descriptiontext">
						<b class="ewiki-pagename-align"><SharePoint:FieldLabel FieldName="FileLeafRef" runat="server"/></b>
						<SharePoint:FileField id="PageNameInEditMode" CssClass="ewiki-pagename-align" FieldName="FileLeafRef" DisableInputFieldLabel="true" runat="server"/>
					</div>
				</PublishingWebControls:EditModePanel>
				<div class="edit-mode-border">
					<PublishingWebControls:RichHtmlField id="PageContent" FieldName="PublishingPageContent" MinimumEditHeight="400px" DisableInputFieldLabel="true" runat="server"/>
				</div>
			</div>
		</div>
		<div class="right-wp-zone-col">
	    <div class="ewiki-slink">
				<div>
					<b><SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms,enterwiki_pagerating%>" EncodeMethod="HtmlEncode"/></b>
					<div><SharePointPortalControls:AverageRatingFieldControl FieldName="5a14d1ab-1513-48c7-97b3-657a5ba6c742" runat="server"/></div>
				</div>
				<div class="welcome-content">
					<style type="text/css">
						.ms-long
					   {
						   width: 100%;
					   }
					</style>
					<b><SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms,enterwiki_categories%>" EncodeMethod="HtmlEncode"/></b><br/>
					<Taxonomy:TaxonomyFieldControl FieldName="Wiki_x0020_Page_x0020_Categories" EmptyValueDescriptionForTargetTemplate="<%$Resources:cms,enterwiki_nocategories_assigned%>" DisableInputFieldLabel="true" runat="server" />
			   </div>
			   <br /><br />
			   <div class="welcome-content">
				   <b><SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms,projectpage_webpage_field_label%>" EncodeMethod="HtmlEncode"/></b><br>
				   <SharePoint:UrlField FieldName="WebPage" DisableInputFieldLabel="true" CssClass="ewiki-right-col" runat="server"/>
			   </div>
				<div class="welcome-content">
					<b><SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms,projectpage_contact_field_label%>" EncodeMethod="HtmlEncode"/></b><br>
					<SharePoint:UserField FieldName="PublishingContact" DisableInputFieldLabel="true" CssClass="ewiki-right-col" runat="server"/>
			   </div>
			   <div class="welcome-content">
				   <b><SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms,projectpage_taskstatus_field_label%>" EncodeMethod="HtmlEncode"/></b><br>
				   <SharePoint:RadioButtonChoiceField FieldName="TaskStatus" DisableInputFieldLabel="true" runat="server"/>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
