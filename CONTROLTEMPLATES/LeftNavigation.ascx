<%@ Control Language="C#"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<table style="padding-top: 8px" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
	<td valign="top" id="onetidSelectView1" class="ms-viewselect">
	  <div id="divRelatedTasks">
		<SharePoint:RelatedTasks runat="server" id="RelatedTasks"/>
	  </div>
	  &#160;
	</td>
  </tr>
</table>
