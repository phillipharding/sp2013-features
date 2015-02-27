<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.InputFormSection,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<% if (TopBorder) { %>
		<tr id="<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>_tablerow1" >
			<td class="ms-sectionline" height="1" colspan="2"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td>
		</tr>
<% } %>
<% if (!Collapsible) { %>
		<tr id="<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>" >
			<td class="ms-formdescriptioncolumn-wide" valign="top">
				<table border="0" cellpadding="1" cellspacing="0" width="100%" summary="">
					<tr>
						<td class="ms-sectionheader" style="padding-top: 4px;" height="22" valign="top">
						  <h3 class="ms-standardheader ms-inputformheader">
<% } else { %>
		<tr id="<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>_tablerow2" >
			<td class="ms-sectionheader ms-formdescriptioncolumn-wide" height="22" valign="top">
			  <h3 class="ms-standardheader ms-inputformheader">
				<a href="javascript:return;" onclick='javascript:ShowHideSection("<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>", "<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ImgHideShow.ClientID) %>" );return false;'>
					<asp:Image id="ImgHideShow" src="/_layouts/15/images/minus.gif?rev=23" border="0" alt="<%$Resources:wss,inputformsection_hideshow%>" runat="server"/>&#160;
<% } %>
							<asp:PlaceHolder id="PlaceHolderTitle" runat="server">
								<asp:literal id="LiteralTitle" runat="server"/>
							</asp:PlaceHolder>
<% if (!Collapsible) { %>
						   </h3>
						</td>
					</tr>
<% } else { %>
				  </a>
				</h3>
			</td>
			<td class="ms-authoringcontrols">&#160;</td>
		</tr>
		<tr id="<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>" >
			<td class="ms-formdescriptioncolumn-wide" valign="top">
				<table border="0" cellpadding="0" cellspacing="0" width="100%" summary="">
<% } %>
					<tr>
						<td class="ms-descriptiontext ms-inputformdescription">
							<asp:PlaceHolder id="PlaceHolderDescription" runat="server">
								<asp:literal id="LiteralDescription" runat="server"/>
							</asp:PlaceHolder>
						</td>
						<td><img src="/_layouts/15/images/blank.gif?rev=23" width='8' height='1' alt="" /></td>
					</tr>
<% if (Padding) { %>
					<tr>
						<td><img src="/_layouts/15/images/blank.gif?rev=23" width='150' height='19' alt="" /></td>
					</tr>
<% } %>
				</table>
			</td>
			<td class="ms-authoringcontrols ms-inputformcontrols" valign="top"
			align="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,multipages_direction_left_align_value%>' EncodeMethod='HtmlEncode' id='ID_LeftAlign'/>" >
				<table border="0" width="100%" cellspacing="0" cellpadding="0" summary="">
<% if (TopPadding) { %>
					<tr>
<% if (!Collapsible) { %>
						<td width="9px"><img src="/_layouts/15/images/blank.gif?rev=23" width='9' height='7' alt="" /></td>
<% if (Padding) { %>
						<td><img src="/_layouts/15/images/blank.gif?rev=23" width='150' height='7' alt="" /></td>
<% } %>
						<td width="10px"><img src="/_layouts/15/images/blank.gif?rev=23" width='10' height='1' alt="" /></td>
<% } else { %>
						<td width="9px"><img src="/_layouts/15/images/blank.gif?rev=23" width='9' height='1' alt="" /></td>
<% if (Padding) { %>
						<td><img src="/_layouts/15/images/blank.gif?rev=23" width='150' height='1' alt="" /></td>
<% } %>
						<td width="10px"><img src="/_layouts/15/images/blank.gif?rev=23" width='10' height='1' alt="" /></td>
<% } %>
					</tr>
<% } %>
					<tr>
						<td />
						<td class="ms-authoringcontrols">
							<table class="ms-authoringcontrols" border="0" width="100%" cellspacing="0" cellpadding="0" summary="">
								<asp:PlaceHolder id="PlaceHolderControls" runat="server"/>
							</table>
						</td>
						<td width="10px"><img src="/_layouts/15/images/blank.gif?rev=23" width='10' height='1' alt="" /></td>
					</tr>
<% if (Padding) { %>
					<tr>
						<td />
						<td><img src="/_layouts/15/images/blank.gif?rev=23" width='150' height='13' alt="" /></td>
						<td />
					</tr>
<% } %>
				</table>
			</td>
		</tr>
<% if (Collapsible && Collapsed) { %>
		<SharePoint:ScriptBlock runat="server">
			ShowHideSection("<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>", "<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ImgHideShow.ClientID) %>")
		</SharePoint:ScriptBlock>
<% } %>
