<%@ Page Language="C#" Inherits="Microsoft.Office.Education.WebUI.StateChange,Microsoft.Office.Education.WebUI,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/custom.master"      %>
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
	<SharePoint:EncodedLiteral ID="EncodedLiteral1" runat="server" text="<%$Resources:edu,IDS_StateChangePageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content ID="PageTitleInTitleAreaContent" ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<SharePoint:EncodedLiteral ID="EncodedLiteral2" runat="server" text="<%$Resources:edu,IDS_StateChangePageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderMain" runat="server">
    <div id="EduCommunityNewStatus" class="edu-adminStateBckPnl">
        <asp:DropDownList ID="m_adminSiteNewStatus" CssClass="edu-AdminStateDropDown" runat="server">
            <asp:ListItem Value="1" Selected="True"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="m_eduAdminStateSubmit" class="edu-AdminStateBtn" runat="server" OnClick="AdminStateChangeOnSubmit"/>
        <div id="EduAdminStateConf" class="edu-AdminStateConf"<%#ConfVisilbility%>><%#ConfMessage%></div>
        <div id="EduAdminStateBtns" class="edu-AdminStateFooter">
            <asp:Button ID="m_eduAdminStateComplete" class="edu-AdminStateBtn" runat="server" OnClick="StateChangeOnComplete"/>
        </div>
    </div>
    <asp:TextBox ID="m_adminClassesList" runat="server"/>
</asp:Content>
