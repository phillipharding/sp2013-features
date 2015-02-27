<%@ Page language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Dms" TagName="DMSLeftNavigationControl" Src="~/_controltemplates/15/DMSLeftNavigationControl.ascx" %>

<asp:Content contentplaceholderid="PlaceHolderPageTitle" runat="server">
</asp:Content>
<asp:Content contentplaceholderid="PlaceHolderPageTitleInTitleArea" runat="server">
</asp:Content>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <SharePointWebControls:CssRegistration Name="Themable/dms.css" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderLeftNavBar" runat="server">
    <Dms:DMSLeftNavigationControl runat="server" />
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
<div class="article article-body">
    <PublishingWebControls:EditModePanel runat="server" CssClass="edit-mode-panel">
        <SharePointWebControls:TextField runat="server" FieldName="Title"/>
    </PublishingWebControls:EditModePanel>
    <div class="article-content">
        <PublishingWebControls:RichHtmlField FieldName="PublishingPageContent" HasInitialFocus="True" MinimumEditHeight="400px" runat="server"/>
    </div>
    <PublishingWebControls:EditModePanel runat="server" CssClass="edit-mode-panel roll-up">
        <PublishingWebControls:RichImageField FieldName="PublishingRollupImage" AllowHyperLinks="false" runat="server" />
        <asp:Label text="<%$Resources:cms,Article_rollup_image_text%>" runat="server" />
    </PublishingWebControls:EditModePanel>
</div>
</asp:Content>
