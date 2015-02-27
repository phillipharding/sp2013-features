<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.FoldHyperLink,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Panel id="foldLinkWrapper" runat="server">
	<asp:Panel id="foldLinkPanel" CssClass="ms-foldHyperLink-panel" runat="server">
		<asp:HyperLink
			id="_moreDetailsLink"
			cssclass="ms-commandLink ms-floatLeft"
			runat="server" />
		<div class="ms-clear"></div>
	</asp:Panel>
</asp:Panel>
