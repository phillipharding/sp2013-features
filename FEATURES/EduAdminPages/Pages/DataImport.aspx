<%@ Page Language="C#" Inherits="Microsoft.Office.Education.WebUI.DataImport,Microsoft.Office.Education.WebUI,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/custom.master"      %>
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
    <SharePoint:EncodedLiteral ID="PageTitle" runat="server" text="<%$Resources:edu,IDS_DataImportPageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content ID="PageTitleInTitleAreaContent" ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
    <SharePoint:EncodedLiteral ID="PageTitle2" runat="server" text="<%$Resources:edu,IDS_DataImportPageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderMain" runat="server">
    <div class="EduAdmin_DataImportContainer">
        <div class="EduAdmin_Bold"><SharePoint:EncodedLiteral ID="InstructionsTitle" runat="server" text="<%$Resources:edu,IDS_SelectCSVFileInstructionsTitle%>" EncodeMethod="HtmlEncode"/></div>
        <div><SharePoint:EncodedLiteral ID="InstructionsText1" runat="server" text="<%$Resources:edu,IDS_SelectCSVFileInstructionsText1%>" EncodeMethod="HtmlEncode"/></div>
		<div><SharePoint:EncodedLiteral ID="RegionalSettingWarning" runat="server" text="<%$Resources:edu,IDS_RegionalSettingWarning%>" EncodeMethod="HtmlEncode"/></div>
		<div class="EduAdmin_DataImportUploadControlContainer"><asp:FileUpLoad id="dataImportFileUploadControlId" runat="server" /></div>
        <div class="EduAdmin_DataImportButtonContainer">
            <asp:Button id="dataImportFileUploadButtonId" runat="server" ClientIDMode="Static" class="ms-ButtonHeightWidth" text="<%$Resources:edu,IDS_ImportButtonText%>" onclick="FileUploadBtn_Click"></asp:Button><br/>
            <asp:Label ID="errorMessage" runat="server" Text="" Visible="False" CssClass="ms-error"></asp:Label>
        </div>
    </div>
    <div id="UserFeedback" class="EduAdmin_LandingPageMessageContainer">
        <asp:Label id="messageId" runat="server" CssClass="ms-error"/>
    </div>
    <div id="EduAdminResultsAndReports">
        <a href="<%#ResultsAndReportsLink%>"><SharePoint:EncodedLiteral ID="EduAdminResultsAndReportsLink" runat="server" text="<%$Resources:edu,IDS_ResultsAndReportsLink%>" EncodeMethod="HtmlEncode"/></a>
    </div>
</asp:Content>
