<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>

<%@ Control Language="C#" Inherits="Microsoft.Office.Excel.Server.MossHost.Administration.InputFormExcelServerSetting,Microsoft.Office.Excel.Server.MossHost,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Import Namespace="Microsoft.Office.Excel.Server.MossHost.Administration" %>

<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>

	<wssuc:InputFormControl	id="m_inputFormControl"	runat="server">
		<Template_LabelText>
			<% if (!String.IsNullOrEmpty(LabelText))
			{
			%>

				<label id="m_label" runat="server" style="font-weight:bold">

				<%=Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(LabelText) %> 
				</label>
			<% 
			} 
			%>
		</Template_LabelText>
		<Template_Control>
			<% if (!String.IsNullOrEmpty(Description))
			{
			%>

				<%=Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(Description) %> 
				<br> 
			<% 
			} 
			%>
			<asp:PlaceHolder id="m_placeholderControl" runat="server"/>
			<wssawc:InputFormCustomValidator
				id="m_customValidator"
				runat="server" />
			<asp:PlaceHolder id="m_placeholderValidator" runat="server"/>
			<asp:PlaceHolder id="m_placeholderAdditionalControls" runat="server"/>
			<% if (!String.IsNullOrEmpty(ExtendedDescription))
			{
			%>

				<%=Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ExtendedDescription) %> 
				<br> 
			<% 
			} 
			%>
		</Template_Control>
		<Template_ExampleText>
			<% if (!String.IsNullOrEmpty(ExampleText))
			{
			%>

				<%=Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ExampleText) %> 
			<% 
			} 
			%>
		</Template_ExampleText>
	</wssuc:InputFormControl>
