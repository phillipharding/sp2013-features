<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:StyleBlock runat="server"> 
        #s4-titlerow
        { 
            display: none !important; 
        }
		#titlerow
        { 
            display: none !important; 
        }
		<% 	
			WebPartManager webPartManager = SPWebPartManager.GetCurrentWebPartManager(this.Page);
			if (webPartManager != null && webPartManager.DisplayMode == SPWebPartManager.BrowseDisplayMode)
			{ 
		%>
				#s4-ribbonrow
				{ 
					display: none;
				}
		<%			
			}
		%>

    </SharePoint:StyleBlock>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server"> 
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderLeftNavBar" runat="server"> 
	<div id="searchIcon">
		<SharePoint:SPSimpleSiteLink CssClass="ms-siteicon-a" runat="server" id="onetidProjectPropertyTitleGraphic" >
			<SharePoint:SiteLogoImage CssClass="ms-siteicon-img" name="onetidHeadbnnr0" id="onetidHeadbnnr2" LogoImageUrl="/_layouts/15/images/siteIcon.png" runat="server"/>
		</SharePoint:SPSimpleSiteLink>
	</div>
	<div class="ms-searchCenter-refinement">
		<WebPartPages:WebPartZone 
			runat="server" 
			AllowPersonalization="false" 
			FrameType="TitleBarOnly" 
			title="<%$Resources:Microsoft.Office.Server.Search,LayoutPageZone_NavigationZone%>" 
			id="NavigationZone" orientation="Vertical" 
			QuickAdd-GroupNames="Search" 
			QuickAdd-ShowListsAndLibraries="false"/>&nbsp;
	</div>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
    <div class="ms-searchCenter-result-main">
        <WebPartPages:WebPartZone 
            runat="server" 
            AllowPersonalization="false" 
            FrameType="TitleBarOnly" 
            title="<%$Resources:Microsoft.Office.Server.Search,LayoutPageZone_MainZone%>" 
            id="MainZone" orientation="Vertical" 
            QuickAdd-GroupNames="Search" 
            QuickAdd-ShowListsAndLibraries="false"/>
    </div> 
</asp:Content>

