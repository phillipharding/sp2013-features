<%@ Control Language="C#"    compilationMode="Always" %>
<%@Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<SharePoint:RenderingTemplate id="AccessRequestsPermissionLevelFieldControl" runat="server">
  <Template>
	<asp:DropDownList id="permissionLevelDropDown" runat="server"/>
  </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="AccessRequestsPermissionLevelFieldControlForDisplay" runat="server">
  <Template>
	<asp:Label id="permissionLevelLabel" runat="server"/>
  </Template>
</SharePoint:RenderingTemplate>
