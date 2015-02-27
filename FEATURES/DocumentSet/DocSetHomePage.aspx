<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Page language="C#" MasterPageFile="~masterurl/default.master"  inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"     %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="OfficeServer" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.DocumentManagement, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcdm, DocSetHomepage_Title%>" EncodeMethod='HtmlEncode'/>
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
	<span id="idParentFolderName">&#160;</span>
	<span class="ms-pageTitle-separatorSpan">
		<SharePoint:ClusteredDirectionalSeparatorArrow runat="server" />
	</span>
	<span id="idDocsetName">&#160;</span>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	<OfficeServer:DocSetWelcomePageControl runat="server" ID="idDocSet" />
	<table width="100%">
		<tr>
			<td width="15%" valign="top">
				<WebPartPages:WebPartZone runat="server" PartChromeType="None" id="WebPartZone_TopLeft" LayoutOrientation="vertical" AllowPersonalization="false" AllowCustomization="true">
					<ZoneTemplate></ZoneTemplate>
				</WebPartPages:WebPartZone>
			</td>
			<td width="85%" valign="top">
				<WebPartPages:WebPartZone runat="server" PartChromeType="None" id="WebPartZone_Top" LayoutOrientation="vertical" AllowPersonalization="false" AllowCustomization="true">
					<ZoneTemplate></ZoneTemplate>
				</WebPartPages:WebPartZone>
			</td>
		</tr>
	</table>
	<table width="100%">
		<tr>
			<td>
				<WebPartPages:WebPartZone runat="server" PartChromeType="None" id="WebPartZone_CenterMain" LayoutOrientation="vertical" AllowPersonalization="false" AllowCustomization="true">
					<ZoneTemplate></ZoneTemplate>
				</WebPartPages:WebPartZone>
			</td>
		</tr>
	</table>
	<table width="100%">
		<tr>
			<td>
				<WebPartPages:WebPartZone runat="server" PartChromeType="None" id="WebPartZone_Bottom" LayoutOrientation="vertical" AllowPersonalization="false" AllowCustomization="true">
					<ZoneTemplate></ZoneTemplate>
				</WebPartPages:WebPartZone>
			</td>
		</tr>
	</table>
</asp:Content>
