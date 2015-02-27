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
	<SharePointWebControls:FieldValue id="PageStylesField" FieldName="HeaderStyleDefinitions" runat="server"/>
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
						UseServerSideRenderFormat="False" />
	</div>
	<div class="article article-left">
		<PublishingWebControls:EditModePanel runat="server" CssClass="edit-mode-panel">
		  <PublishingWebControls:CatalogSourceFieldControl FieldName="CatalogSource" runat="server" ID="SourceItem"/>
		</PublishingWebControls:EditModePanel>
		 <div class="captioned-image">
			<div class="image">
			<SearchWC:CatalogItemReuseWebPart
						id=ResultList2
						runat="server"
						FrameType="None"
						ResultsPerPage=1
						SelectedPropertiesJson="[&quot;PublishingPageImageOWSIMGE&quot;]"
						PropertyMappings="Rich Data:PublishingPageImageOWSIMGE"
						RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Control_CatalogDefault.js"
						ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Item_CatalogRich.js"
						/>
			</div>
			<div class="caption">
			<SearchWC:CatalogItemReuseWebPart
						id=ResultList3
						runat="server"
						FrameType="None"
						ResultsPerPage=1
						SelectedPropertiesJson="[&quot;PublishingImageCaptionOWSHTML&quot;]"
						PropertyMappings="Rich Data:PublishingImageCaptionOWSHTML"
						RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Control_CatalogDefault.js"
						ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Item_CatalogRich.js"
						/>
			</div>
		</div>
		<div class="article-header">
			<div class="date-line">
			<SearchWC:CatalogItemReuseWebPart
						id=ResultList4
						runat="server"
						FrameType="None"
						ResultsPerPage=1
						SelectedPropertiesJson="[&quot;ArticleStartDateOWSDATE&quot;]"
						PropertyMappings="Date:ArticleStartDateOWSDATE"
						RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Control_CatalogDefault.js"
						ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Item_CatalogDateTime.js"
						/>
			</div>
			<div class="by-line">
				<SearchWC:CatalogItemReuseWebPart
						id=ResultList5
						runat="server"
						FrameType="None"
						ResultsPerPage=1
						SelectedPropertiesJson="[&quot;ArticleByLineOWSTEXT&quot;]"
						PropertyMappings="Text:ArticleByLineOWSTEXT"
						RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Control_CatalogDefault.js"
						ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Item_CatalogDefault.js"
						/>
			</div>
		</div>
		<div class="article-content">
		   <SearchWC:CatalogItemReuseWebPart
						id=ResultList6
						runat="server"
						FrameType="None"
						ResultsPerPage=1
						SelectedPropertiesJson="[&quot;PublishingPageContentOWSHTML&quot;]"
						PropertyMappings="Rich Data:PublishingPageContentOWSHTML"
						RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Control_CatalogDefault.js"
						ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Item_CatalogRich.js"
						/>
		</div>
	</div>
</asp:Content>
