<%@ Page language="C#" MasterPageFile="~masterurl/custom.master"      Inherits="Microsoft.SharePoint.Portal.WebControls.FollowedContentWebPartPage,Microsoft.SharePoint.Portal,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="NavItem" src="/_controltemplates/15/NavItem.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>

<asp:Content contentplaceholderid="PlaceHolderTitleBreadcrumb" runat="server">
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderPageTitle" runat="server">
    <SPSWC:StringValue LocId="MultPages_FollowedContent_Label" runat="server" />
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderPageTitleInTitleArea" runat="server">
    <SPSWC:StringValue LocId="MultPages_FollowedContent_Label" runat="server" />
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderMain" runat="server">
    <SPSWC:PageLevelError runat="server" id="pageLevelError"/>

    <div>
        <table border="0" cellpadding="0" cellspacing="0" id="ZoneTable" width="100%">
        <tr id="MiddleRow">
            <td style="padding:10px">&nbsp;</td>
            <td valign="top" id="LeftCell" width="70%" >
                <WebPartPages:WebPartZone runat="server" FrameType="None" ID="LeftZone" Title="<%$Resources:sps,LayoutPageZone_LeftZone%>" Orientation="Vertical" />
            </td>
            <td style="padding:10px">&nbsp;</td>
            <td valign="top" id="RightCell" width="30%">
                <style type="text/css">
                    .ms-WPTitle { 
                        color:black;
                    }
                </style>
                <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="RightZone" Title="<%$Resources:sps,LayoutPageZone_RightZone%>" Orientation="Vertical" />
            </td>
            <td style="padding:10px">&nbsp;</td>
        </tr>
        </table>
    </div>
</asp:Content>
