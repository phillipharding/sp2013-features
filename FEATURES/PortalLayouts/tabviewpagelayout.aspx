<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderID="PlaceHolderPageTitle" runat="server"> 
    <SharePoint:FieldValue id="PageTitle" FieldName="Title" runat="server" />
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    <SharePoint:FormField runat="server" id="TitleField" FieldName="Title" />
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMiniConsole" runat="server">
  <SPSWC:MiniConsole runat="server">
	<SPSWC:SPSRepeatedControls id="RptControls" runat="server" HeaderHtml="" BeforeControlHtml="&lt;td class='ms-toolbar' nowrap='true' ID='_spFocusHere'&gt;"
	AfterControlHtml="&lt;/td&gt;" SeparatorHtml="&lt;td class=ms-separator&gt;|&lt;/td&gt;">
		<Template_Controls>
			<SPSWC:CreateSiteButton runat="server" class="ms-toolbar" id="TBBNewSTSSite" PermissionsString="ManageSubwebs, ManageLists" ShowImageAndText="false"/>
			<SPSWC:AddLinkToSiteButton runat="server" id="TBBNewListing" class="ms-toolbar" PermissionsString="AddListItems" ShowImageAndText="false"/>
		</Template_Controls>
	</SPSWC:SPSRepeatedControls>
  </SPSWC:MiniConsole>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
<table id="MSO_ContentTable" cellpadding="4" cellspacing="0" border="0" width="100%">
<tr>
<td class="ms-pagedescription" colspan="2" valign="top" width="80%">
<SharePoint:FormField runat="server" id="DescField" FieldName="Comments" />
</td>
 <td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" width="20%"> 
<WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" Title="<%$Resources:sps,LayoutPageZone_Header%>" ID="Header"/> </td> </tr> <tr><td colspan="3" width="100%"><SPSWC:ListBoundTabStrip ID="Mytab" runat="server" ListName="<%$Resources:sps,SitesOnet_TabsList_Title%>" ResourceIdForListName="$Resources:spscore,SitesOnet_TabsList_Title;"></SPSWC:ListBoundTabStrip></td></tr><tr> <td id="_invisibleIfEmpty" name="_invisibleIfEmpty" colspan="2" valign="top" height="100%"> 

<WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" Title="<%$Resources:sps,LayoutPageZone_LeftColumn%>" ID="TopZone"/> </td> <td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> 

<WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" Title="<%$Resources:sps,LayoutPageZone_RightColumn%>" ID="RightColumn"/> </td> </tr> <tr> <td id="_invisibleIfEmpty" name="_invisibleIfEmpty" colspan="3" valign="top" width="100%"> 

<WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" Title="<%$Resources:sps,LayoutPageZone_Footer%>" ID="Footer"/></td></tr> <script language="javascript">if(typeof(MSOLayout_MakeInvisibleIfEmpty) == "function") {MSOLayout_MakeInvisibleIfEmpty();}</script> </table> <BR>

</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server"> <div class="breadcrumb"> <asp:SiteMapPath ID="siteMapPath" Runat="server" SiteMapProvider="CurrentNavSiteMapProviderNoEncode" RenderCurrentNodeAsLink="false" SkipLinkText="" CurrentNodeStyle-CssClass="breadcrumbCurrent" NodeStyle-CssClass="ms-sitemapdirectional"/> </div> </asp:Content>
