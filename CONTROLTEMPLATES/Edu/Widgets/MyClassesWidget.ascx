<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyClassesWidget.ascx.cs"  Inherits="Microsoft.Office.Education.WebUI.MyClassesWidget,Microsoft.Office.Education.WebUI,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>

<div id="MyClasses_OuterDiv">
    <div id="MyClasses_Title" class="edu-title edu-inlineBlock">
        <h2><asp:PlaceHolder id="m_titlePlaceholder" runat="server" /></h2>
    </div>
    <div id="MyClasses_Pager" class="edu-inlineBlock" />
</div>
