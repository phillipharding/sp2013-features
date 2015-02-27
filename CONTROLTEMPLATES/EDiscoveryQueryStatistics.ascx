<!-- _lcid="1033" _version="15.0.4631" _dal="1" -->
<!-- _LocalBinding -->
<%@ Assembly Name="Microsoft.Office.Policy.Pages, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Control Language="C#"    Inherits="Microsoft.Office.Server.Discovery.WebControls.EDiscoveryQueryStatistics" %>
<%@ Register Tagprefix="Search" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<div>
<div>
  <asp:LinkButton runat="server" id="RefreshLink" Text="Refresh" OnClick="RefreshLink_Click" />
</div>
  <table class="ms-sbtable">
	<tr>
	  <td>Item Count:</td><td><asp:Label runat="server" id="ItemCountLabel" /><asp:HiddenField runat="server" id="ItemCountHiddenField" /></td>
	</tr>
	<tr>
	  <td>Total Size:</td><td><asp:Label runat="server" id="TotalSizeLabel" /><asp:HiddenField runat="server" id="TotalSizeHiddenField" /></td>
	</tr>
	<tr>
	  <td colspan="2">
		Results Preview
		<div runat="server" id="PreviewDiv" style="width:450px; height:100px; overflow:auto;" >
		  <asp:PlaceHolder runat="server" id="PreviewPlaceholder">
			<asp:Label runat="server" id="RefreshToPopulate" Text="Please refresh to populate the preview." />
		  </asp:PlaceHolder>
		</div>
	  </td>
	</tr>
  </table>
</div>
