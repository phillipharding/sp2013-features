<%@ Register Tagprefix="SPS" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Page language="C#" MasterPageFile="~masterurl/default.master" Codebehind="KpiListViewPage.aspx.cs" Inherits="Microsoft.SharePoint.Portal.WebControls.KpiListViewPage,Microsoft.SharePoint.Portal,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LeftNavigation" src="~/_controltemplates/15/LeftNavigation.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="ToolBar" src="~/_controltemplates/15/ToolBar.ascx" %>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server"><SharePoint:ListProperty Property="Title" runat="server"/></asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
    <SharePoint:ListProperty Property="Title" runat="server"/>
</asp:Content>

<asp:content contentplaceholderid="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:RssLink runat="server" />
</asp:content>

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

  <table width="100%" cellpadding="2" cellspacing="0" border="0">
   <tr>
    <td valign="top" class="ms-descriptiontext" style="padding-bottom: 10px"><SharePoint:ListProperty Property="Description" runat="server"/></td>
   </tr>
  </table>

    <asp:Label ID="editmsgLabel" CssClass="ms-editmsgLabelShow" Text="This Page can not be edited." runat="Server"></asp:Label>

    <wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/images/blank.gif' alt=''>" RightButtonSeparator="&nbsp;&nbsp;" runat="server">
        <Template_Buttons>
            <SharePoint:NewMenu runat="server" />
            <SharePoint:ActionsMenu  runat="server" />
            <SharePoint:SettingsMenu runat="server" />
        </Template_Buttons>
        <Template_RightButtons>
              <SharePoint:PagingButton runat="server"/>
              <SharePoint:ListViewSelector runat="server"/>
        </Template_RightButtons>
    </wssuc:ToolBar>

    <SPS:KpiListWebPart id="kpiListWebPartControl" runat="server" WebPart="true" __WebPartId="{42F2DD56-0CEC-459b-9425-C42667EEFFEA}" >
        <WebPart xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/WebPart/v2">
            <Title></Title>
            <FrameType>None</FrameType>
            <Description></Description>
            <IsIncluded>true</IsIncluded>
            <FrameState>Normal</FrameState>
            <FrameType>None</FrameType>
            <Height />
            <Width />
            <AllowRemove>false</AllowRemove>
            <AllowZoneChange>false</AllowZoneChange>
            <AllowMinimize>false</AllowMinimize>
            <IsVisible>true</IsVisible>
            <Hidden>false</Hidden>
            <DetailLink />
            <HelpLink />
            <Dir>Default</Dir>
            <PartImageSmall />
            <MissingAssembly />
            <PartImageLarge />
            <IsIncludedFilter />
            <AuthorizationFilter />
            <ToolbarHidden xmlns="urn:schemas-microsoft-com:KPIListWebPart">true</ToolbarHidden>
        </WebPart>
    </SPS:KpiListWebPart>

    <WebPartPages:WebPartZone runat="server" FrameType="None" ID="Main" Title="loc:Main" Visible="false"/>

</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderBodyAreaClass" runat="server">
<SharePoint:StyleBlock runat="server">
.ms-bodyareaframe {
    padding: 0px;
} 
.ms-editmsgLabelShow 
{
    color: #333;
    font-family: Tahoma; 
    font-size: 9pt; 
    background:transparent;
    display:inline;
    padding-bottom: 10px;
}
.ms-editmsgLabelHidden 
{
    color: #333;
    font-family: Tahoma; 
    font-size: 9pt; 
    background:transparent;
    display:none;
    padding-bottom: 10px;
}
</SharePoint:StyleBlock>
</asp:Content>
