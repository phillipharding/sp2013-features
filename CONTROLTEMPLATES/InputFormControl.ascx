<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.InputFormControl,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
					<tr id="<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>_tablerow1">
						<td class="ms-authoringcontrols" colspan="2">
							<asp:PlaceHolder id="PlaceHolderLabelText" runat="server">
								<asp:Label id="LiteralLabelText" runat="server"/>
							</asp:PlaceHolder>
						</td>
					</tr>
					<tr id="<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>_tablerow2">
						<td><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='3' style="display: block" alt="" /></td>
					</tr>
					<!-- End Right_Text -->
					<tr id="<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>_tablerow3">
						<td width="<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(IndentSize) %>px" ><img src="/_layouts/15/images/blank.gif?rev=23" width='<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(IndentSize) %>' height='1' style="display: block" alt="" /></td>
						<td class="ms-authoringcontrols" width="99%"><asp:placeholder id="PlaceHolderControl" runat="server" /></td>
					</tr>
					<asp:PlaceHolder id="PanelExample" runat="server">
					<tr id="<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>_tablerow4">
						<td><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' style="display: block" alt="" /></td>
						<td class="ms-authoringcontrols">
							<asp:placeholder id="PlaceHolderExampleText" runat="server">
								<asp:literal id="LiteralExampleText" runat="server"/>
							</asp:placeholder>
						</td>
					</tr>
					</asp:PlaceHolder>
					<tr id="<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>_tablerow5">
						<td><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='6' style="display: block" alt="" /></td>
					</tr>
