<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
	<style type="text/css">
		.page-title
		{
			display: none;
		}
	</style>

	<SharePoint:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/page-layouts-21.css %>" runat="server"/>
	<PublishingWebControls:EditModePanel runat="server" id="editmodestyles">
		<!-- Styles for edit mode only-->
		<SharePoint:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/edit-mode-21.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/page-layouts-21.css %>" runat="server"/>
	</PublishingWebControls:EditModePanel>
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
	<SharePoint:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server">
	<img src="/_layouts/images/blank.gif" alt="">
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server"/>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
<table style="padding-top:0px;" border="0" cellpadding="0" cellspacing="0" ID="OuterZoneTable" width="100%">
	<tr>
		<td class="ms-pagebreadcrumb" colspan="2">
			<asp:SiteMapPath ID="ContentMap" Runat="server" SiteMapProvider="CurrentNavSiteMapProviderNoEncode" RenderCurrentNodeAsLink="false" SkipLinkText="" NodeStyle-CssClass="ms-sitemapdirectional"/>
		</td>
	</tr>
	<tr ID="OuterRow">
		<td ID="OuterLeftCell" style="padding-left:10px;" width="80%" valign="top">
			<table class="floatLeft">
				<tr>
				<td valign="top">
					<PublishingWebControls:RichImageField id="ImageField" FieldName="PublishingPageImage" runat="server"/>
				</td>
				<td class="caption">
					<PublishingWebControls:RichHtmlField id="Content" FieldName="PublishingPageContent" HasInitialFocus="True" MinimumEditHeight="400px" runat="server"/>
				</td>
				</tr>
			</table>
			<table border="0" cellpadding="0" cellspacing="0" ID="ZoneTable" width="100%">
				<tr ID="TopRow" style="padding-top: 6px;padding-right: 6px;padding-left:6px;padding-bottom: 18px;">
					<td valign="top" ID="TopCell" width="100%" colspan="3">
						<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="TopZone" 
								Title="<%$Resources:sps,LayoutPageZone_TopZone%>" Orientation="Vertical" 
								QuickAdd-GroupNames="Default" QuickAdd-ShowListsAndLibraries="false" />
					</td>
				</tr>
				<tr ID="MiddleRow" style="padding-top: 6px;padding-right: 6px;padding-left:6px;padding-bottom:0px;">
					<td valign="top" ID="MiddleLeftCell" width="100%" style="padding-top: 6px;padding-right: 6px;padding-left:6px;padding-bottom: 6px;">
						<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="MiddleLeftZone" 
								Title="<%$Resources:sps,LayoutPageZone_MiddleLeftZone%>" Orientation="Vertical" 
								QuickAdd-GroupNames="Default" QuickAdd-ShowListsAndLibraries="false" />&nbsp;
					</td>
					<td>&nbsp;</td> 
					<td valign="top" ID="MiddleRightCell" style="padding-top: 6px;padding-right: 6px;padding-left:6px;padding-bottom: 6px;">
												<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="MiddleRightZone" 
												Title="<%$Resources:sps,LayoutPageZone_MiddleRightZone%>" Orientation="Vertical" 
												QuickAdd-GroupNames="Default" QuickAdd-ShowListsAndLibraries="false"/>&nbsp;
					</td>
				</tr>
				<tr ID="BottomRow" style="padding-top: 0px;padding-right: 6px;padding-left:6px;padding-bottom: 6px;">
					<td valign="top" ID="BottomCell" width="100%" colspan="3">
						<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="BottomZone" 
								Title="<%$Resources:sps,LayoutPageZone_BottomZone%>" Orientation="Vertical"
								QuickAdd-GroupNames="Default" QuickAdd-ShowListsAndLibraries="false"/>
					</td>
				</tr>
			</table>
		</td>
		<td ID="OuterRightCell" style="padding-left:10px;padding-right:10px;" valign="top" height="100%" width="180px;" rowspan="3">
				<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="RightZone" 
								Title="<%$Resources:sps,LayoutPageZone_RightZone%>" Orientation="Vertical"
								QuickAdd-GroupNames="Default" QuickAdd-ShowListsAndLibraries="false"/>
		</td>
	</tr>
</table>
</asp:Content>
