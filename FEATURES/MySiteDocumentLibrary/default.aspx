<%@ Page language="C#" MasterPageFile="~masterurl/custom.master"      Inherits="Microsoft.SharePoint.Portal.WebControls.PersonalWebPartPage,Microsoft.SharePoint.Portal,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="NavItem" src="/_controltemplates/NavItem.ascx" %>

<asp:Content contentplaceholderid="PlaceHolderPageTitleInTitleArea" runat="server">
  <SPSWC:PersonalSpaceRedirect runat="server" />
  <SPSWC:LabelLoc TextLocId="MySiteContentText" runat="server" />
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderPageTitle" runat="server">
    <SPSWC:PersonalSpaceMainHeading TitleMode="true" runat="server" />
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderMain" runat="server">
  <div class="ms-alignright">
    <SPSWC:SetPersonalSiteButton runat="server" id="TBBPersonalSiteButton" class="ms-toolbar" ShowImageAndText="false"/>
  </div>

  <table id="MSO_ContentTable" MsoPnlId="layout" class="ms-core-tableNoSpace ms-fillBox"> <tr id="TopRow"> <td valign="top" id="TopCell" colspan="3"> <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" AllowPersonalization="true" ID="TopZone" Title="<%$Resources:sps,LayoutPageZone_TopZone%>" Orientation="Vertical" /> </td> </tr> <tr id="MiddleRow"> <td valign="top" id="MiddleLeftCell" width="60%"> <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" AllowPersonalization="true" ID="MiddleLeftZone" Title="<%$Resources:sps,LayoutPageZone_MiddleLeftZone%>" Orientation="Vertical" /> </td> <td style="padding:0px 10px"></td> <td valign="top" id="MiddleLRightCell" width="40%"> <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" AllowPersonalization="true" ID="MiddleRightZone" Title="<%$Resources:sps,LayoutPageZone_MiddleRightZone%>" Orientation="Vertical" /> </td> </tr> <tr id="BottomRow"> <td valign="top" id="BottomCell" colspan="3"> <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" AllowPersonalization="true" ID="BottomZone" Title="<%$Resources:sps,LayoutPageZone_BottomZone%>" Orientation="Vertical" /> </td> </tr> </table>
</asp:Content>
