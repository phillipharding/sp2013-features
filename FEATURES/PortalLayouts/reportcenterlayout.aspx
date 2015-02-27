<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderID="PlaceHolderPageTitle" runat="server"> 
    <SharePoint:FieldValue id="PageTitle" FieldName="Title" runat="server" />
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
         <label class="ms-hidden"><SharePoint:ProjectProperty Property="Title" runat="server"/></label>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server"/>

<asp:Content ContentPlaceHolderId="PlaceHolderTitleAreaClass" runat="server">
<SharePoint:UIVersionedContent runat="server" UIVersion="<=3">
    <ContentTemplate>
        <style type="text/css">
        td.ms-titleareaframe, .ms-pagetitleareaframe {
            height: 10px; 
        }

        div.ms-titleareaframe {
            height: 100%;
        }

        .ms-pagetitleareaframe table {
            background: none;
            height: 10px;
        }
        </style>
    </ContentTemplate>
</SharePoint:UIVersionedContent>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderBodyAreaClass" runat="server">
<SharePoint:StyleBlock runat="server">
.ms-bodyareaframe {
    padding: 0px;
}
</SharePoint:StyleBlock>
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
	<table border="0" cellpadding="3" cellspacing="0" ID="HeaderZoneTable" width="100%"> 
	  <tr>
	   <td class="ms-pagebreadcrumb" colspan="2">
		<asp:SiteMapPath ID="ContentMap" Runat="server" SiteMapProvider="CurrentNavSiteMapProviderNoEncode" RenderCurrentNodeAsLink="false" SkipLinkText="" NodeStyle-CssClass="ms-sitemapdirectional"/>
	   </td>
	  </tr>

		<tr ID="HeaderRow" > 
			<td valign="top" ID="HeaderCell" width="70%"> 
				<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="HeaderZone" Title="<%$Resources:sps,LayoutPageZone_Header%>" Orientation="Vertical"/>
			</td> 
		</tr>
	</table>
	<table border="0" cellpadding="3" cellspacing="0" ID="MiddleZoneTable" width="100%"> 
		<tr ID="OuterRow">
			<td ID="OuterLeftCell" width="80%">
				<table border="0" cellpadding="0" cellspacing="0" ID="ZoneTable" width="100%">
					<tr ID="TopRow" >
						<td valign="top" ID="TopLeftCell" width="100%" colspan="3">
							<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="TopLeftZone" Title="<%$Resources:sps,LayoutPageZone_TopLeftZone%>" Orientation="Vertical"/>
						</td>
					</tr>
					<tr ID="MiddleRow">
						<td valign="top" ID="MiddleLeftCell" width="70%">
							<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="MiddleLeftZone" Title="<%$Resources:sps,LayoutPageZone_MiddleLeftZone%>" Orientation="Vertical"/>&nbsp;
						</td>
						<td>&nbsp;</td> 
						<td valign="top" ID="MiddleMiddleCell" width="30%">
							<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="MiddleMiddleZone" Title="<%$Resources:sps,LayoutPageZone_MiddleMiddleZone%>" Orientation="Vertical"/>&nbsp;
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr ID="BottomRow" class="ms-tzbottom">
						<td valign="top" ID="BottomCell" width="100%" colspan="3">
							<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="BottomLeftZone" Title="<%$Resources:sps,LayoutPageZone_BottomLeftZone%>" Orientation="Vertical"/>
						</td>
					</tr>
				</table>
			</td>
			<td ID="OuterRightCell" valign="top" width="20%" height="100%" rowspan="3">
				<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="RightZone" Title="<%$Resources:sps,LayoutPageZone_RightZone%>" Orientation="Vertical"/>
			</td>
		</tr>
	</table>
	<table border="0" cellpadding="3" cellspacing="0" ID="FooterZoneTable" width="100%"> 
		<tr ID="FooterRow" > 
			<td valign="top" ID="HeaderCell" width="70%"> 
				<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" FrameType="TitleBarOnly" ID="FooterZone" Title="<%$Resources:sps,LayoutPageZone_Footer%>" Orientation="Vertical"/>
			</td> 
		</tr>
	</table>
</asp:Content>

