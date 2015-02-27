<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DMSLeftNavigationControl.ascx.cs"  Inherits="Microsoft.Office.DocMarketplace.DMSLeftNavigationControl,Microsoft.Office.DocMarketplace,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="DmsControls" Namespace="Microsoft.Office.DocMarketplace" Assembly="Microsoft.Office.DocMarketplace, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<SharePoint:CssRegistration Name="Themable/dms.css" runat="server"/>
<SharePoint:CssRegistration Name="Themable/layouts.css" runat="server"/>

<div class="s4-ql">
    <div class="ms-core-listMenu-verticalBox">
        <ul id="DmsLeftNavMenu" class="root ms-core-listMenu-root static">
            <li id="DmsHomeMenuItem">
                <a class="static menu-item ms-core-listMenu-item" id="DmsHomeLink" runat="server"></a>
            </li>
            <li id="DmsMyCollectionMenuItem">
                <a class="static menu-item ms-core-listMenu-item" id="DmsMyCollectionLink" href="MyCollection.aspx" runat="server"></a>
            </li>
            <li id="DmsPublishMenuItem">
                <a class="static menu-item ms-core-listMenu-item" id="DmsPublishLink" href="_layouts/15/dmspublish.aspx" runat="server"></a>
            </li>
        </ul>
    </div>
</div>
