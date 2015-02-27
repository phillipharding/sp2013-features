<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DetailsControl.ascx.cs"  Inherits="Microsoft.Office.DocMarketplace.DetailsControl,Microsoft.Office.DocMarketplace,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Taxonomy" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="PortalControls" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<div>
    <!-- this is the metadata column-->
    <div class="dms-detailsMarginBottom8">
        <div class="dms-detailsLeft" >
            <asp:Label runat="server" Text="<%$Resources:dms, IDS_DetailPageAuthorLabel%>"/>&nbsp;
        </div>
        <div class="dms-detailsRight" >
           <SharePointWebControls:TextField id="AuthorLabel" FieldName="0BAB0AFC-F9EB-4CC2-B580-6F06DCEB1963" runat="server"></SharePointWebControls:TextField>
           <asp:Hyperlink runat="server" id="AuthorUrl" CssClass="textarea" />
        </div>
    </div>

    <div class="dms-detailsMarginBottom8">
        <div class="dms-detailsLeft" >
            <asp:Label runat="server" Text="<%$Resources:dms, IDS_DetailPageRatingLabel%>" />&nbsp;
        </div>
        <div class="dms-detailsRatingRight" >
            <PortalControls:AverageRatingFieldControl FieldName="5a14d1ab-1513-48c7-97b3-657a5ba6c742" runat="server" />
        </div>
    </div>

    <div class="dms-detailsMarginBottom8">
        <div class="dms-detailsLeft" >
            <asp:Label runat="server" Text="<%$Resources:dms, IDS_DetailPageReleaseDateLabel%>" />&nbsp;
        </div>
        <div class="dms-detailsRight" >
           <SharePointWebControls:DateTimeField FieldName="E4632C52-AA49-49F7-8010-65BCB113572F" runat="server"></SharePointWebControls:DateTimeField>
        </div>
    </div>

    <div class="dms-detailsMarginBottom8">
        <div class="dms-detailsLeft" >
            <asp:Label runat="server" Text="<%$Resources:dms, IDS_DetailPageCategoryLabel%>" />&nbsp;
        </div>
        <div class="dms-detailsRight" >
            <Taxonomy:TaxonomyFieldControl FieldName="73572ebb-bc38-411d-895b-05a448949be6" runat="server" id="CategoryFieldControl"></Taxonomy:TaxonomyFieldControl>
        </div>
    </div>

    <div class="dms-detailsMarginBottom8">
        <div class="dms-detailsLeft" >
            <asp:Label runat="server" Text="<%$Resources:dms, IDS_DetailPageLanguageLabel%>" />&nbsp;
        </div>
        <div class="dms-detailsRight" >
            <SharePointWebControls:DropDownChoiceField FieldName="d81529e8-384c-4ca6-9c43-c86a256e6a44" ControlMode="Display" runat="server" ></SharePointWebControls:DropDownChoiceField>
        </div>
    </div>

    <div class="dms-detailsMarginBottom8">
        <div class="dms-detailsLeft" >
           <asp:Label runat="server" Text="<%$Resources:dms, IDS_DetailPagePublisherLabel%>"/>&nbsp;
        </div>
        <div class="dms-detailsRight" >
             <SharePointWebControls:UserField FieldName="42607D57-CC58-45F3-AEA7-0B8A7260BFCF" runat="server"></SharePointWebControls:UserField>
        </div>
    </div>

    <div>
        <div class="dms-detailsLeft" >
           <asp:Label runat="server" Text="<%$Resources:dms, IDS_DetailPageTagsLabel%>"/>&nbsp;
        </div>
        <div class="dms-detailsRight" >
             <SharePointWebControls:TextField FieldName="B5FC7284-7A18-448C-83F7-E5F763EF08CE" runat="server"></SharePointWebControls:TextField>
        </div>
    </div>
</div>
