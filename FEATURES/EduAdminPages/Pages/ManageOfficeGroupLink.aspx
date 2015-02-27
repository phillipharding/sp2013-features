<%@ Page Language="C#" Inherits="Microsoft.Office.Education.WebUI.ManageOfficeGroupLink,Microsoft.Office.Education.WebUI,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/custom.master"      %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:ScriptLink language="javascript" name="XUI.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
    <SharePoint:ScriptLink language="javascript" name="SP.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
    <SharePoint:ScriptLink language="javascript" name="SP.Core.js" LoadAfterUI="true" OnDemand="false" Localizable="false" runat="server"/>
    <SharePoint:CssRegistration Name="Themable/EDU.css" runat="server"/>
    <SharePoint:ScriptBlock runat="server">
        function SetControlsState()
        {
            var RadioButtonCustomElt = document.getElementById('<%= radioButtonCustom.ClientID %>');
            var GroupCreationLinksCustomUrlElt = document.getElementById('<%= groupCreationLinksCustomUrl.ClientID %>');
            GroupCreationLinksCustomUrlElt.disabled = !RadioButtonCustomElt.checked;
        }

        function _spBodyOnLoad()
        {
            SetControlsState();
        }

        function ResetSpFormOnSubmitCalled()
        {
            _spFormOnSubmitCalled = false;
            return;
        }

        function ValidateGroupCreationLinksCustomUrlNotEmpty(source, args)
        {
            args.IsValid = true;
            ResetSpFormOnSubmitCalled();

            var RadioButtonCustomElt = document.getElementById('<%= radioButtonCustom.ClientID %>');
            var GroupCreationLinksCustomUrlElt = document.getElementById('<%= groupCreationLinksCustomUrl.ClientID %>');
            if (RadioButtonCustomElt.checked != false)
            {
                var strToValidate = TrimSpaces(GroupCreationLinksCustomUrlElt.value);
                if (strToValidate == "")
                {
                    args.IsValid = false;
                }
            }
        }
    </SharePoint:ScriptBlock>
</asp:Content>

<asp:Content ID="PageTitleContent" ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
    <SharePoint:EncodedLiteral ID="PageTitle" runat="server" text="<%$Resources:edu,IDS_ManageGroupCreationLinksPageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content ID="PageTitleInTitleAreaContent" ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
    <SharePoint:EncodedLiteral ID="PageTitle2" runat="server" text="<%$Resources:edu,IDS_ManageGroupCreationLinksPageTitle%>" EncodeMethod="HtmlEncode"/>
</asp:Content>

<asp:Content contentplaceholderid="PlaceHolderMain" runat="server">
    <div class="EduAdmin_ManageOfficeGroupLinkContainer">
        <div class="EduAdmin_Separator">
            <SharePoint:EncodedLiteral ID="DescriptionText"
                                       runat="server"
                                       text="<%$Resources:edu,IDS_ManageGroupCreationLinksDescriptionText%>"
                                       EncodeMethod="HtmlEncode"/>
        </div>
        <div  class="EduAdmin_SmallIndent">
            <div>
                <asp:RadioButton ID="radioButtonNone"
                                 GroupName="ManageOfficeGroupLinkOptions"
                                 runat="server"
                                 onclick="SetControlsState()"
                                 Text="<%$Resources:edu,IDS_GroupCreationLinksNone%>"/>
            </div>
            <div>
                <asp:RadioButton ID="radioButtonAutodiscover"
                                 GroupName="ManageOfficeGroupLinkOptions"
                                 runat="server"
                                 onclick="SetControlsState()"
                                 Text="<%$Resources:edu,IDS_GroupCreationLinksAutodiscover%>"/>
            </div>
            <div>
                <asp:RadioButton ID="radioButtonCustom"
                                 GroupName="ManageOfficeGroupLinkOptions"
                                 runat="server"
                                 onclick="SetControlsState()"
                                 Text="<%$Resources:edu,IDS_GroupCreationLinksCustom%>"/>
                <asp:TextBox 
                            class="ms-input" 
                            ID="groupCreationLinksCustomUrl" 
                            Columns="60" 
                            Runat="server" 
                            MaxLength=512 />
            </div>
            <div class="EduAdmin_SmallIndent ms-error">
                    <asp:CustomValidator ID="valOfGroupCreationLinksCustomUrl"
                                         ClientValidationFunction="ValidateGroupCreationLinksCustomUrlNotEmpty"
                                         Text="<%$Resources:edu,IDS_GroupCreationLinksCustom_Error%>"
                                         Display="Dynamic"
                                         EnableClientScript="True"
                                         Runat="server" />
            </div>
        </div>
        <div class="EduAdmin_FormRight ms-core-form-bottomButtonBox" >
            <asp:Button runat="server" OnClick="OkButtonClick" Text="<%$Resources:edu,IDS_GroupCreationLinksSave%>" id="OkButton"/>
            <asp:Button UseSubmitBehavior="false" runat="server" OnClick="CancelButtonClick" Text="<%$Resources:edu,IDS_GroupCreationLinksCancel%>" id="CancelButton" CausesValidation="False"/>
        </div>
    </div>
</asp:Content>
