<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.LinkSection,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<tr class="ms-linksection-level2">
  <td valign="top">
	<asp:PlaceHolder id="PlaceHolderImage" runat="server"/>
  </td>
  <td valign="top">
	<h3>
	  <asp:PlaceHolder id="PlaceHolderTitle" runat="server">
		<asp:Literal id="LiteralTitle" runat="server" />
	  </asp:PlaceHolder>
	</h3>
	<wssawc:RepeatedControls id="RptControls" runat="server" RenderIfEmpty = "false">
	  <HeaderHtml>
		<ul>
	  </HeaderHtml>
	  <BeforeControlHtml>
		<li>
	  </BeforeControlHtml>
	  <AfterControlHtml>
	  </AfterControlHtml>
	  <SeparatorHtml>
		<span>|</span></li>
	  </SeparatorHtml>
	  <FooterHtml>
		</li></ul>
	  </FooterHtml>
	</wssawc:RepeatedControls>
	<asp:PlaceHolder id="PlaceHolderOtherControls" runat="server"/>
  </td>
</tr>
