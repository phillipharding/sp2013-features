<%@ Control Language="C#" Inherits="Microsoft.Office.SharePoint.ClientExtensions.WebControls.TargetAppGeneralSettingsSection,Microsoft.Office.SharePoint.ClientExtensions,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<% if( IsCustomPageForCredDisabledInSSS() == false) { %>
    <script type="text/javascript">
        // <![CDATA[
        _spBodyOnLoadFunctionNames.push("CustomCredentialPageUrl_Enabled");
        function CustomCredentialPageUrl_Enabled() {
            var enabled = (document.getElementById("<%= RadCredentialPageCustom.ClientID %>")).checked;
            (document.getElementById("<%= TextBoxPageUrl.ClientID %>")).disabled = !enabled;
            STSValidatorEnable("<%= cusValUrlValidator.ClientID %>", enabled, true);
        }
        // ]]>
    </script>
<% } %>

    <wssuc:InputFormSection runat="server" 
        Title="<%$Resources:obaui, SSSAdmin_TargetApplicationSettingSectionTitle%>"
        id="idTargetAppId">
        <Template_Description>
               <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TargetApplicationIDDescription%>" EncodeMethod='HtmlEncode'/>
               <br/>
               <br/>
               <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TargetApplicationDisplayNameDescription%>" EncodeMethod='HtmlEncode'/>
               <br/>
               <br/>
               <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TargetApplicationContactEmailDescription%>" EncodeMethod='HtmlEncode'/>
<% if( IsMultiTargetAppTypeDisabledInSSS() == false) { %>
               <br/>
               <br/>
                <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TargetApplicationTypeDescription%>" EncodeMethod='HtmlEncode'/>
<% } %>
<% if( IsCustomPageForCredDisabledInSSS() == false) { %>
               <br/>
               <br/>
                <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TargetApplicationPageUrlDescription%>" EncodeMethod='HtmlEncode'/>
<% } %>
               <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TargetApplicationTicketTimeoutDescription%>" EncodeMethod='HtmlEncode' Id='TicketTimeoutDescription'/>
        </Template_Description>
        <Template_InputFormControls>
            <wssuc:InputFormControl runat="server" 
                LabelText="<%$Resources:obaui, SSSAdmin_TargetApplicationID%>"
				LabelAssociatedControlId="TextBoxSSSAppId">
                <Template_Control>
                    <wssawc:InputFormTextBox title="<%$Resources:obaui, SSSAdmin_TargetAppIdAltText%>" CssClass="ms-input" ID="TextBoxSSSAppId" Columns="35" Runat="server" MaxLength="256" />
                    <wssawc:InputFormRequiredFieldValidator id="SSSAppIdValidator" 
                        ControlToValidate="TextBoxSSSAppId" 
                        ErrorMessage="<%$Resources:obaui, SSSAdmin_RequiredFieldErrorMessage%>"
                        Runat="server"/>
                </Template_Control>
            </wssuc:InputFormControl>

            <wssuc:InputFormControl runat="server" 
                LabelText="<%$Resources:obaui, SSSAdmin_TargetAppDisplayName%>"
				LabelAssociatedControlId="TextBoxDisplayName">
                <Template_control>
                    <wssawc:InputFormTextBox title="<%$Resources:obaui, SSSAdmin_TargetAppDisplayNameAltText%>" CssClass="ms-input" ID="TextBoxDisplayName" Columns="35" Runat="server" MaxLength=256 />
                    <wssawc:InputFormRequiredFieldValidator id="DisplayNameValidator" 
                        ControlToValidate="TextBoxDisplayName" 
                        ErrorMessage="<%$Resources:obaui, SSSAdmin_RequiredFieldErrorMessage%>"
                        Runat="server"/>
                </Template_control>
            </wssuc:InputFormControl>

            <wssuc:InputFormControl runat="server" 
                LabelText="<%$Resources:obaui, SSSAdmin_TargetAppContactEmail%>"
				LabelAssociatedControlId="TextBoxContactEmail">
                <Template_control>
                    <wssawc:InputFormTextBox title="<%$Resources:obaui, SSSAdmin_TargetAppContactEmailAltText%>" CssClass="ms-input" ID="TextBoxContactEmail" Columns="35" Runat="server" MaxLength=128 />
                    <br />
                    <wssawc:InputFormRequiredFieldValidator id="ContactEmailValidator" 
                        ControlToValidate="TextBoxContactEmail" 
                        ErrorMessage="<%$Resources:obaui, SSSAdmin_RequiredFieldErrorMessage%>"
                        Runat="server"/>
                    <asp:CustomValidator 
                        id="CusValContactEmail" 
                        ControlToValidate="TextBoxContactEmail" 
                        OnServerValidate="CusVal_ContactEmail" 
                        ErrorMessage="<%$Resources:obaui, SSSAdmin_InvalidEmailAddress%>"
                        CssClass="ms-error"
                        Display="Dynamic" 
                        Runat="server" />
                </Template_control>
            </wssuc:InputFormControl>

            <wssuc:InputFormControl runat="server" 
                LabelText="<%$Resources:obaui, SSSAdmin_TargetApplicationType%>"
				LabelAssociatedControlId="DropDownTargetAppType">
                <Template_control>
                    <asp:DropDownList 
                        runat="server" 
                        id="DropDownTargetAppType" 
                        autopostback="true"
                        OnSelectedIndexChanged="OnApplicationTypeChange" 
                        ToolTip="<%$Resources:obaui, SSSAdmin_TargetApplicationTypeAltText%>" />
                </Template_control>
            </wssuc:InputFormControl>

