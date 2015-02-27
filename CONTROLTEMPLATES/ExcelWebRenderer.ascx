<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>

<%@ Register Tagprefix="ewa" Namespace="Microsoft.Office.Excel.WebUI" Assembly="Microsoft.Office.Excel.WebUI.Internal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Control Language="C#" CompilationMode="Never" EnableViewState="false" Inherits="Microsoft.Office.Excel.WebUI.ExcelWebRendererControl"%>

<asp:Panel runat="server" ID="m_webPartRoot" Visible="false" CssClass="ewa-webpartroot">

	<asp:image id="m_webPartContentFillerImage" runat="server" CssClass="ewa-webpartroot-contentfiller" role="presentation" />
</asp:Panel>
<iframe src="/_layouts/15/EwrEmptyWebpart.htm" runat="server" ID="m_webPartIframe" frameborder="false" Visible="false" Style="border:0; width: 100%; height: 100%"/>
<asp:Literal id="m_iframeScript" runat="server" Visible="false"/>

<asp:Panel runat="server" ID="m_ewa" role="application">
	<div runat="server" ID="msospAFrameContainer" class="msospAFrameContainer">

		<input style="display:none" runat="server" ID="m_workbookContextJson" type="text" />
		<div runat="server" ID="headerDiv">
			<div runat="server" ID="infoBarDiv">
				<asp:PlaceHolder runat="server" ID="m_infoBarDivContainer" />
			</div>
			<div ID="ribbonContainer" runat="server">
				<div runat="server" ID="ribbonPlaceHolder" class="ewa-ribbon"></div>
			</div>
			<div ID="readModeToolBarContainer" runat="server">
				<div ID="readModeToolbarPlaceHolder" runat="server" class="ewa-readmodetoolbar"></div>
				<span class="rmt-nov-cntr" ID="m_novDropDown" runat="server"></span>
			</div>
			<asp:PlaceHolder id="m_adplaceholder" runat="server"/>
			<div ID="businessBar" runat="server" class="ewa-bb" style="display:none" aria-live="assertive"></div>
			<ewa:EwaFormulaBar runat="server" ID="m_formulaBar" />
		</div>
		<div ID="clientAreaDiv" runat="server">
			<asp:PlaceHolder id="m_tpplaceholder" runat="server"/>
			<div runat="server" ID="contentAreaDiv" class="ewa-contentarea" role="main">

				<textarea runat="server" ID="gridKeyboardInput" class="ewa-gridKeyHandler" spellcheck="false" autocomplete="false" wrap="virtual"></textarea>

				<div runat="server" ID="gridReadingDiv" class="ewa-gridReader" role="gridcell" aria-live="polite" />
				<div runat="server" ID="gridDiv" class="ewa-grid-ltr">

					<asp:Table runat="server" ID="scrollTable" CellPadding="0" CellSpacing="0" role="presentation">
						<asp:TableRow>
							<asp:TableCell VerticalAlign="top">
								<ewa:EwaBaseWebControl runat="server" ID="headersCornerDiv" CssClass="ewr-hdrcornercontainer ewrol-cmax0 ewrol-rmax0" role="presentation">
									<div class="ewr-grdblk">
										<a class="ewrol-btn ewrol-cl0" href="#" onclick="_Ewa.Gim.scol(event,1,-1)">1</a>
										<a class="ewrol-btn ewrol-cl1" href="#" onclick="_Ewa.Gim.scol(event,2,-1)">2</a>
										<a class="ewrol-btn ewrol-cl2" href="#" onclick="_Ewa.Gim.scol(event,3,-1)">3</a>
										<a class="ewrol-btn ewrol-cl3" href="#" onclick="_Ewa.Gim.scol(event,4,-1)">4</a>
										<a class="ewrol-btn ewrol-cl4" href="#" onclick="_Ewa.Gim.scol(event,5,-1)">5</a>
										<a class="ewrol-btn ewrol-cl5" href="#" onclick="_Ewa.Gim.scol(event,6,-1)">6</a>
										<a class="ewrol-btn ewrol-cl6" href="#" onclick="_Ewa.Gim.scol(event,7,-1)">7</a>
										<a class="ewrol-btn ewrol-cl7" href="#" onclick="_Ewa.Gim.scol(event,8,-1)">8</a>
										<a class="ewrol-btn ewrol-rl0" href="#" onclick="_Ewa.Gim.srol(event,1,-1)">1</a>
										<a class="ewrol-btn ewrol-rl1" href="#" onclick="_Ewa.Gim.srol(event,2,-1)">2</a>
										<a class="ewrol-btn ewrol-rl2" href="#" onclick="_Ewa.Gim.srol(event,3,-1)">3</a>
										<a class="ewrol-btn ewrol-rl3" href="#" onclick="_Ewa.Gim.srol(event,4,-1)">4</a>
										<a class="ewrol-btn ewrol-rl4" href="#" onclick="_Ewa.Gim.srol(event,5,-1)">5</a>
										<a class="ewrol-btn ewrol-rl5" href="#" onclick="_Ewa.Gim.srol(event,6,-1)">6</a>
										<a class="ewrol-btn ewrol-rl6" href="#" onclick="_Ewa.Gim.srol(event,7,-1)">7</a>
										<a class="ewrol-btn ewrol-rl7" href="#" onclick="_Ewa.Gim.srol(event,8,-1)">8</a>
									</div>
								</ewa:EwaBaseWebControl>
							</asp:TableCell>
							<asp:TableCell VerticalAlign="top">
								<ewa:EwaBaseWebControl runat="server" ID="columnHeadersDiv" CssClass="ewr-colhdrcontainer" role="presentation" />
							</asp:TableCell>
						</asp:TableRow>
						<asp:TableRow>
							<asp:TableCell VerticalAlign="top">
								<ewa:EwaBaseWebControl runat="server" ID="rowHeadersDiv" CssClass="ewr-rowhdrcontainer" role="presentation" />
							</asp:TableCell>
							<asp:TableCell VerticalAlign="top">
								<ewa:EwaBaseWebControl runat="server" ID="sheetContentDiv" CssClass="ewr-sheetcontainer" role="presentation" />
							</asp:TableCell>
						</asp:TableRow>
					</asp:Table>

					<ewa:EwaBaseWebControl runat="server" ID="chartContentDiv" role="presentation">&nbsp;</ewa:EwaBaseWebControl>
					<ewa:EwaBaseWebControl runat="server" ID="webExtensionContentDiv" role="presentation">&nbsp;</ewa:EwaBaseWebControl>
					<ewa:EwaBaseWebControl runat="server" ID="interactiveReportContentDiv" role="presentation" />

					<ewa:EwaBaseWebControl runat="server" ID="emptyContentDiv" CssClass="ewr-emptycontarea" role="presentation">&nbsp;</ewa:EwaBaseWebControl>
				</div>
				<div ID="m_sheetTabBar" style="display: none; visibility: false;" runat="server" role="presentation"></div> 
				<asp:PlaceHolder runat="server" ID="m_scriptSharpBootstrapHolder" />
			</div>
			<div ID="statusBarContainer" runat="server" role="presentation"></div>
		</div>
	</div>
</asp:Panel>
<input style="display:none" id="__spPickerHasReturnValue" type="text" value="0" />
<input style="display:none" id="__spPickerReturnValueHolder" type="text" value="0" />
