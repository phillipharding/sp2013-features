<%@ Control Language="C#" Inherits="Microsoft.Office.SharePoint.ClientExtensions.WebControls.CredentialPageSection,Microsoft.Office.SharePoint.ClientExtensions,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="CredentialFieldSection" src="~/_controltemplates/15/CredentialFieldSection.ascx" %>

    <table border="0" cellspacing="0" cellpadding="0" class="ms-listviewtable">
        <tr>
            <td class="ms-vb2" scope="row" nowrap width="25%" valign="top"><b><SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TargetApplicationName%>" EncodeMethod='HtmlEncode'/>:</b></td>
            <td class="ms-vb2"><SharePoint:EncodedLiteral runat="server" text="" EncodeMethod='HtmlEncode' Id='applicationNameLiteral'/></td>
        </tr>
        <tr>
            <td scope="row" nowrap width="25%" valign="top" class="ms-vb2"><b><SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TargetApplicationID%>" EncodeMethod='HtmlEncode'/>:</b></td>
            <td class="ms-vb2"><SharePoint:EncodedLiteral runat="server" text="" EncodeMethod='HtmlEncode' Id='applicationIDLiteral'/></td>
        </tr>
        <tr>
            <td scope="row" nowrap width="25%" valign="top" class="ms-vb2"><b><SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TargetApplicationGroupLabel%>" EncodeMethod='HtmlEncode' Id='LiteralGroupLabel'/></b></td>
            <td class="ms-vb2"><wssawc:InputFormTextBox title="<%$Resources:obaui, SSSAdmin_TargetApplicationGroupToolTip%>" class="ms-input" ID="TextBoxGroupMembers" Runat="server" readonly="true" TextMode="MultiLine" Rows="3" Columns="55" forecolor="Gray" /><wssawc:PeopleEditor 
                            AllowEmpty="true"
                            ValidatorEnabled="true"
                            id="GroupMembersPicker" 
                            runat="server" 
                            SelectionSet="User,SecGroup" 
                            ForceClaims="true" /></td>
        </tr>
        <tr>
            <td scope="row" nowrap width="25%" valign="top" class="ms-vb2"><b><SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TargetAppUser%>" EncodeMethod='HtmlEncode' Id='userPickerLiteral'/></b></td>
            <td class="ms-vb2"><Template_control><wssawc:PeopleEditor 
                            AllowEmpty="false"
                            ValidatorEnabled="true"
                            id="userPicker" 
                            runat="server" 
                            SelectionSet="User" 
                            MultiSelect="false"
                            width='400px'
                            title="<%$Resources:obaui, SSSAdmin_CredentialFieldUserPickerTitle%>" /></Template_control></td>
        </tr>
        <tr>
            <td colspan="2"><img src="/_layouts/15/images/blank.gif?rev=23" alt=""></td>
        </tr>
        <tr>
            <td colspan="2" width="100%"><Template_control><wssuc:CredentialFieldSection runat="server" Id="CredentialFieldSection" /></Template_control></td>
        </tr>
        <tr class="ms-input">
            <td colspan="2" width="100%"><br /><SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_SetCredentialNote%>" EncodeMethod='HtmlEncode'/></td>
        </tr>
    </table>
