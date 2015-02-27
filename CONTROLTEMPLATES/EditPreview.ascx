		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td valign="top" style="direction:ltr;">
				<div>
					<table class="ms-formtoolbar" cellpadding="2" cellspacing="0" border="0" width="100%">
						<tr>
							<td width="99%" class="ms-toolbar" nowrap="nowrap">
							<img src="/_layouts/15/images/blank.gif?rev=23" width="1" height="18" alt=""></td>
							<td class="ms-toolbar" nowrap="true">
							<table cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td align="right" width="100%" nowrap="nowrap">
									<asp:Button runat="server" text="<% $Resources: wss, form_ok %>" cssclass="ms-ButtonHeightWidth"></asp:Button>
									</td>
								</tr>
							</table>
							</td>
							<td class="ms-separator">&#160;</td>
							<td class="ms-toolbar" nowrap="true">
							<table cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td align="right" width="100%" nowrap="nowrap">
									<asp:Button runat="server" text="<% $Resources: wss, form_cancel %>" cssclass="ms-ButtonHeightWidth"></asp:Button>
									</td>
								</tr>
							</table>
							</td>
						</tr>
					</table>
					<table class="ms-toolbar" cellpadding="2" cellspacing="0" border="0" width="100%">
						<tr>
							<td class="ms-toolbar" nowrap="true">
							<table cellpadding="1" cellspacing="0">
								<tr>
									<td class="ms-toolbar" nowrap="nowrap"><em>
									<asp:Literal runat="server" id="listformpvw" Text="<% $Resources: wss, PreviewListForm %>" /></em></td>
								</tr>
							</table>
							</td>
							<td width="99%" class="ms-toolbar" nowrap="nowrap">
							<img src="/_layouts/15/images/blank.gif?rev=23" width="1" height="18" alt=""></td>
							<td class="ms-toolbar" nowrap="true">
							<span id="reqdFldTxt" style="white-space: nowrap;padding-right: 3px;" class="ms-descriptiontext">
							<asp:Literal runat="server" text="<% $Resources: wss, form_required_field %>"></asp:Literal>
							</span></td>
						</tr>
					</table>
					<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0" width="100%">
						<tr>
							<td nowrap="true" valign="top" width="190px" class="ms-formlabel">
							<nobr><asp:Literal runat="server" id="colname1" Text="<% $Resources: wss, PreviewColumnName1 %>" /><span class="ms-formvalidation">
							*</span></nobr> </td>
							<td valign="top" class="ms-formbody" width="400px" id="SPFieldText">
							<span dir="none">
							<asp:TextBox runat="server" cssclass="ms-long" id="textbox1" text="<% $Resources: wss, PreviewColumnValue1 %>">
							</asp:TextBox></span></td>
						</tr>
						<tr>
							<td nowrap="true" valign="top" width="190px" class="ms-formlabel">
							<nobr><asp:Literal runat="server" id="colname2" Text="<% $Resources: wss, PreviewColumnName2 %>" /></nobr> </td>
							<td valign="top" class="ms-formbody" width="400px" id="SPFieldText">
							<span dir="none">
							<asp:TextBox runat="server" cssclass="ms-long" id="textbox2" text="<% $Resources: wss, PreviewColumnValue2 %>">
							</asp:TextBox></span></td>
						</tr>
						<tr>
							<td nowrap="true" valign="top" width="190px" class="ms-formlabel">
							<nobr><asp:Literal runat="server" id="colname3" Text="<% $Resources: wss, PreviewColumnName3 %>" /></nobr> </td>
							<td valign="top" class="ms-formbody" width="400px" id="SPFieldText">
							<span dir="none">
							<asp:TextBox runat="server" cssclass="ms-long" id="textbox3" text="<% $Resources: wss, PreviewColumnValue3 %>">
							</asp:TextBox></span></td>
						</tr>
					</table>
					<table cellpadding="0" cellspacing="0" width="100%">
						<tr>
							<td class="ms-formline">
							<img src="/_layouts/15/images/blank.gif?rev=23" width="1" height="1" alt=""></td>
						</tr>
					</table>
					<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px">
						<tr>
							<td width="100%">
							<table class="ms-formtoolbar" cellpadding="2" cellspacing="0" border="0" width="100%">
								<tr>
									<td width="99%" class="ms-toolbar" nowrap="nowrap">
									<table cellpadding="0" cellspacing="0">
										<tr>
											<td nowrap="nowrap" class="ms-descriptiontext" id="onetidinfoblock1">
											Created at [date] by <nobr><span>
											<a href="/_layouts/15/userdisp.aspx?ID=1">
											User Name</a><img border="0" height="1" width="3" src="/_layouts/15/images/blank.gif?rev=23" alt="" /><img name="imnmark" border="0" height="12" width="12" src="/_layouts/15/images/blank.gif?rev=23" alt="" sip="" id="imn0" /></span></nobr>&#160;
											</td>
										</tr>
										<tr>
											<td nowrap="nowrap" class="ms-descriptiontext" id="onetidinfoblock2">
											Last modified at [date] by <nobr>
											<span>
											<a href="/_layouts/15/userdisp.aspx?ID=1">
											User Name</a><img border="0" height="1" width="3" src="/_layouts/15/images/blank.gif?rev=23" alt="" /><img name="imnmark" border="0" height="12" width="12" src="/_layouts/15/images/blank.gif?rev=23" alt="" sip="" id="imn1" /></span></nobr>&#160;
											</td>
										</tr>
									</table>
									</td>
									<td class="ms-toolbar" nowrap="true">
									<table cellpadding="0" cellspacing="0" width="100%">
										<tr>
											<td align="right" width="100%" nowrap="nowrap">
											<asp:Button runat="server" text="<% $Resources: wss, form_ok %>" cssclass="ms-ButtonHeightWidth"></asp:Button>
											</td>
										</tr>
									</table>
									</td>
									<td class="ms-separator">&#160;</td>
									<td class="ms-toolbar" nowrap="true">
									<table cellpadding="0" cellspacing="0" width="100%">
										<tr>
											<td align="right" width="100%" nowrap="nowrap">
											<asp:Button runat="server" text="<% $Resources: wss, form_cancel %>" cssclass="ms-ButtonHeightWidth"></asp:Button>
											</td>
										</tr>
									</table>
									</td>
								</tr>
							</table>
							</td>
						</tr>
					</table>
				</div>
				</td>
			</tr>
		</table>