<% if( IsCustomPageForCredDisabledInSSS() == false) { %>
            <wssuc:InputFormControl runat="server"
                LabelText ="<%$Resources:obaui, SSSAdmin_TargetAppPageUrl%>">
                <Template_Control>
                    <wssawc:InputFormRadioButton id="RadCredentialPageDefault" GroupName="CredentialUrl" 
                        LabelText="<%$Resources:obaui, SSSAdmin_TargetAppPageUrlDefault%>" 
                        onclick="CustomCredentialPageUrl_Enabled()"
                        runat=server />
                    <wssawc:InputFormRadioButton id="RadCredentialPageCustom" GroupName="CredentialUrl" 
                        LabelText="<%$Resources:obaui, SSSAdmin_TargetAppPageUrlCustom%>" 
                        onclick="CustomCredentialPageUrl_Enabled()"
                        runat=server >
                        <table border="0" width="100%" cellspacing="0" cellpadding="0" class="ms-authoringcontrols">
                            <wssuc:InputFormControl runat="server">
                                <Template_control>
                                    <wssawc:InputFormTextBox title="<%$Resources:obaui, SSSAdmin_TargetAppPageUrlAltText%>" CssClass="ms-input" ID="TextBoxPageUrl" Columns="35" Runat="server" MaxLength=2080 Direction="LeftToRight" />
                                    <br />
                                    <asp:CustomValidator 
                                        id="cusValUrlValidator" 
                                        ControlToValidate="TextBoxPageUrl" 
                                        OnServerValidate="CusVal_UrlValidator" 
                                        ErrorMessage = "<%$SPHtmlEncodedResources:obaui, SSSAdmin_InvalidUrl%>"
                                        ValidateEmptyText="true"
                                        Class="ms-input"
                                        Display="Dynamic" 
                                        Runat="server" />
                                </Template_control>
                            </wssuc:InputFormControl>
                        </table>
                    </wssawc:InputFormRadioButton>
                    <wssawc:InputFormRadioButton id="RadCredentialPageNone" GroupName="CredentialUrl" 
                        LabelText="<%$Resources:obaui, SSSAdmin_TargetAppPageUrlNone%>" 
                        onclick="CustomCredentialPageUrl_Enabled()"
                        runat=server />
                </Template_Control>
            </wssuc:InputFormControl>
<% } %>

            <wssuc:InputFormControl runat="server" id = "TimeoutSection"
                LabelText="<%$Resources:obaui, SSSAdmin_TargetAppTimeout%>">
                <Template_control>
                  <wssawc:InputFormTextBox title="<%$Resources:obaui, SSSAdmin_TargetAppTimeoutAltText%>" CssClass="ms-input" ID="TextBoxTimeoutValue" Columns="35" Runat="server" MaxLength="10" />
                  <wssawc:InputFormRequiredFieldValidator ID="ReqValTimeotValue"
                      ControlToValidate="TextBoxTimeoutValue"
                      ErrorMessage="<%$Resources:obaui, SSSAdmin_RequiredFieldErrorMessage%>"
                      Runat="server"/>
                  <wssawc:InputFormRangeValidator runat="server"
                      id="RegexValTimeoutValue"
                      Type="Integer"
                      MinimumValue="1"
                      MaximumValue="525600"
                      ControlToValidate="TextBoxTimeoutValue"
                      ErrorMessage="<%$Resources:obaui, SSSAdmin_TicketTimeOutValidationMessage%>" />
                </Template_control>
            </wssuc:InputFormControl>
        </Template_InputFormControls>
    </wssuc:InputFormSection>
