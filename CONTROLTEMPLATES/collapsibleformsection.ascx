<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Search.WebControls.CollapsibleFormSection,Microsoft.Office.Server.Search,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"%>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %>    
        <tr id="<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>_tablerow2" style="<%= Style %>">
            <td class="ms-sectionheader" style="padding-top: 4px;" height="22" valign="top">
              <H3 class="ms-standardheader">
                <A HREF="javascript:return;" onclick='javascript:ShowHideSection("<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>", "<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ImgHideShow.ClientID) %>" );SectionClicked("<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>");return false;'>
                    <asp:Image id="ImgHideShow" src="/_layouts/images/minus.gif" border="0" alt="<%$Resources:Microsoft.Office.Server.Search, CollapsibleFormSection_HideShow%>" runat="server"/>&nbsp;
                            <asp:PlaceHolder id="PlaceHolderTitle" runat="server">
                                <asp:literal id="LiteralTitle" runat="server"/>
                            </asp:PlaceHolder>
                           </H3>
                </A>
            </td>
        </tr>
        <tr id="<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>" style="<%= Style %>">           
            <td style="padding-left:15px" valign="top"
                align="<SharePoint:EncodedLiteral runat='server' text=LOC_ATTR(multipages_direction_left_align_value) EncodeMethod='HtmlEncode' id='ID_LeftAlign'/>" >
                <table cellspacing="0" cellpadding="0" width="100%" style="<%= Style %>">
                    <col width="50%" />
                    <asp:PlaceHolder id="PlaceHolderControls" runat="server"/>
                </table>
            </td>
        </tr>
        <tr style="<%= Style %>">
            <td class="ms-sectionline" height="1" colspan="1"><IMG SRC="/_layouts/images/blank.gif" width=1 height=1 alt=""></td>
        </tr>
        <tr style="<%= Style %>">
            <td>&nbsp;</td>
        </tr>  
<% if (Collapsed) { %>
        <script language="javascript">
            ShowHideSection("<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ClientID) %>", "<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(ImgHideShow.ClientID) %>")
        </script>
<% } %>
