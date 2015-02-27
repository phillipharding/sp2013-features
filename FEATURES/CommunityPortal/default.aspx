<%@ Page language="C#" MasterPageFile="_catalogs/masterpage/seattle.master"      Inherits="Microsoft.SharePoint.Portal.WebControls.CommunityPortalPage,Microsoft.SharePoint.Portal,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content contentplaceholderid="PlaceHolderPageTitleInTitleArea" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderTopNavBar" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderLeftNavBar" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderBodyAreaClass" runat="server">
<Sharepoint:CssRegistration runat="server" Name="Themable/communities.css" />
<style type="text/css">
.ms-bodyareaframe {
    padding: 0px;
}
</style>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" id="ZoneTable" width="100%">
        <tr class=" ms-commportal-titleArea">
            <td class="ms-commportal-titleTd">
                <h1 class="ms-core-pageTitle ms-commportal-titleHeading" id="pageTitle"><SharePoint:ProjectProperty Property="Title" runat="server"/></h1>
            </td>
            <td class="ms-commportal-searchArea">
                <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ARGS ID="TopZone" Title="<%$Resources:sps,LayoutPageZone_TopZone%>" Orientation="Vertical" />
            </td>
        </tr>
    </table>
    <div class="ms-textXLarge ms-commportal-descriptionArea">
        <SharePoint:ProjectProperty Property="Description" runat="server"/>
    </div>
    <div id="MSO_Content" class="ms-commportal-mainZoneArea" valign="top">
        <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="Main" Title="loc:Main" AllowPersonalization="false" />
    </div>
</asp:Content>
