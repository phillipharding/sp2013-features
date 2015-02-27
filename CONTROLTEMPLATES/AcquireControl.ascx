<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AcquireControl.ascx.cs"  Inherits="Microsoft.Office.DocMarketplace.AcquireControl,Microsoft.Office.DocMarketplace,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>

<div>
    <asp:Panel class="pageStatusBar" id="IRMStatus" runat="server">
        <div class="dms-statusBar" style="display:block">
            <span title="Important" role="alert">
                <b><asp:Label ID="IRMStatusTitle" runat="server" Text="<%$Resources:dms, AlertTitleWhenIrmDisabled%>"/></b>
                <span><asp:Label ID="IRMStatusBody" runat="server" Text="<%$Resources:dms, AlertsWhenIrmDisabled%>"/></span>
            </span>
        </div>
    </asp:Panel>
    <div class="dms-calloutBody"/>
    <div class="dms-detailsLeft">
        <!-- this is the thumbnail image-->
        <asp:image id="ThumbnailImage" runat="server" CssClass="dms-detailsPicture"></asp:image>
    </div>
    <div class="dms-detailsRight">
        <div class="dms-detailsMarginBottom16">
            <asp:Button ID="GetForMeButton" runat="server"  OnClick="GetForMeButton_Click" Text="<%$Resources:dms, IDS_GetForMeButtonLabel%>" CssClass="ms-textXLarge dms-detailsButtom"/>
        </div>

        <div class="dms-detailsMarginBottom14">
            <asp:Label ID="TermLabel" runat="server" Text="<%$Resources:dms, IDS_AcquireControlTermLabel%>" CssClass="ms-metadata"/>
            <asp:HyperLink ID="TermLink" runat="server"></asp:HyperLink>
        </div>
        <div>
            <div ID="PermissionLabel" runat="server" class="ms-textLarge dms-detailsMarginBottom6"/></div>
            <div><asp:Label ID="CheckoutRestrictLabel" runat="server" Text="<%$Resources:dms, IDS_CheckoutRestrictLabel%>"/></div>
            <div><asp:Label ID="LeaseTermRestrictLabel" runat="server" Text="<%$Resources:dms, IDS_LeaseTermRestrictLabel%>"/></div>
        </div>
    </div>
</div>
