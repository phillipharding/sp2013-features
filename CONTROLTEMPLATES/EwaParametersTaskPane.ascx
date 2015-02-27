<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>

<%@ Register Tagprefix="ewa" Namespace="Microsoft.Office.Excel.WebUI" Assembly="Microsoft.Office.Excel.WebUI.Internal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Control Language="C#" Inherits="Microsoft.Office.Excel.WebUI.EwaParametersTaskPane" %>

<asp:Panel ID="m_root" runat="server" style="display: none" dir="ltr"> 
	<asp:HiddenField ID="m_expandedField" runat="server" value="true" /> 
	<asp:Panel ID="ptpTitle" runat="server" class="ewa-ptp-title">
		<asp:Panel ID="m_title_inner" runat="server" class="ewa-ptp-title-inner">
			<%= TaskPaneTitleEncoded %>
		</asp:Panel>
	</asp:Panel>
	<asp:Panel ID="m_expandoInner" runat="server" class="ewa-ptp-expando"> 
		<asp:PlaceHolder ID="m_arrowImagePlaceHolder" runat="server" />
	</asp:Panel>
		<asp:Panel ID="m_body" runat="server">
			<div ID="ptpDescription" runat="server" class="ewa-ptp-description">
				<%= DescriptionEncoded %>
			</div>
			<asp:Panel ID="m_parametersSection" runat="server" class="ewa-ptp-parameters ewa-scrollbars">

			</asp:Panel>
			<div align="bottom" ID="ptpButtons" runat="server" class="ewa-ptp-buttons ">
				<button ID="m_applyButton" runat="server" type="submit" class="ewa-ptp-button ewa-ptp-applybutton"><%= ApplyButtonTextEncoded %></button>
				<button ID="m_resetButton" runat="server" type="button" class="ewa-ptp-button"><%= ResetButtonTextEncoded %></button>
			</div>
		</asp:Panel>
</asp:Panel>
