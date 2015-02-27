<%@ Page language="C#" MasterPageFile="~masterurl/default.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"  %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 

<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
  <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,multipages_homelink_text%>" EncodeMethod="HtmlEncode"/> - <SharePoint:ProjectProperty Property="Title" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
         <label class="ms-hidden"><SharePoint:ProjectProperty Property="Title" runat="server"/></label>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderTitleAreaClass" runat="server">
<SharePoint:UIVersionedContent runat="server" UIVersion="<=3">
    <ContentTemplate>
        <style type="text/css">
        td.ms-titleareaframe, .ms-pagetitleareaframe {
            height: 10px; 
        }

        div.ms-titleareaframe {
            height: 100%;
        }

        .ms-pagetitleareaframe table {
            background: none;
            height: 10px;
        }
        </style>
    </ContentTemplate>
</SharePoint:UIVersionedContent>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
  <meta name="CollaborationServer" content="SharePoint Team Web Site" />
  <SharePoint:CssRegistration name="ppsDashboard.css" runat="server" />
  <input id="siteCol" type="hidden" value="<% $SPUrl:~SiteCollection/%>" runat="server"/>
  <input id="site" type="hidden" value="<% $SPUrl:~Site/%>" runat="server"/>
  <style type="text/css">

    .s4-nothome {
    display:none;
    }
  </style>
  <script type="text/javascript">
function ULSrFH(){var o=new Object;o.ULSTeamName="PerformancePoint Monitoring Service";o.ULSFileName="ppssample.aspx";return o;}
    // <![CDATA[
    var navBarHelpOverrideKey = "WSSEndUser";
    function OpenDD()
    {ULSrFH:;
      var designerRedirect = "/_layouts/15/ppswebparts/designerredirect.aspx";
      var siteCollection = _spPageContextInfo.siteServerRelativeUrl;
      var siteLocation = _spPageContextInfo.webServerRelativeUrl;
      var siteCollectionUrl = window.location.protocol + "//" + window.location.host + siteCollection;
      var siteLocationUrl = siteLocation.replace(siteCollection,"");

      if(siteLocation === "/")
      {
        siteLocation = "";
      }

      designerRedirect = siteLocation + designerRedirect + "?SiteCollection=" + encodeURIComponent(siteCollectionUrl) + "&SiteLocation=" + encodeURIComponent(siteLocationUrl);
      location.href = designerRedirect;
    }
    // ]]>
  </script>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderLeftActions" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server"/>

<asp:Content ContentPlaceHolderId="PlaceHolderBodyAreaClass" runat="server">
  <style type="text/css">
    .ms-bodyareaframe {
    padding: 0px;
    }
  </style>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
  <table cellspacing="0" border="0" width="100%">
    <tr>
      <td>
        <table width="100%" cellpadding="0" cellspacing="0" style="padding: 5px 10px 10px 10px;">
          <tr>

            <td valign="top" width="100%">
              <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="Main" Title="loc:Main" />
              &#160;
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</asp:Content>
