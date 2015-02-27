<%-- _lcid="1033" _version="12.0.3704" _dal="1" --%>
<%-- _LocalBinding --%>
<%@ Page language="C#" MasterPageFile="~masterurl/default.master"   EnableViewState="false" EnableViewStateMac="false" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=12.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:ListProperty Property="Title" runat="server"/> - <SharePoint:ListItemProperty Property="BaseName" MaxLength=40 runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<table cellpadding=0 cellspacing=0 border=0>
		<tr>
			<td class="ms-pagetitle"><SharePoint:ListProperty Property="LinkTitle" runat="server"/>:
				<SharePoint:ListItemProperty runat="server"/>
			</td>
		</tr>
		<tr>
			<td>
				<table class="ms-titlearea" cellpadding=0 cellspacing=0 border=0>
					<tr>
						<td width=20>
						<img src="/_layouts/images/ofolder.gif" alt="Folder"></td>
						<td><SharePoint:ListProperty Property="RelativeFolderPath" runat="server"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server">
	<IMG SRC="/_layouts/images/blank.gif" width=1 height=1 alt="">
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderLeftNavBar" runat="server"/>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
 <WebPartPages:WebPartZone runat="server" FrameType="None" ID="Main" Title="loc:Main" />
 <IMG SRC="/_layouts/images/blank.gif" width=590 height=1 alt="">
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleLeftBorder" runat="server">
<table cellpadding=0 height=100% cellspacing=0>
 <tr>
  <td class="ms-areaseparatorcorner" height=8px><IMG SRC="/_layouts/images/blank.gif" width=8 height=1 alt=""></td>
 </tr>
 <tr><td class="ms-areaseparatorleft"><IMG SRC="/_layouts/images/blank.gif" width=1 height=1 alt=""></td></tr>
</table>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleAreaClass" runat="server">
<script id="onetidPageTitleAreaFrameScript">
	document.getElementById("onetidPageTitleAreaFrame").className="ms-areaseparator";
</script>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderBodyAreaClass" runat="server">
<style>
.ms-bodyareaframe {
	background-color: #ffffff;
	padding: 8px;
	border: none;
	width: 0%;
}
.ms-rightareacell {
	width: 50%;
}
.ms-leftareacell {
	width: 50%;
}
</style>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderBodyLeftBorder" runat="server">
<div class='ms-areaseparatorleft'><IMG SRC="/_layouts/images/blank.gif" width=8 height=100% alt=""></div>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleRightMargin" runat="server">
<div class='ms-areaseparatorright'><IMG SRC="/_layouts/images/blank.gif" width=8 height=100% alt=""></div>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderBodyRightMargin" runat="server">
<div class='ms-areaseparatorright'><IMG SRC="/_layouts/images/blank.gif" width=8 height=100% alt=""></div>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderNavSpacer" runat="server">
<IMG SRC="/_layouts/images/blank.gif" width=125 height=1 alt="">
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleAreaSeparator" runat="server"/>
