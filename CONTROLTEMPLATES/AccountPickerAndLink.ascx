<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.AccountPickerAndLink,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint.Utilities" %>
  <script type="text/javascript">
  // <![CDATA[
	function EnableAccountPicker_<%= this.ClientID %>(fEnabled, bSilent)
	{
		<% if (0 == AccountPicker.Items.Count) { %>
			(document.getElementById("<%= AccountPicker.ClientID %>")).disabled = true;
		<% } else { %>
			(document.getElementById("<%= AccountPicker.ClientID %>")).disabled = !fEnabled;
		<% } %>
		STSValidatorEnable("<%= ValManagedAccountSelection.ClientID %>", fEnabled, bSilent);
	}
  // ]]>
  </script>
	<SharePoint:ManagedAccountPicker runat="server" id="AccountPicker" />
	<wssawc:InputFormCustomValidator
		ID="ValManagedAccountSelection"
		ErrorMessage="<%$Resources:wss,multipages_accountpicker_baduser%>"
		EnableClientScript="false"
		OnServerValidate="ValidateManagedAccountSelection"
		runat="server" />
	<br/><a href="/_admin/RegisterAccount.aspx" onclick="GoToPage('/_admin/RegisterAccount.aspx');return false;"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,multipages_registeraccount_linkdesc%>" EncodeMethod='HtmlEncode'/></a>
	<br/><asp:Label ID="LabelEmptyPicker" style="color:red" Text="<%$Resources:wss,multipages_accountpicker_emptypicker%>" runat="server"/>
