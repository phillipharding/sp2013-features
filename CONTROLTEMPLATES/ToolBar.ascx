<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.ToolBar,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"   AutoEventWireup="false" compilationMode="Always" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<table class="<%=CssClass%>" cellpadding="2" cellspacing="0" border="0" id="<%=ClientID%>" width="100%">
  <tr>
<%-- Buttons on the left --%>
<wssawc:RepeatedControls id="RptControls" runat="server">
	<HeaderHtml/>
	<BeforeControlHtml>
		<td class="ms-toolbar" nowrap="nowrap">
	</BeforeControlHtml>
	<AfterControlHtml>
		</td>
	</AfterControlHtml>
	<SeparatorHtml>
		<td class="ms-separator">|</td>
	</SeparatorHtml>
	<FooterHtml/>
</wssawc:RepeatedControls>
	<td width="99%" class="ms-toolbar" nowrap="nowrap"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='18' alt="" /></td>
<%-- Buttons on the right --%>
<wssawc:RepeatedControls id="RightRptControls" runat="server">
	<HeaderHtml/>
	<BeforeControlHtml>
		<td class="ms-toolbar" nowrap="nowrap">
	</BeforeControlHtml>
	<AfterControlHtml>
		</td>
	</AfterControlHtml>
	<SeparatorHtml>
		<td class="ms-separator">|</td>
	</SeparatorHtml>
	<FooterHtml/>
</wssawc:RepeatedControls>
  </tr>
</table>
