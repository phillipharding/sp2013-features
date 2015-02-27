<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.LinksTable,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<wssawc:RepeatedControls id="RptControls" runat="server" RenderIfEmpty = "false">
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
