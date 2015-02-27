<%@ Assembly Name="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Search.Internal.UI.WebControls.EditCrawlRuleControl"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<table border="0" cellspacing="0" cellpadding="0" class="ms-propertysheet" width="100%">
<tr><td>

    <SPSWC:PageLevelError runat="server" id="pageLevelError"/>
    <SPSWC:InputForm runat="server" ShowRequiredText="true">

        <SPSWC:InputFormSection runat="server">
            <SPSWC:InputFormSectionHelpArea runat="server" TitleLocId="EditCrawlRule_Path_Text">
                <SPSWC:InputFormSectionHelpText runat="server" TextLocId="EditCrawlRule_PathHelp_Text"/>
            </SPSWC:InputFormSectionHelpArea> 

                <SPSWC:InputFormSectionFieldArea runat="server" WidthOverride="60%">
                <SPSWC:InputFormTextBox runat="server" 
                    width="100%"
                    id="pathTextBox"
                    labelTextLocId="EditCrawlRule_PathTextBox_Label"
                    isRequired="true"
                    accessKey="<%$Resources:Microsoft.Office.Server.Search, EditCrawlRule_Path_AccessKey%>"/>
                <SPSWC:InputFormLabel runat="server"
                    labelText="<%$Resources:Microsoft.Office.Server.Search, EditCrawlRule_NameExample_Label%>"
                    Direction="LeftToRight"
                    indentedControl="true"/>
                <SPSWC:InputFormCheckBox runat="server" 
                    id="useRegExp" 
                    Text="<%$Resources:Microsoft.Office.Server.Search, EditCrawlRule_UseRegExp_Label%>"
                    indentedControl="true"
                    Checked="false"/>
                <SPSWC:InputFormRequiredFieldValidator runat="server"
                    id="valPath" 
                    controlToValidate="pathTextBox" 
                    errorMessageLocId="DmWorkspace_MissingFieldValue_Error"/>
                <SPSWC:InputFormCustomValidator runat="server" id="valCustomPath"/>
            </SPSWC:InputFormSectionFieldArea>
        </SPSWC:InputFormSection>

        <SPSWC:InputFormSection runat="server">
            <SPSWC:InputFormSectionHelpArea runat="server" TitleLocId="EditCrawlRule_Configuration_Text">
                <SPSWC:InputFormSectionHelpText runat="server" TextLocId="EditCrawlRule_ConfigurationHelp_Text"/>
            </SPSWC:InputFormSectionHelpArea> 

            <SPSWC:InputFormSectionFieldArea runat="server">
                <SPSWC:InputFormRadioButton runat="server"
                    id="excludeRadioButton"
                    GroupName="typeButtonGroup"
                    TextLocId="EditCrawlRule_ExclusionRadio_Label"
                    indentedControl="false"
                    Checked="true"
                    onClick="OnRuleTypeChange()"
                    accessKey="<%$Resources:Microsoft.Office.Server.Search, EditCrawlRule_Configuration_AccessKey%>"/>
                <SPSWC:InputFormCheckBox runat="server" 
                    id="includeComplexUrlsInExclusionsCheckBox" 
                    TextLocId="NewSiteRule_FollowComplexUrls_Label" 
                    indentedControl="true"
                    Checked="false"/>
                <SPSWC:InputFormRadioButton runat="server"
                    id="includeRadioButton"
                    GroupName="typeButtonGroup"
                    TextLocId="EditCrawlRule_InclusionRadio_Label"
                    indentedControl="false"
                    checked="false"
                    onClick="OnRuleTypeChange()"/>
                <SPSWC:InputFormCheckBox runat="server" 
                    id="suppressIndexingCheckBox" 
                    TextLocId="EditCrawlRule_SuppressIndexing_Label" 
                    indentedControl="true"
                    Checked="false"/>
                <SPSWC:InputFormCheckBox runat="server" 
                    id="includeComplexUrlsCheckBox" 
                    TextLocId="EditCrawlRule_IncludeComplexUrl_Label" 
                    indentedControl="true"
                    Checked="false"/>
                <SPSWC:InputFormCheckBox runat="server" 
                    id="crawlAsHttpCheckBox" 
                    TextLocId="EditCrawlRule_CrawlAsHttp_Label" 
                    indentedControl="true"
                    checked="false"/>
            </SPSWC:InputFormSectionFieldArea>
        </SPSWC:InputFormSection>

        <SPSWC:InputFormSection runat="server">
            <SPSWC:InputFormSectionHelpArea runat="server" TitleLocId="EditCrawlRule_Authentication_Text">
                <SPSWC:InputFormSectionHelpText runat="server" id= "authenticationHelpText" TextLocId="EditCrawlRule_DefaultAuthenticationText"/>
            </SPSWC:InputFormSectionHelpArea> 

            <SPSWC:InputFormSectionFieldArea runat="server">
                <SPSWC:InputFormDynamicSection runat="server">
                    <SPSWC:InputFormRadioButton runat="server"
                        id="defaultAccessRadioButton"
                        GroupName="authButtonGroup"
                        indentedControl="false"
                        Checked="true"
                        onClick="OnAuthenticationTypeChange()"
                        accessKey="U"/>
                    <SPSWC:InputFormRadioButton runat="server"
                        id="accountAccessRadioButton"
                        GroupName="authButtonGroup"
                        TextLocId="EditCrawlRule_AccountAccessRadio_Label"
                        indentedControl="false"
                        Checked="false"
                        onClick="OnAuthenticationTypeChange(); OnAccountChange();"/>
                    <SPSWC:InputFormRadioButton runat="server"
                        id="certificateAccessRadioButton"
                        GroupName="authButtonGroup"
                        TextLocId="EditCrawlRule_CertificateAccessRadio_Label"
                        indentedControl="false"
                        Checked="false"
                        onClick="OnAuthenticationTypeChange()"/>
                    <SPSWC:InputFormCustomValidator runat="server" id="valCustomCredentials"/>
                        <SPSWC:InputFormRadioButton runat="server"
                            id="formsAuthRadioButton"
                            GroupName="authButtonGroup"
                            TextLocId="EditCrawlRule_FormsAuthRadio_Label"
                            indentedControl="false"
                            Checked="false"
                            onClick="OnAuthenticationTypeChange();"
                            accessKey="I"/>
                        <SPSWC:InputFormRadioButton runat="server"
                            id="cookiesAuthRadioButton"
                            GroupName="authButtonGroup"
                            TextLocId="EditCrawlRule_CookiesAuthRadio_Label"
                            indentedControl="false"
                            Checked="false"
                            onClick="OnAuthenticationTypeChange();"
                            accessKey="K"/>                   
                    <SPSWC:InputFormRadioButton runat="server"
                        id="httpAnonymousAccessRadioButton"
                        GroupName="authButtonGroup"
                        TextLocId="EditCrawlRule_HttpAnonymousAccessRadio_Label"
                        indentedControl="false"
                        Checked="false"
                        onClick="OnAuthenticationTypeChange()"
			/>
                </SPSWC:InputFormDynamicSection>               

                <SPSWC:InputFormDynamicSection runat="server" id="accountAccessSection" style="display:none">
                    <SPSWC:InputFormTextBox runat="server" 
                        width="400"
                        id="accountAccessUsernameTextBox"
                        LabelTextLocId="EditCrawlRule_Account_Label"
                        onchange="OnAccountChange()"/>
                    <SPSWC:InputFormCustomValidator runat="server" 
                        id="accountUsernameValidator"
                        display="dynamic"
                        errorMessageLocId="EditCrawlRule_Account_Error"
                        onServerValidate="AccountUsernameValidation"/>

                    <SPSWC:InputFormTextBox runat="server" 
                        width="400"
                        id="accountAccessPasswordTextBox"
                        textMode="password"
                        LabelTextLocId="EditCrawlRule_Password_Label"
                        onchange="OnAccountChange()"/>
                    <SPSWC:InputFormCustomValidator runat="server" 
                        id="accountPasswordValidator"
                        display="dynamic"
                        errorMessageLocId="EditCrawlRule_Password_Error"
                        onServerValidate="AccountPasswordValidation"/>

                    <SPSWC:InputFormTextBox runat="server" 
                        width="400"
                        id="accountAccessPasswordConfirmTextBox"
                        textMode="password"
                        LabelTextLocId="EditCrawlRule_PasswordConfirm_Label"
                        onchange="OnAccountChange()"/>

                    <SPSWC:InputFormCheckBox runat="server" 
                        id="basicAuthCheckBox" 
                        TextLocId="EditCrawlRule_BasicAuth_Label"
                        Checked="true"/>

                    <SPSWC:InputFormLabel runat="server" labelTextLocId="EditCrawlRule_BasicAuthWarning_Text"/>                                            
                </SPSWC:InputFormDynamicSection>

                <SPSWC:InputFormDynamicSection runat="server" id="certificateAccessSection" style="display:none">
                    <SPSWC:InputFormDropDownList runat="server" 
                        width="400"
                        id="certificateAccessDropDown"
                        textMode="password"
                        LabelTextLocId="EditCrawlRule_Certificate_Label"/>
                    <SPSWC:InputFormCustomValidator runat="server" 
                        id="certificateAccessValidator"
                        errorMessageLocId="EditCrawlRule_Certificate_Error"/>

                </SPSWC:InputFormDynamicSection>

                    <SPSWC:InputFormDynamicSection runat="server" id="formsAuthSection" style="display:none">
                        <td>
                        <SEARCHWC:FormsAuthenticationControl 
                            runat="server"
                            id="formsAuthenticationControl"
                            PadLeft="True"
                        />
                        </td>
                    </SPSWC:InputFormDynamicSection>

                    <SPSWC:InputFormDynamicSection runat="server" id="cookiesAuthSection" style="display:none">
                        <SEARCHWC:CookiesAuthenticationControl 
                            runat="server"
                            id="cookiesAuthenticationControl"
                        />
                    </SPSWC:InputFormDynamicSection>
                    <SharePoint:InputFormCustomValidator runat="server" id="valCustomCookie"/>

            </SPSWC:InputFormSectionFieldArea>
        </SPSWC:InputFormSection>

    </SPSWC:InputForm>

    <SPSWC:TextBoxLoc runat="server" id="accountChangedHidden" style="display:none"/>

    </td></tr>
</table>
