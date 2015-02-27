<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server"> <div class="breadcrumb"> <asp:SiteMapPath ID="siteMapPath" Runat="server" SiteMapProvider="CurrentNavSiteMapProviderNoEncode" RenderCurrentNodeAsLink="false" SkipLinkText="" CurrentNodeStyle-CssClass="breadcrumbCurrent" NodeStyle-CssClass="ms-sitemapdirectional"/> </div> </asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderBodyAreaClass" runat="server">
<SharePoint:StyleBlock runat="server">
.ms-bodyareaframe
{
    padding: 0px;
} 
</SharePoint:StyleBlock>
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderPageTitle" runat="server"> 
    <SharePoint:FieldValue id="PageTitle" FieldName="Title" runat="server" />
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server"> 
    <SharePoint:FormField runat="server" id="TitleField" FieldName="Title" />
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
<table style="padding-top:15px;" border="0" cellpadding="0" cellspacing="0" ID="OuterZoneTable" width="100%">
	<tr ID="OuterRow">
		<td ID="OuterLeftCell" style="padding-left:10px;padding-right:10px" width="100%">
			<table border="0" cellpadding="0" cellspacing="0" ID="ZoneTable" width="100%">
				<tr ID="TopRow" >
					<td valign="top" ID="TopCell" width="100%" colspan="3">
						<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="TopZone" Title="Top Zone" Orientation="Vertical"/>
					</td>
				</tr>
				<tr ID="MiddleRow">
					<td valign="top" ID="MiddleLeftCell" width="67%">
						<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="MiddleLeftZone" Title="Middle Left Zone" Orientation="Vertical"/>&nbsp;
					</td>
					<td>&nbsp;</td> 
					<td valign="top" ID="MiddleRightCell" width="33%">
							<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="MiddleRightZone" Title="Middle Right Zone" Orientation="Vertical"/>&nbsp;
					</td>
				</tr>
				<tr ID="BottomRow" class="ms-tzbottom">
					<td valign="top" ID="BottomCell" width="100%" colspan="3">
						<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="BottomZone" Title="Bottom Zone" Orientation="Vertical"/>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</asp:Content>
