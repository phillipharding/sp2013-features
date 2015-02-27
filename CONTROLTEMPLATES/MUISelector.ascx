<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.MUISelector,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<SharePoint:ScriptBlock runat="server">
// <![CDATA[
function OnSelectionChange(value)
{
	document.cookie = "lcid=" + value + ";path=/";
	window.location.reload(false);
}
// ]]>
</SharePoint:ScriptBlock>
<select id="DdLanguages" onchange="javascript:OnSelectionChange(this.value);" runat="server">
</select>
