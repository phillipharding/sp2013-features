<%@ Page Language="C#" Inherits="Microsoft.Office.Education.WebUI.EduAdmin,Microsoft.Office.Education.WebUI,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/custom.master"      %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ID="PageHead" ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
  <SharePoint:CssRegistration Name="Themable/EDU.css" runat="server"/>
  <SharePoint:ScriptLink language="javascript" name="XUI.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
  <SharePoint:ScriptLink language="javascript" name="SP.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
  <SharePoint:ScriptLink language="javascript" name="SP.Core.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
  <SharePoint:ScriptLink language="javascript" name="SP.DateTimeUtil.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
</asp:Content>

<asp:Content ID="PageTitleContent" ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
    <SharePoint:EncodedLiteral ID="PageTitle" runat="server" text="<%$Resources:edu,IDS_AdminLandingPageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <table class="EduAdmin_LandingPageTableContainer">
        <tbody>
            <tr>
                <td class="ms-ta-pageheader"> <SharePoint:EncodedLiteral ID="PageTitle2" runat="server" text="<%$Resources:edu,IDS_AdminLandingPageTitle%>" EncodeMethod="HtmlEncode"/></td>
            </tr>
            <tr>
                <td>
                    <div class="ms-ta-linksection">
                        <a href="<%#CoursesAndGroupsCreationLink%>"><SharePoint:EncodedLiteral ID="EduAdminCoursesAndGroupsLink" runat="server" text="<%$Resources:edu,IDS_ManageCommunityLink%>" EncodeMethod="HtmlEncode"/></a>
                    </div>
                    <div class="ms-ta-linkdescription">
                        <SharePoint:EncodedLiteral ID="EduAdminCoursesAndGroupsDescription" runat="server" text="<%$Resources:edu,IDS_ManageCoursesLinkDescription%>" EncodeMethod="HtmlEncode"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ms-ta-linksection">
                        <a href="<%#DataImportLink%>"><SharePoint:EncodedLiteral ID="EduAdminStudentsAndCourseDataLbl" runat="server" text="<%$Resources:edu,IDS_ImportDataLink%>" EncodeMethod="HtmlEncode"/></a>
                    </div>
                    <div class="ms-ta-linkdescription">
                        <SharePoint:EncodedLiteral ID="EduAdminImportDataLink" runat="server" text="<%$Resources:edu,IDS_ImportDataLinkDescription%>" EncodeMethod="HtmlEncode"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ms-ta-linksection">
                        <a href="<%#ResultsAndReportsLink%>"><SharePoint:EncodedLiteral ID="EduAdminResultsAndReportsLink" runat="server" text="<%$Resources:edu,IDS_ResultsAndReportsLinkTitle%>" EncodeMethod="HtmlEncode"/></a>
                    </div>
                    <div class="ms-ta-linkdescription">
                        <SharePoint:EncodedLiteral ID="EduAdminResultsAndReportsDescription" runat="server" text="<%$Resources:edu,IDS_ResultsAndReportsLinkDescription%>" EncodeMethod="HtmlEncode"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ms-ta-linksection">
                        <a href="<%#ManageGroupCreationLink%>"><SharePoint:EncodedLiteral ID="EduAdminOfficeGroupCreationLbl" runat="server" text="<%$Resources:edu,IDS_OfficeGroupCreation%>" EncodeMethod="HtmlEncode"/></a>
                    </div>
                    <div class="ms-ta-linkdescription">
                        <SharePoint:EncodedLiteral ID="EduAdminManageGroupCreationDescription" runat="server" text="<%$Resources:edu,IDS_GroupCreationLinkDescription%>" EncodeMethod="HtmlEncode"/>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
