<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>

<%@ Register Tagprefix="ewa" Namespace="Microsoft.Office.Excel.WebUI" Assembly="Microsoft.Office.Excel.WebUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Control Language="C#" CompilationMode="Never" Inherits="Microsoft.Office.Excel.WebUI.ExcelWebRendererNewWebPartControl" %>

<table cellpadding="0" cellspacing="0" style="width:100%;border:none 0;">
	<tr>
		<td valign="top" class="ewa-ms-areaseparator ms-areaseparator" style="white-space:nowrap;width:100%">
			<table cellpadding="0" cellspacing="0" style="width:100%;border:none 0;background:none">
				<tr>
					<td valign="top" class="ewa-ms-titlearea ms-titlearea">&nbsp;</td>
				</tr>
				<tr>
					<td class="ewa-ms-pagetitle ms-pagetitle">
						<asp:label RunAt="server" ID="m_messageCaption"/>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td valign="top" style="width:100%">
			<table cellpadding="0" cellspacing="0" class="ewa-ms-propertysheet ms-propertysheet" style="width:100%;border:none 0;">
				<tr>
					<td>
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td valign="middle">
									<table cellpadding="0" cellspacing="0" style="border:none 0;">
										<tr>
											<td style="padding-top:0px;padding-left:20px;padding-right:20px;">
												<asp:image RunAt="server" ID="m_selectWorkbookImage"/>
											</td>
											<td messageid="Ewr_WorkbookNotSpecified">
												<asp:label RunAt="server" ID="m_messageDescription" CssClass="ewr-dialog-font">
													<br/><br/>
												</asp:label>
												<span class="ewr-dialog-font">
													<asp:linkbutton RunAt="server" ID="m_messageDirective" CssClass="hyperlink" />
													<br/><br/>
												</span>
												<span class="ewr-dialog-font">
													<asp:HyperLink RunAt="server" ID="m_messageHelp" CssClass="hyperlink" href="#" />
													<br/><br/>
												</span>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
