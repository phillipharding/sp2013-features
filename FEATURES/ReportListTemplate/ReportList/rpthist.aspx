<%@ Page language="C#" MasterPageFile="~masterurl/default.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"  %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LeftNavigation" src="~/_controltemplates/15/LeftNavigation.ascx" %>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server"><SharePoint:ListProperty Property="Title" runat="server"/></asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
    <SharePoint:ListProperty Property="Title" runat="server"/>
</asp:Content>

<asp:content contentplaceholderid="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:RssLink runat="server" />
</asp:content>

<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server">
    <SharePoint:DelegateControl runat="server" ControlId="SmallSearchInputBox"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server">
    <SharePoint:ViewIcon Width="145" Height="54" runat="server" />
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderLeftActions" runat="server">
    <wssuc:LeftNavigation runat="server"/>
</asp:Content>

<asp:Content ContentPlaceHolderId ="PlaceHolderBodyLeftBorder" runat="server"> 
 <div height=100% class="ms-pagemargin"><img src="/_layouts/15/images/blank.gif?rev=23" width='6' height='1' alt="" /></div>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">

<SPSWC:ReportMetadataStrip webpart="true" runat="server" Title="" NoDefaultStyle="TRUE" ViewFlag="0" FrameType="None" __markuptype="vsattributemarkup" __WebPartId="{038C8673-E8C7-4199-962D-EE5E7CC84B2D}" />

		<WebPartPages:WebPartZone runat="server" FrameType="None" ID="Main" Title="loc:Main" />

</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderBodyAreaClass" runat="server">
<SharePoint:StyleBlock runat="server">
.ms-bodyareaframe {
    padding: 0px;
} 
</SharePoint:StyleBlock>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">

<SharePoint:ListProperty CssClass="ms-listdescription" Property="Description" runat="server"/>

</asp:Content>

