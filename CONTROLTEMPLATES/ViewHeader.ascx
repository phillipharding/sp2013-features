<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.ViewHeader,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<table class="ms-toolbar" cellspacing="0" border="0" id="<%=ClientID%>" width="100%" <%=ExtraAttributesToRender%>>
	<tr>
		<asp:TableCell id="Cell1" runat="server" class="ViewHeaderHeading" align="<%$ resources: wss, multipages_direction_left_align_value%>" valign="center" width="50%" nowrap="true">
			<asp:PlaceHolder runat="server" id="LeftPlaceHolder">
				<asp:Literal runat="server" id="HeaderTextLiteral" />
			</asp:PlaceHolder>
		</asp:TableCell>
		<td class="ViewHeaderCenterSection" align="center" valign="center" width="0" nowrap="nowrap">
			<asp:PlaceHolder runat="server" id="CenterPlaceHolder">
			</asp:PlaceHolder>
		</td>
		<asp:TableCell id="Cell2" runat="server" class="ViewHeaderRightSection" align="<%$ resources: wss, multipages_direction_right_align_value%>" valign="center" width="50%" nowrap="true">
			<asp:PlaceHolder runat="server" id="RightPlaceHolder">
			</asp:PlaceHolder>
		</asp:TableCell>
	</tr>
</table>
