<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.BdcFinderConfigurator,Microsoft.SharePoint.ApplicationPages,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"   AutoEventWireup="false" compilationMode="Always" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SPHttpUtility" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.Utilities" %>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
	<td colspan="2">
	  <asp:UpdatePanel ID="UpdatePanel"
		  UpdateMode="Conditional"
		  runat="server">
		<ContentTemplate>
		  <asp:DropDownList id="DdlMethodPicker" runat="server"
			  AutoPostBack="true"
			  OnSelectedIndexChanged="MethodPicker_OnSelectionChanged"
			  Width="100%"/>
		  <b>
			<asp:Literal id="LtrlNoFiltersToConfigure" runat="server"
			  Text="<% $Resources:wss,viewedit_nodatasourcefilters %>"
			  Visible="false" />
		  </b>
		  <asp:HiddenField id="HdnMethodName" runat="server" />
		  <asp:HiddenField id="HdnFilterNameControlIDs" runat="server" />
		  <asp:HiddenField id="HdnFilterValControlIDs" runat="server" />
		  <asp:HiddenField id="HdnFilterTypeControlIDs" runat="server" />
		  <asp:Repeater id="RptrFilterList" runat="server">
			<HeaderTemplate>
			  <table border="0" cellpadding="2" cellspacing="0" width="100%">
				<tr>
				  <td class="ms-authoringcontrols" align="left" nowrap="nowrap" width="100px" valign="top">
					<p><b><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,viewedit_filtername%>" EncodeMethod='HtmlEncode'/></b></p>
				  </td>
				  <td class="ms-authoringcontrols" align="left" valign="top" width="100px">
					<p><b><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,viewedit_filtervalue%>" EncodeMethod='HtmlEncode'/></b></p>
				  </td>
				</tr>
			</HeaderTemplate>
			<ItemTemplate>
				<tr>
				  <td class="ms-authoringcontrols" align="left" valign="top">
					<asp:Literal runat="server"
						id="ltrlName"
						Text='<%# SPHttpUtility.HtmlEncode(((BdcFilterInfo)Container.DataItem).DisplayName) %>'
					/>
					<asp:HiddenField runat="server"
						id="hdnFilterName"
						Value='<%# ((BdcFilterInfo)Container.DataItem).Name %>'
					/>
					<asp:HiddenField runat="server"
						id="hdnFilterType"
						Value='<%# ((BdcFilterInfo)Container.DataItem).FilterType %>'
					/>
				  </td>
				  <td class="ms-authoringcontrols" align="left" valign="top">
					<asp:TextBox runat="server"
						id="txtboxValue"
						Columns="35"
						CssClass="ms-input"
						Text='<%# ((BdcFilterInfo)Container.DataItem).Value %>'
					/>
				  </td>
				</tr>
			</ItemTemplate>
			<SeparatorTemplate>
			</SeparatorTemplate>
			<FooterTemplate>
			  </table>
			</FooterTemplate>
		  </asp:Repeater>
		</ContentTemplate>
	  </asp:UpdatePanel>
	</td>
  </tr>
</table>
