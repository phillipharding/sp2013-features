<%@ Assembly Name="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Search.Internal.UI.WebControls.EditResultSourceControl"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<SharePoint:ScriptBlock runat="server">
var navBarHelpOverrideKey = "wssmain";

function CloseTestSourceDialog(dialogResult, returnValue)
{    
    var modalDialog = SP.UI.ModalDialog.get_childDialog();
	if(typeof modalDialog != 'undefined' && modalDialog != null)
	{
		if(typeof returnValue != 'undefined' && returnValue != null && returnValue != '')
		{
			modalDialog.set_returnValue("&focusOn=" + returnValue);
		}
		modalDialog.close(dialogResult);
	}
}  

function CancelTestSource()
{
	SP.SOD.executeFunc('sp.ui.dialog.js', 'SP.UI.ModalDialog.showModalDialog', function() { 
		CloseTestSourceDialog(SP.UI.DialogResult.Cancel);
    });
}

function RedirectToEditSource()
{
	SP.SOD.executeFunc('sp.ui.dialog.js', 'SP.UI.ModalDialog.showModalDialog', function() {
        var elementWithValueToFocusOn = document.getElementById(<%SPHttpUtility.WriteAddQuote(SPHttpUtility.NoEncode(editSourceFieldToFocusOn.ClientID),this.Page);%>);
        var elementToFocusOnReturn = elementWithValueToFocusOn != null ? elementWithValueToFocusOn.value : "";
		CloseTestSourceDialog(SP.UI.DialogResult.OK, elementToFocusOnReturn);
    });
}   
</SharePoint:ScriptBlock>

<script type="text/javascript">
  function LoadQueryBuilderScripts()
  {
    RegisterSodDep('search.configuration.js', 'search.clientcontrols.js');
    RegisterSodDep('search.configuration.js', 'sp.js');
    RegisterSodDep('search.configuration.js', 'sp.core.js');
    RegisterSodDep('search.configuration.js', 'sp.ui.dialog.js');
    EnsureScript('search.configuration.js', TypeofFullName('search.configuration.js'), null); 
    ExecuteOrDelayUntilScriptLoaded(LaunchQB, 'search.configuration.js');
  }
  function LaunchQB()
  {
     var query = document.getElementById('<%= queryTransformationConfigureQueryTextBox.ClientID %>').value;
     var level = document.getElementById('<%= pageLevel.ClientID %>');
     var source = "8413CD39-2156-4E00-B54D-11EFD9ABDB89";
     var people = document.getElementById('<%= peopleSearchRadioButton.ClientID %>').checked;

     if (people)
     {
        source = "B09A7990-05EA-4AF9-81EF-EDFAB16C4E31";
     }

     var builderReturnField = document.getElementById('<%= builderReturnData.ClientID %>');
     var state = null;
     if (!Srch.U.e(builderReturnField.value))
     {
         state = Search.Configuration.QueryBuilderUtility.parse(builderReturnField.value);
     }
     if (Srch.U.n(state))
     {
         state = new Search.Configuration.QueryBuilderState();
     }

     state.SourceId = source;
     state.QueryTemplate = query;

     Search.Configuration.QueryBuilder.launchResultSourceQueryBuilder(state, level.value);
  }
  function ParseQueryBuilderResult(result)
  {
      var transform = document.getElementById('<%= queryTransformationConfigureQueryTextBox.ClientID %>');
      transform.value = result.QueryTemplate;
      var builderReturnField = document.getElementById('<%= builderReturnData.ClientID %>');
      builderReturnField.value = JSON.stringify(result);
  }
</script>

