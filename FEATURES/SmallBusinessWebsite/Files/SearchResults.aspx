<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SearchWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea"  runat="server">
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms,smallbusinesswebsite_searchresults_pagetitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
	<input type="hidden" id="blogResultListsText" value="<asp:Literal runat="server" Text="<%$Resources:core,lists_Folder%>"/>" />
	<input type="hidden" id="blogResultPostsText" value="<asp:Literal runat="server" Text="<%$Resources:core,blogpost_Folder%>"/>" />
	<input type="hidden" id="blogResultBlogText" value="<asp:Literal runat="server" Text="<%$Resources:cmscore,PublishingBlogBlogText%>"/>" />
	<input type="hidden" id="blogResultPostText" value="<asp:Literal runat="server" Text="<%$Resources:cmscore,PublishingBlogPostText%>"/>" />
	<div class='ms-siteSearch-result'>
		<SearchWC:DataProviderScriptWebPart
			runat="server"
			ChromeType="None"
			AsynchronousResultRetrieval="true"
			QueryPropertiesTemplateUrl="sitesearch://webroot"
			QueryTemplate="{searchboxquery} AND Path:{Site.URL} AND (ContentTypeId:0x010100C568DB52D9D0A14D9B2FDCC96666E9F2007948130EC3DB064584E219954237AF390018EA875251284D5A8F0059B0597CFEC8* OR IsDocument:true OR ContentClass:STS_ListItem_Posts)"
		/>
		<SearchWC:ResultScriptWebPart
			runat="server"
			RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Search/Control_SearchResults.js"
			ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_Simple.js"
			ChromeType="None"
			ShowResultCount="false"
			ShowAdvancedLink="false"
			ShowAlertMe="false"
			ShowLanguageOptions="false"
			ShowDidYouMean="false"
			ShowDefinitions="false"
			ShowPersonalFavorites="false"
			ShowBestBets="false"
			ShowPreferencesLink="false"
			UseSharedDataProvider="true"
			ScrollToTopOnRedraw="true"
			ByPassResultTypes="true"
		/>
	</div>
</asp:Content>
