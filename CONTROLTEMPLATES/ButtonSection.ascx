<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.ButtonSection,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
		<% if (ShowSectionLine){ %>
		<tr>
			<td height="<%= Microsoft.SharePoint.Utilities.SPHttpUtility.HtmlEncode(SectionLineHeight) %>" class="ms-sectionline" colspan="2"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td>
		</tr>
		<% } %>
		<% if (TopSpacing > 0) { %>
		<tr>
			<td height="<%=SPHttpUtility.NoEncode(TopSpacing.ToString(System.Globalization.CultureInfo.InvariantCulture))%>" class="ms-descriptiontext" colspan="2"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='10' alt="" /></td>
		</tr>
		<% } %>
		<tr>
			<td colspan="2">
				<table cellpadding="0" cellspacing="0" width="100%">
					<colgroup>
						<col width="99%" />
						<col width="1%" />
					</colgroup>
					<tr>
						<td>
							&#160;</td>
						<td nowrap="nowrap">
							<img id="ImageProgress" class="ms-verticalAlignMiddle"
								 src="/_layouts/15/images/loadingcirclests16.gif?rev=23"
								 style="display:none"
								 onclick="javascript:this.style.display='none';"
								 runat="server"/>
							<wssawc:RepeatedControls id="RptControls" runat="server">
								<SeparatorHtml>
									<span id="idSpace" class="ms-SpaceBetButtons" />
								</SeparatorHtml>
							</wssawc:RepeatedControls>
							<asp:PlaceHolder id="PlaceHolderButtonCancel" runat="server">
									<input class="ms-ButtonHeightWidth" type="button" name="BtnCancel" id="BtnCancel"
										value="<%$Resources:wss,multipages_cancelbutton_text%>"
										accesskey="<%$SPHtmlEncodedResources:wss,cancelbutton_accesskey%>"
										runat="server" />
							</asp:PlaceHolder>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<% if (BottomSpacing > 0) { %>
		<tr>
			<td height="<%=SPHttpUtility.NoEncode(BottomSpacing.ToString(System.Globalization.CultureInfo.InvariantCulture))%>" class="ms-descriptiontext s4-notdlg" colspan="2"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='<%=SPHttpUtility.NoEncode(BottomSpacing.ToString(System.Globalization.CultureInfo.InvariantCulture))%>' alt="" /></td>
		</tr>
		<% } %>
<SharePoint:ScriptBlock runat="server">
	function SubmitButtonOnClick(submitButtonId)
	{
		if (!Boolean(submitButtonId))
			return;
		var isValid = true;
		if (typeof (Page_ClientValidate) == 'function')
		{
			Page_ClientValidate();
			isValid = Page_IsValid;
		}
		if (isValid)
		{
			var btn = document.getElementById(submitButtonId);
			if (Boolean(btn))
				btn.disabled = true;
			setTimeout(function(){
				var imgProg = document.getElementById("<%= ImageProgress.ClientID %>");
				if (Boolean(imgProg))
				{
					imgProg.style.display='';
				}}, 1000);
		}
	}
</SharePoint:ScriptBlock>
