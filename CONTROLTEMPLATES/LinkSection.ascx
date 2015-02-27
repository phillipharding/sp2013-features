<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.LinkSection,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
	<tr>
		<td nowrap="nowrap" class="ms-linksectionheader" style="padding: 4px;" width="100%">
			<h3 class="ms-standardheader">
			<asp:PlaceHolder id="PlaceHolderTitle" runat="server">
				<asp:Literal id="LiteralTitle" runat="server" />
			</asp:PlaceHolder>
			</h3>
		</td>
	</tr>
	<tr><td height="1px" class="ms-1pxfont"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr>
	<tr>
		<td width="100%" style="padding: 0px 4px 4px 4px;" colspan="2">
			<table cellpadding="0" cellspacing="0" border="0">
				<asp:PlaceHolder runat="server" id="PlaceHolderDescriptionRow"><tr>
					<td valign="top" class="ms-descriptiontext ms-linksectiondescription" style="padding-top:5px">
						<asp:PlaceHolder  id="PlaceHolderDescription" runat="server">
							<asp:Literal id="LiteralDescription" runat="server"/>
						</asp:PlaceHolder>
					</td>
				</tr> </asp:PlaceHolder>
				<tr>
					<td class='ms-propertysheet' style="padding-left:1px">
						<wssawc:RepeatedControls id="RptControls" runat="server" RenderIfEmpty="false">
							<HeaderHtml>
								<table cellspacing="0" cellpadding="0" width="100%" border="0">
							</HeaderHtml>
							<BeforeControlHtml>
								<tr>
									<td valign="top" nowrap="nowrap" class="ms-descriptiontext ms-linksectionitembullet" width="8px" style="padding-top:5px;">
										<img src="/_layouts/15/images/setrect.gif?rev=23" width="5px" height="5px" alt='' />&#160;
									</td>
									<td valign="top" class="ms-descriptiontext ms-linksectionitemdescription">
							</BeforeControlHtml>
							<AfterControlHtml>
								   </td>
								</tr>
							</AfterControlHtml>
							<SeparatorHtml></SeparatorHtml>
							<FooterHtml>
								</table>
							</FooterHtml>
						</wssawc:RepeatedControls>
					</td>
				</tr>
				<tr>
					<td class='ms-propertysheet' style="padding-left:1px">
						<asp:PlaceHolder id="PlaceHolderOtherControls" runat="server"/>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="15px"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='15' alt="" /></td>
	</tr>
