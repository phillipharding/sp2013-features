<%@ Page language="C#" MasterPageFile="~masterurl/default.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"  %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:StyleBlock runat="server"> 
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

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
    <SharePoint:EncodedLiteral runat="server" text="<%$Resources:Microsoft.Office.Server.Search, Search_MainPage_Title%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
    <SharePoint:EncodedLiteral runat="server" text="<%$Resources:Microsoft.Office.Server.Search, Search_MainPage_Title%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server"> 
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderLeftNavBar" runat="server"> 
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
    <div class="ms-searchCenter">
        <div class="ms-searchCenter-main">
            <WebPartPages:WebPartZone 
                runat="server" 
                AllowPersonalization="false" 
                FrameType="TitleBarOnly" 
                title="<%$Resources:Microsoft.Office.Server.Search,LayoutPageZone_MainZone%>" 
                id="MainZone" orientation="Vertical" 
                QuickAdd-GroupNames="Search" 
                QuickAdd-ShowListsAndLibraries="false"/>
        </div> 
    </div> 
</asp:Content>
