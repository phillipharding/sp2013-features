﻿<%@ Control className="MyLinksUserControl" Language="C#" Inherits="Microsoft.SharePoint.Portal.WebControls.MyLinksUserControl&#44;Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="MSSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<table><tr>
<td class="ms-globallinks"><SPSWC:MyLinksMenuControl id="MyLinksMenu" runat="server" /></td>
<td class="ms-globallinks"><asp:Literal id="hlMySiteSpacer" runat="server" /></td>
</tr></table>
