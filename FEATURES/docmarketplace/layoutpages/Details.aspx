<%@ Page language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="DmsControls" Namespace="Microsoft.Office.DocMarketplace" Assembly="Microsoft.Office.DocMarketplace, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Dms" TagName="AcquireUserControl" Src="~/_controltemplates/15/AcquireControl.ascx" %>
<%@ Register TagPrefix="Dms" TagName="DetailsUserControl" Src="~/_controltemplates/15/DetailsControl.ascx" %>
<%@ Register TagPrefix="Dms" TagName="DMSLeftNavigationControl" Src="~/_controltemplates/15/DMSLeftNavigationControl.ascx" %>

<asp:Content contentplaceholderid="PlaceHolderPageTitle" runat="server">
    <SharePointWebControls:TextField FieldName="A8DE6DC3-9C6F-466A-95AB-40F956449BA0" runat="server" ></SharePointWebControls:TextField>
</asp:Content>
<asp:Content contentplaceholderid="PlaceHolderPageTitleInTitleArea" runat="server">
    <SharePointWebControls:TextField FieldName="A8DE6DC3-9C6F-466A-95AB-40F956449BA0" runat="server" ></SharePointWebControls:TextField>
</asp:Content>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <SharePointWebControls:CssRegistration Name="Themable/dms.css" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderLeftNavBar" runat="server">
    <Dms:DMSLeftNavigationControl runat="server" />
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
    <div class="dms-detailsAcquireColumn">
        <Dms:AcquireUserControl runat="server" />
    </div>

    <div class="dms-detailsMetadataColumn">
        <Dms:DetailsUserControl runat="server" />
    </div>

    <div class="dms-detailsDescriptionColumn">
        <!-- this is the description section-->
        <asp:Label runat="server" Text="<%$Resources:dms, IDS_DetailPageDescriptionLabel%>" CssClass="ms-textLarge dms-detailsMarginBottom5"/>
        </br>
        <SharePointWebControls:NoteField FieldName="32dccbcd-63c1-45c6-bff5-5226a9aa85d9" runat="server"></SharePointWebControls:NoteField>
    </div>

    <div class="ms-metadata ms-alignCenter">
        </br>
        <asp:Label runat="server" Text="<%$Resources:dms, IDS_DetailPageLastModifiedLabel%>"/>
        <SharePointWebControls:DateTimeField runat="server" FieldName="28cf69c5-fa48-462a-b5cd-27b6f9d2bd5f"></SharePointWebControls:DateTimeField>
    </div>

</asp:Content>
