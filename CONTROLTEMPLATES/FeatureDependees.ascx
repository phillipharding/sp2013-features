<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.FeatureDependees,Microsoft.SharePoint.ApplicationPages,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"   AutoEventWireup="false" compilationMode="Always" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SPHttpUtility" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.Utilities" %>
<%@ Register TagPrefix="SPResource" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint" %>
<asp:Repeater id="rptrFeatureDependeeList" Runat="server">
	<HeaderTemplate>
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
			<tr>
				<th scope="col" id="ActivateAll" class="ms-vh2" style="padding-bottom: 4px"><asp:Literal runat="server" id="ltrlActivateAll" /></th>
				<th scope="col" class="ms-vh2" style="padding-bottom: 4px"></th>
				<th scope="col" class="ms-vh2" style="padding-bottom: 4px"></th>
			</tr>
	</HeaderTemplate>
	<ItemTemplate>
	   <tr><td class="ms-vb2" style="font-weight: bold;"><h3 class="ms-standardheader"><%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container.DataItem, "Scope", "")) %></h3></td></tr>
	   <tr><td class="ms-vb2"><%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container.DataItem, "FailureReason", "")) %></td></tr>
	</ItemTemplate>
	<SeparatorTemplate>
		<tr>
	</SeparatorTemplate>
	<FooterTemplate>
	</tr>
	<tr><td><BR></td></tr>
	<tr><td class="ms-vb2" style="font-weight: bold;"><a href="<%= this.GoBackToSiteLink %>"><% Response.Write(SPResource.GetString(Strings.FeatureDependeeGoBack));%></a></td></tr>
	</table>
	</FooterTemplate>
</asp:Repeater>
<asp:Label id="lblFeatureAlreadyActivated" runat=server />