<asp:HiddenField ID="builderReturnData" runat="server" />
<asp:HiddenField ID="pageLevel" runat="server" />

    <table border="0" cellspacing="0" cellpadding="0" class="ms-propertysheet" width="100%">

    <tr><td>
        <asp:Label runat="server" id="pageLevelError" ForeColor="Red"/>
    </td></tr>

            <wssuc:InputFormSection runat="server" id="nameSourceSection" title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_GeneralInformationSection_Title%>"
                Description="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_GeneralInformationSectionHelp_Title%>">

                <Template_InputFormControls>
                    <wssuc:InputFormControl runat="server">
                        <Template_LabelText>
                            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_SourceNameTextBox_Label%>"/>
                        </Template_LabelText> 
                        <Template_control>
                            <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_SourceName_Text%>" CssClass="ms-input" ID="sourceNameTextBox" Columns="35" Runat="server" AutoPostBack="false" MaxLength=64 />
                            <wssawc:InputFormRequiredFieldValidator ID="sourceNameTextBoxValidator" ControlToValidate="sourceNameTextBox" Display="Dynamic" Runat="server"
                                ForeColor="red"/>
                            <wssawc:InputFormCustomValidator 
                                    runat="server" 
                                    id="sourceNameVal" 
                                    controlToValidate="sourceNameTextBox" 
                                    ForeColor="red"/>
                        </Template_control>
                    </wssuc:InputFormControl>
                    <wssuc:InputFormControl runat="server" id="descriptionInputFormControl">
                        <Template_LabelText>
                            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Description_Text%>"/>
                        </Template_LabelText> 
                        <Template_control>
                            <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Description_Text%>" class="ms-input" ID="descriptionTextBox" Runat="server" TextMode="MultiLine" Columns="40" Rows="4" wrap="true" MaxLength=256 />
                        </Template_control>
                    </wssuc:InputFormControl>
                </Template_InputFormControls>
            </wssuc:InputFormSection>

            <wssuc:InputFormSection runat="server" id="testSourceSection" title="<%$Resources:Microsoft.Office.Server.Search, TestResultSource_TestDetails_Text%>"
                Description="<%$Resources:Microsoft.Office.Server.Search, TestResultSource_TestDetailsHelp_Text%>">

                <Template_InputFormControls>
                    <wssuc:InputFormControl runat="server">
                        <Template_LabelText>
                            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, TestResultSource_TestDetailsTextBox_Label%>"/>
                        </Template_LabelText> 
                        <Template_control>
                            <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, TestResultSource_TestDetails_Text%>" class="ms-input" ID="testResultTextBox" Runat="server" TextMode="MultiLine" Columns="40" Rows="4" wrap="true" MaxLength=256 />
                        </Template_control>
                    </wssuc:InputFormControl>
                </Template_InputFormControls>
            </wssuc:InputFormSection>

            <wssuc:InputFormSection runat="server" id="sourceProtocolSection" title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_SourceProtocol_Text%>"
                Description="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_SourceTypeHelp_Text%>">

                <Template_InputFormControls>
                    <wssuc:InputFormControl runat="server" />
                        <Template_control>
                            <wssawc:InputFormRadioButton 
                                Id="localSharepointRadioButton"
                                LabelText="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_LocalSharepoint_Text%>"
                                Checked="true" 
                                GroupName="sourceTypeButtonGroup" 
                                CausesValidation="false"
                                AutoPostBack="true"
                                runat="server" />
                            <wssawc:InputFormRadioButton 
                                Id="remoteSharepointRadioButton"
                                LabelText="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_RemoteSharepoint_Text%>"
                                Checked="false" 
                                GroupName="sourceTypeButtonGroup" 
                                CausesValidation="false"
                                AutoPostBack="true"
                                runat="server" />
                            <wssawc:InputFormRadioButton 
                                Id="openSearchRadioButton"
                                LabelText="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_OpenSearch_Text%>"
                                Checked="false" 
                                GroupName="sourceTypeButtonGroup" 
                                CausesValidation="false"
                                AutoPostBack="true"
                                runat="server" />
                            <wssawc:InputFormRadioButton 
                                Id="exchangeSearchRadioButton"
                                LabelText="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_ExchangeSearch_Text%>"
                                Checked="false" 
                                GroupName="sourceTypeButtonGroup" 
                                CausesValidation="false"
                                AutoPostBack="true"
                                runat="server" />
                        </Template_control>
                    </wssuc:InputFormControl>
                </Template_InputFormControls>
            </wssuc:InputFormSection>

            <wssuc:InputFormSection runat="server" id="remoteServiceUrlSection" title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_RemoteServiceUrl_Text%>"
                Description="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_RemoteServiceUrlHelp_Text%>">

                <Template_InputFormControls>
                    <wssuc:InputFormControl runat="server">
                        <Template_LabelText>
                            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_RemoteServiceUrlTextBox_Label%>"/>
                        </Template_LabelText> 
                        <Template_control>
                            <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_RemoteServiceUrlTextBox_Label%>" CssClass="ms-input" ID="remoteServiceUrlTextBox" Columns="35" Runat="server" AutoPostBack="false" />
                            <wssawc:InputFormCustomValidator
                                ErrorMessage="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_RemoteServiceUrl_Error%>"
                                OnServerValidate="ValidateRemoteServiceUrl"
                                display="dynamic"
                                runat="server"
                                ForeColor="red" />
                        </Template_control>
                    </wssuc:InputFormControl>

                </Template_InputFormControls>
            </wssuc:InputFormSection>

            <wssuc:InputFormSection runat="server" id="exchangeSourceUrlSection" title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_ExchangeSourceUrl_Text%>"
                Description="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_ExchangeSourceUrlHelp_Text%>">

                <Template_InputFormControls>
                    <wssuc:InputFormControl runat="server">
                        <Template_LabelText>
                            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_ExchangeSourceUrlTextBox_Label%>"/>
                        </Template_LabelText> 
                        <Template_control>
                            <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_ExchangeSourceUrlTextBox_Label%>" CssClass="ms-input" ID="exchangeSourceUrlTextBox" Columns="35" Runat="server" AutoPostBack="false" />
                            <wssawc:InputFormRequiredFieldValidator ID="exchangeSourceUrlTextBoxValidator" ControlToValidate="exchangeSourceUrlTextBox" Display="Dynamic" Runat="server"
                                ForeColor="red"/>
                            <wssawc:InputFormCheckBox runat="server"
                                ID="exchangeAutoConfigureCheckBox" 
                                LabelText="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_ExchangeSourceAutoDiscoverCheckBox_Label%>"
                                ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_ExchangeSourceAutoDiscoveryCheckBoxToolTip_Text%>"
                                Checked="false"
                                CausesValidation="false"
                                AutoPostBack="true"
                                style="padding-left:5px;"/>
                        </Template_control>
                        <Template_LabelText>
                            <asp:Label runat="server" id="exchangeMultiSourceWarning" ForeColor="Red"/>
                        </Template_LabelText>
                    </wssuc:InputFormControl>
                </Template_InputFormControls>
            </wssuc:InputFormSection>

            <wssuc:InputFormSection runat="server" id="sourceSubTypeSection" title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_SourceOnRemoteServer_Text%>"
                Description="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_SourceOnRemoteServerHelp_Text%>">

                <Template_InputFormControls>
                    <wssuc:InputFormControl runat="server" LabelText="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_SourceType_Text%>">
                        <Template_control>
                            <wssawc:InputFormRadioButton 
                                Id="sharepointSearchRadioButton"
                                LabelText="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_SharepointSearch_Text%>"
                                Checked="true" 
                                GroupName="sourceOnRemoteServerButtonGroup" 
                                CausesValidation="false"
                                AutoPostBack="false"
                                runat="server" />
                            <wssawc:InputFormRadioButton 
                                Id="peopleSearchRadioButton"
                                LabelText="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_PeopleSearch_Text%>"
                                Checked="false" 
                                GroupName="sourceOnRemoteServerButtonGroup" 
                                CausesValidation="false"
                                AutoPostBack="false"
                                runat="server" />
                        </Template_control>
                    </wssuc:InputFormControl>

                </Template_InputFormControls>
            </wssuc:InputFormSection>

        <wssuc:InputFormSection runat="server" id="queryTransformationSection" title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_QueryTransformation_Text%>"
            Description="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_QueryTransformationHelp_Text%>">

            <Template_InputFormControls>
                <wssuc:InputFormControl runat="server">
                    <Template_LabelText>
                        <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_QueryTransformationConfigureQueryTextBox_Label%>"/>
                    </Template_LabelText> 
                    <Template_control>
                    <table cellpadding="1" cellspacing="0">
                    <tr>
                      <td>
                         <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_QueryTransformation_Text%>" CssClass="ms-input" ID="queryTransformationConfigureQueryTextBox" Columns="35" Runat="server" AutoPostBack="false" MaxLength=2048 />
                      </td>
                      <td>
                         <asp:Button runat="server" class="ms-ButtonHeightWidth" Text="<%$Resources:Microsoft.Office.Server.Search, ManageResultBlock_LaunchQueryBuilder_Text%>" ID="btnLaunchQueryBuilder" accesskey="<%$Resources:Microsoft.Office.Server.Search, ManageResultBlock_LaunchQueryBuilder_Accesskey%>" OnClientClick="EnsureScript('sp.search.js', TypeofFullName('sp.search.js'), null); ExecuteOrDelayUntilScriptLoaded(LoadQueryBuilderScripts, 'sp.search.js');return false;"/> 
                      </td>
                    </tr>
                    <tr>
                      <td>
                      <asp:Label Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_QueryTransformHelpLink_Text%>" id="idQueryTransformHelpLink" runat="server" />
                      </td>
                    </tr>
                    </table>
                    </Template_control>
                </wssuc:InputFormControl>
            </Template_InputFormControls>
        </wssuc:InputFormSection>

            <wssuc:InputFormSection runat="server" id="sourceUrlSection" title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_SourceUrl_Text%>"
                Description="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_SourceUrlHelp_Text%>">

                <Template_InputFormControls>
                    <wssuc:InputFormControl runat="server">
                        <Template_LabelText>
                            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_SourceUrlTextBox_Label%>"/>
                        </Template_LabelText> 
                        <Template_control>
                            <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_SourceUrlTextBox_Label%>" CssClass="ms-input" ID="sourceUrlTextBox" Columns="35" Runat="server" AutoPostBack="false" />
                            <wssawc:InputFormRequiredFieldValidator ID="sourceUrlTextBoxValidator" ControlToValidate="sourceUrlTextBox" Display="Dynamic" Runat="server"
                                ForeColor="red"/>
                        </Template_control>
                    </wssuc:InputFormControl>

                </Template_InputFormControls>
            </wssuc:InputFormSection>

        <tr id="authSection" runat="server"><td>
            <H3 class="ms-standardheader">
                  <asp:literal id="credentialsInformationSection" runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_CredentialsInformationSection_Title%>"/>
            </H3>
        </td></tr>

            <wssuc:InputFormSection runat="server" id="localSharepointAuthSection" title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Authentication_Text%>"
                Description="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_AuthenticationHelp_Text%>">

                <Template_InputFormControls>
                    <wssuc:InputFormControl runat="server">
                        <Template_control>
                            <SharePoint:RadioButtonWithChildren 
                                Id="localSharepointDefaultAuthRadioButton"
                                Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_DefaultAuthRadio_Label%>"
                                Checked="true" 
                                GroupName="localAuthButtonGroup" 
                                CausesValidation="false"
                                AutoPostBack="false"
                                runat="server" />

                            <br>
                            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_CommonAuth_Label%>"/>
                            </br>
                            </br>

                            <SharePoint:RadioButtonWithChildren 
                                Id="localSharepointBasicAuthRadioButton"
                                Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_BasicAuthRadio_Label%>"
                                Checked="false" 
                                GroupName="localAuthButtonGroup" 
                                CausesValidation="false"
                                AutoPostBack="false"
                                runat="server"
                                Options="HideChildWhenNotSelected">
                                <Template_ChildControl>
                                    <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_LocalAuthAccount_Label%>"/>
                                    <br/>
                                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_LocalAuthAccount_Label%>" CssClass="ms-input" ID="localAccessUsernameTextBox" Columns="35" Runat="server" onchange="OnLocalAccountChange()" />
                                    <br/>

                                    <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_LocalAuthPassword_Label%>"/>
                                    <br/>
                                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_LocalAuthPassword_Label%>" CssClass="ms-input" ID="localAccessPasswordTextBox" Columns="35" Runat="server" onchange="OnLocalAccountChange()" textMode="password" />
                                    <br/>

                                    <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_LocalAuthPasswordConfirm_Label%>"/>
                                    <br/>
                                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_LocalAuthPasswordConfirm_Label%>" CssClass="ms-input" ID="localAccessPasswordConfirmTextBox" Columns="35" Runat="server" onchange="OnLocalAccountChange()" textMode="password" />
                                </Template_ChildControl>
                            </SharePoint:RadioButtonWithChildren>
                        </Template_control>
                    </wssuc:InputFormControl>

                </Template_InputFormControls>
            </wssuc:InputFormSection>

            <wssuc:InputFormSection runat="server" id="remoteSharepointAuthSection" title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Authentication_Text%>"
                Description="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_RemoteSharepointAuthenticationHelp_Text%>">

                <Template_InputFormControls>
                    <wssuc:InputFormControl runat="server">
                        <Template_control>

                            <SharePoint:RadioButtonWithChildren 
                                Id="remoteSharepointDefaultAuthRadioButton"
                                Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_DefaultAuthRadio_Label%>"
                                Checked="true" 
                                GroupName="remoteAuthButtonGroup" 
                                CausesValidation="false"
                                AutoPostBack="false"
                                runat="server" />
                            <SharePoint:RadioButtonWithChildren 
                                Id="remoteSharepointReverseProxyAuthRadioButton"
                                Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_RemoteSharepointSSOIdAuthRadio_Label%>"
                                Checked="false" 
                                GroupName="remoteAuthButtonGroup" 
                                CausesValidation="false"
                                AutoPostBack="false"
                                runat="server"
                                Options="HideChildWhenNotSelected">
                                <Template_ChildControl>
                                    <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_RemoteSharepointReverseProxyAuthCertSSOId_Label%>"/>
                                    <br/>
                                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_RemoteSharepointReverseProxyAuthCertSSOIdToolTip_Text%>" CssClass="ms-input" ID="remoteReverseProxyCertIdTextBox" Columns="35" Runat="server"  />
                                    <wssawc:InputFormCustomValidator
                                        ErrorMessage="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_ReverseProxyAuthCertSSOId_Error%>"
                                        OnServerValidate="ValidateReverseProxyAuthCertSSOId"
                                        display="dynamic"
                                        runat="server"
                                        ForeColor="red" />
                                </Template_ChildControl>
                            </SharePoint:RadioButtonWithChildren>
                        </Template_control>
                    </wssuc:InputFormControl>
                </Template_InputFormControls>

            </wssuc:InputFormSection>

            <wssuc:InputFormSection runat="server" id="openSearchAuthSection" title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Authentication_Text%>"
                Description="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_AuthenticationHelp_Text%>">

                <Template_InputFormControls>
                    <wssuc:InputFormControl runat="server">
                        <Template_control>

                        <SharePoint:RadioButtonWithChildren 
                            Id="noneRadioButton"
                            Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_NoneRadio_Label%>"
                            Checked="true" 
                            indentedControl="true"
                            GroupName="authButtonGroup" 
                            runat="server" />

                            <br/>
                            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Corporate_Label%>"/>
                            <br/>
                            <br/>

                            <SharePoint:RadioButtonWithChildren 
                                Id="corpBasicAuthRadioButton"
                                Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_CorpBasicAuthRadio_Label%>"
                                Checked="false" 
                                indentedControl="true"
                                GroupName="authButtonGroup" 
                                runat="server"
                                Options="HideChildWhenNotSelected">
                                <Template_ChildControl>
                                    <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Account_Label%>"/>
                                    <br/>
                                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Account_Label%>" CssClass="ms-input" ID="basicAuthUsernameTextBox" Columns="35" Runat="server" onchange="OnBasicAuthAccountChange()" />
                                    <wssawc:InputFormCustomValidator
                                        ErrorMessage="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Account_Error%>"
                                        OnServerValidate="ValidateBasicAuthUserName"
                                        display="dynamic"
                                        runat="server" />
                                    <br/>

                                    <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Password_Label%>"/>
                                    <br/>
                                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Password_Label%>" CssClass="ms-input" ID="basicAuthPasswordTextBox" Columns="35" Runat="server" onchange="OnBasicAuthAccountChange()" textMode="password" />
                                    <wssawc:InputFormCustomValidator
                                        ErrorMessage="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Password_Error%>"
                                        OnServerValidate="ValidateBasicAuthPassword"
                                        display="dynamic"
                                        runat="server" />
                                    <br/>

                                    <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_PasswordConfirm_Label%>"/>
                                    <br/>
                                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_PasswordConfirm_Label%>" CssClass="ms-input" ID="basicAuthPasswordConfirmTextBox" Columns="35" Runat="server" onchange="OnBasicAuthAccountChange()" textMode="password" />
                                </Template_ChildControl>
                            </SharePoint:RadioButtonWithChildren>

                            <SharePoint:RadioButtonWithChildren 
                                Id="corpDigestAuthRadioButton"
                                Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_CorpDigestAuthRadio_Label%>"
                                Checked="false" 
                                GroupName="authButtonGroup" 
                                indentedControl="true"
                                runat="server"
                                Options="HideChildWhenNotSelected">
                                <Template_ChildControl>
                                    <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Account_Label%>"/>
                                    <br/>
                                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Account_Label%>" CssClass="ms-input" ID="digestAuthUsernameTextBox" Columns="35" Runat="server" onchange="OnDigestAuthAccountChange()" />
                                    <wssawc:InputFormCustomValidator
                                        ErrorMessage="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Account_Error%>"
                                        OnServerValidate="ValidateDigestAuthUserName"
                                        display="dynamic"
                                        runat="server" />
                                    <br/>

                                    <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Password_Label%>"/>
                                    <br/>
                                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Password_Label%>" CssClass="ms-input" ID="digestAuthPasswordTextBox" Columns="35" Runat="server" onchange="OnDigestAuthAccountChange()" textMode="password" />
                                    <wssawc:InputFormCustomValidator
                                        ErrorMessage="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Password_Error%>"
                                        OnServerValidate="ValidateDigestAuthUserName"
                                        display="dynamic"
                                        runat="server" />
                                    <br/>

                                    <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_PasswordConfirm_Label%>"/>
                                    <br/>
                                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_PasswordConfirm_Label%>" CssClass="ms-input" ID="digestAuthPasswordConfirmTextBox" Columns="35" Runat="server" onchange="OnDigestAuthAccountChange()" textMode="password" />
                                </Template_ChildControl>
                            </SharePoint:RadioButtonWithChildren>

                            <SharePoint:RadioButtonWithChildren 
                                Id="appPoolAuthRadioButton"
                                Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_AppPoolAuthRadio_Label%>"
                                Checked="false" 
                                GroupName="authButtonGroup" 
                                indentedControl="true"
                                runat="server"/>

                            <SharePoint:RadioButtonWithChildren 
                                Id="ntlmAuthRadioButton"
                                Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_NTLMAuthRadio_Label%>"
                                Checked="false" 
                                GroupName="authButtonGroup" 
                                indentedControl="true"
                                runat="server"
                                Options="HideChildWhenNotSelected">
                                <Template_ChildControl>
                                    <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Account_Label%>"/>
                                    <br/>
                                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Account_Label%>" CssClass="ms-input" ID="ntlmUsernameTextBox" Columns="35" Runat="server" onchange="OnNTLMAuthAccountChange()" />
                                    <wssawc:InputFormCustomValidator
                                        ErrorMessage="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Account_Error%>"
                                        OnServerValidate="ValidateNTLMUserName"
                                        display="dynamic"
                                        runat="server" />
                                    <br/>

                                    <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Password_Label%>"/>
                                    <br/>
                                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Password_Label%>" CssClass="ms-input" ID="ntlmPasswordTextBox" Columns="35" Runat="server" onchange="OnNTLMAuthAccountChange()" textMode="password" />
                                    <wssawc:InputFormCustomValidator
                                        ErrorMessage="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Password_Error%>"
                                        OnServerValidate="ValidateNTLMPassword"
                                        display="dynamic"
                                        runat="server" />
                                    <br/>

                                    <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_PasswordConfirm_Label%>"/>
                                    <br/>
                                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_PasswordConfirm_Label%>" CssClass="ms-input" ID="ntlmPasswordConfirmTextBox" Columns="35" Runat="server" onchange="OnNTLMAuthAccountChange()" textMode="password" />
                                </Template_ChildControl>
                            </SharePoint:RadioButtonWithChildren>

                            <SharePoint:RadioButtonWithChildren 
                                Id="corpFormsAuthRadioButton"
                                Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_CorpFormsAuthRadio_Label%>"
                                Checked="false" 
                                GroupName="authButtonGroup" 
                                indentedControl="true"
                                runat="server"
                                Options="HideChildWhenNotSelected">
                                <Template_ChildControl>

                                    <SEARCHWC:FormsAuthenticationControl 
                                        runat="server"
                                        id="formsAuthenticationControl"
                                    />

                                </Template_ChildControl>
                            </SharePoint:RadioButtonWithChildren>

                            <SharePoint:RadioButtonWithChildren 
                                Id="corpCookiesAuthRadioButton"
                                Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_CorpCookiesAuthRadio_Label%>"
                                Checked="false" 
                                GroupName="authButtonGroup" 
                                indentedControl="true"
                                runat="server"
                                Options="HideChildWhenNotSelected">
                                <Template_ChildControl>
                                    <SEARCHWC:FormsAuthenticationControl 
                                        runat="server"
                                        id="cookiesAuthenticationControl"
                                    />
                                </Template_ChildControl>
                            </SharePoint:RadioButtonWithChildren>
                        </Template_control>
                    </wssuc:InputFormControl>
                </Template_InputFormControls>

            </wssuc:InputFormSection>

            <wssuc:InputFormSection runat="server" id="exchangeSearchAuthSection" title="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_Authentication_Text%>"
                Description="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_NoAuthenticationRequired_Text%>">

                <Template_InputFormControls>
                    <wssuc:InputFormControl runat="server">
                        <Template_control>
                            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditResultSource_DefaultAuth_Label%>"/>
                        </Template_control>
                    </wssuc:InputFormControl>
                </Template_InputFormControls>

            </wssuc:InputFormSection>

        <wssuc:ButtonSection id="BtnSectionBottom" runat="server" ShowStandardCancelButton="false">
            <Template_Buttons>
                <asp:Button runat="server" id="BottomTestBtnEdit" OnClientClick="RedirectToEditSource();return false;" Text="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_EditSource_Menu%>" class="ms-ButtonHeightWidth" CausesValidation="false"/>
                <asp:Button runat="server" class="ms-ButtonHeightWidth" OnClick="OnClickOK" Text="<%$Resources:wss,multipages_savebutton_text%>" id="BottomBtnOk" accesskey="<%$Resources:wss,multipages_savebutton_accesskey%>" CausesValidation="true"/>
                <asp:Button runat="server" id="BottomBtnCancel" OnClick="OnClickCancel" Text="<%$Resources:wss,multipages_cancelbutton_text%>" class="ms-ButtonHeightWidth" accesskey="<%$Resources:wss,cancelbutton_accesskey%>" CausesValidation="false"/>
            </Template_Buttons>
        </wssuc:ButtonSection>

        <wssawc:InputFormTextBox runat="server" id="editSourceIdHidden" style="display:none"/>

        <wssawc:InputFormTextBox runat="server" id="localBasicAuthAccountChangedHidden" style="display:none"/>
        <wssawc:InputFormTextBox runat="server" id="basicAuthAccountChangedHidden" style="display:none"/>
        <wssawc:InputFormTextBox runat="server" id="digestAuthAccountChangedHidden" style="display:none"/>
        <wssawc:InputFormTextBox runat="server" id="ntlmAuthAccountChangedHidden" style="display:none"/>
        <input id="editSourceFieldToFocusOn" type="hidden" runat="server" />
</table>

