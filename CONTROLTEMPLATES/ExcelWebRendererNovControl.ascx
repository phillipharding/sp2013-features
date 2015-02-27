<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>

<%@ Register Tagprefix="ewa" Namespace="Microsoft.Office.Excel.WebUI" Assembly="Microsoft.Office.Excel.WebUI.Internal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Control Language="C#" CompilationMode="Never" Inherits="Microsoft.Office.Excel.WebUI.ExcelWebRendererNovControl"%>

<asp:Panel id="m_novBody" class="ewa-nov2-foreground" align="center" runat="server">
	<div class="ewa-nov2-header" runat="server" ID="m_novHeader"></div>
	<div id="novViewport" class="ewa-nov2-viewport" runat="server">
		<div id="novActionToolbarContainer" class="ewa-nov2-action-toolbar-container" runat="server"></div>
		<div id="novContentPanes" class="ewa-nov2-content-panes" runat="server">
			<div id="novActionPane" class="ewa-nov2-slicers" runat="server">
				<div class="ewa-nov2-zone-header">
				</div>
				<div id="novSlicerPaneBody" class="ewa-nov2-zone-body ewa-scrollbars" runat="server">
				</div>
			</div>
			<div id="novFocusPane" class="ewa-nov2-focus" runat="server">
				<div class="ewa-nov2-zone-header">
					<div runat="server" id="m_novFocusTitle" class="ewa-nov2-zone-label ewa-nov2-focus-label ewa-hidden"></div>
				</div>
				<div class="ewa-nov2-zone-body ewa-scrollbars">
					<div id="ewaContainer" class="ewaContainer ewa-nov2-ewaContainer" runat="server">
						<asp:PlaceHolder runat="server" ID="m_excelWebRenderer" />
					</div>
				</div>
			</div>			
		</div>		
	</div>
</asp:Panel>
