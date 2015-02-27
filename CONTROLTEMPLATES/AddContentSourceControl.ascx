<%@ Assembly Name="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Search.Internal.UI.WebControls.AddContentSourceControl"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

    <table border="0" cellspacing="0" cellpadding="0" class="ms-propertysheet" width="100%">
    <tr><td>            

        <SPSWC:TextBoxLoc runat="server" id="fullScheduleNew" style="display:none"/>
        <SPSWC:TextBoxLoc runat="server" id="fullScheduleNewIndex" style="display:none"/>
        <SPSWC:TextBoxLoc runat="server" id="fullScheduleNewName" style="display:none"/>
        <SPSWC:TextBoxLoc runat="server" id="incScheduleNew" style="display:none"/>
        <SPSWC:TextBoxLoc runat="server" id="incScheduleNewIndex" style="display:none"/>
        <SPSWC:TextBoxLoc runat="server" id="incScheduleNewName" style="display:none"/>

        <SPSWC:PageLevelError runat="server" id="pageLevelError"/>
        <SPSWC:InputForm runat="server" id="NewInputForm" DescriptionLocId="AddContentSource_PageHelp_Text" ShowRequiredText="true">

            <SPSWC:InputFormSection runat="server">
                <SPSWC:InputFormSectionHelpArea runat="server" TitleLocId="AddContentSource_Name_Text">
                    <SPSWC:InputFormSectionHelpText runat="server" TextLocId="AddContentSource_NameHelp_Text"/>
                </SPSWC:InputFormSectionHelpArea> 

                <SPSWC:InputFormSectionFieldArea runat="server">
                    <SPSWC:InputFormTextBox runat="server" 
                        width="100%"
                        id="nameTextBox"
                        labelTextLocId="AddContentSource_NameTextBox_Label"
                        indentedControl="false"
                        maxLength="255"
                        isRequired="true"
                        accessKey="<%$Resources:Microsoft.Office.Server.Search, AddContentSource_Name_AccessKey%>"/>
                    <SPSWC:InputFormRequiredFieldValidator runat="server"
                        id="valName" 
                        controlToValidate="nameTextBox" 
                        errorMessageLocId="DmWorkspace_MissingFieldValue_Error" />
                    <SPSWC:InputFormCustomValidator runat="server" id="contentSourceNameError"/>
                </SPSWC:InputFormSectionFieldArea>
            </SPSWC:InputFormSection>

            <SPSWC:InputFormSection runat="server" id="typeSection">
                <SPSWC:InputFormSectionHelpArea runat="server" TitleLocId="AddContentSource_ContentType_Text">
                    <SPSWC:InputFormSectionHelpText runat="server" TextLocId="AddContentSource_ContentTypeHelp_Text"/>
                </SPSWC:InputFormSectionHelpArea>    

                <SPSWC:InputFormSectionFieldArea runat="server">
                    <SPSWC:InputFormLabel runat="server" id="contentSourceTypeLabel" labelTextLocId="AddContentSource_Type_Text"/>
                    <SPSWC:InputFormRadioButton runat="server"
                        id="typeSharepointRadioButton"
                        GroupName="typeButtonGroup"
                        TextLocId="AddContentSource_TypeSharepointRadio_Label"
                        Checked="true"
                        IndentedControl="false"/>
                    <SPSWC:InputFormRadioButton runat="server"
                        id="typeWebRadioButton"
                        GroupName="typeButtonGroup"
                        TextLocId="AddContentSource_TypeWebRadio_Label"
                        IndentedControl="false"
                        accessKey="<%$Resources:Microsoft.Office.Server.Search, AddContentSource_CSType_AccessKey%>"/>
                    <SPSWC:InputFormRadioButton runat="server"
                        id="typeFileRadioButton"
                        GroupName="typeButtonGroup"
                        TextLocId="AddContentSource_TypeFileRadio_Label"
                        IndentedControl="false"/>
                    <SPSWC:InputFormRadioButton runat="server"
                        id="typeExchangeRadioButton"
                        GroupName="typeButtonGroup"
                        TextLocId="AddContentSource_TypeExchangeRadio_Label"
                        IndentedControl="false"/>
                    <SPSWC:InputFormRadioButton runat="server"
                        id="typeBdcRadioButton"
                        groupName="typeButtonGroup"
                        textLocId="AddContentSource_TypeBdcRadio_Label"
                        indentedControl="false"
                        autoPostBack="true"/>
                    <SPSWC:InputFormRadioButton runat="server"
                        id="typeNotesRadioButton"
                        GroupName="typeButtonGroup"
                        TextLocId="AddContentSource_TypeNotesRadio_Label"
                        IndentedControl="false"
                        autoPostBack="true"/>
                    <SPSWC:InputFormRadioButton runat="server"
                        id="typeExternalRadioButton"
                        GroupName="typeButtonGroup"
                        TextLocId="AddContentSource_TypeCustomConnectorRadio_Label"
                        IndentedControl="false"
                        autoPostBack="true" />                        
                </SPSWC:InputFormSectionFieldArea>                        
            </SPSWC:InputFormSection>

            <SPSWC:InputFormSection runat="server" visible="false" id="externalConnectorSettingsSection">
              <SPSWC:InputFormSectionHelpArea runat="server" TitleLocId="AddContentSource_CustomConnectorCrawlSettings_Text">
                <SPSWC:InputFormSectionHelpText runat="server" TextLocId="EditContentSource_CustomConnectorMainHelp_Text"/>
              </SPSWC:InputFormSectionHelpArea> 

              <SPSWC:InputFormSectionFieldArea runat="server">

                <SPSWC:InputFormDynamicSection runat="server" id="externalConnectorSettings" >
                    <SPSWC:InputFormCustomValidator runat="server" id="externalConnectorError"/>
                    <SPSWC:InputFormLabel runat="server" id="externalConnectorText" visible="false"/>
                    <SPSWC:InputFormRadioButtonList runat="server" id="externalConnectorAppList" IndentedControl="false"/>
                </SPSWC:InputFormDynamicSection>

              </SPSWC:InputFormSectionFieldArea>

            </SPSWC:InputFormSection>

            <SPSWC:InputFormSection runat="server" id="startAddressSection">
                <SPSWC:InputFormSectionHelpArea runat="server" TitleLocId="AddContentSource_StartAddresses_Text">
                    <SPSWC:InputFormSectionHelpText runat="server" TextLocId="AddContentSource_StartAddressesHelp_Text"/>
                    <SPSWC:InputFormSectionHelpText runat="server" id="startAddressSectionHelp"/>
                </SPSWC:InputFormSectionHelpArea>

                <SPSWC:InputFormSectionFieldArea runat="server">
                    <SPSWC:InputFormTextBox runat="server" 
                        id="startAddressesTextBox"
                        TextMode="MultiLine"
                        width="100%"
                        Rows="8"
                        wrap="false"
                        IndentedControl="false"
                        LabelTextLocId="AddContentSource_StartAddressTextBox_Label"
                        IsRequired="true"
                        accessKey="<%$Resources:Microsoft.Office.Server.Search, AddContentSource_StartAddress_AccessKey%>"/>
                    <tr><td colspan="2"><div class="ms-authoringcontrols" id="startAddressesExampleLabel"></div></td></tr>
                    <SPSWC:InputFormRequiredFieldValidator runat="server"
                        id="valStartAddresses" 
                        controlToValidate="startAddressesTextBox" 
                        errorMessageLocId="DmWorkspace_MissingFieldValue_Error" />
                    <SPSWC:InputFormCustomValidator runat="server" id="startAddressesError"/>
                </SPSWC:InputFormSectionFieldArea>                                                             
            </SPSWC:InputFormSection>

            <SPSWC:InputFormSection runat="server" visible="true" id="spSettingsSection">
                <SPSWC:InputFormSectionHelpArea runat="server" id="spSettingsHelpArea" TitleLocId="AddContentSource_CrawlSettings_Text">
                    <SPSWC:InputFormSectionHelpText runat="server" id="crawlSettingsInductiveText_main" textLocId="AddContentSource_CrawlSettingsHelp_Text"/>
                    <SPSWC:InputFormSectionHelpText runat="server" id="crawlSettingsInductiveText"/>
                </SPSWC:InputFormSectionHelpArea>  

                <SPSWC:InputFormSectionFieldArea runat="server" id="spSettingsFieldArea" >

                    <SPSWC:InputFormDynamicSection runat="server" id="sharepointSettings" style="display:none">

                        <SPSWC:InputFormLabel runat="server" id="sharepointSettingsLabel" labelTextLocId="AddContentSource_Settings_Text"/>
                        <SPSWC:InputFormRadioButton runat="server"
                            id="spSettingsCrawlAllRadioButton"
                            GroupName="spSettingsCrawlButtonGroup"
                            TextLocId="AddContentSource_SharepointSettings_CrawlEverything_Label"
                            IndentedControl="false"
                            Checked="true"
                            accessKey="<%$Resources:Microsoft.Office.Server.Search, AddContentSource_CrawlSettings_AccessKey%>"/>
                        <SPSWC:InputFormRadioButton runat="server"
                            id="spSettingsCrawlSiteRadioButton"
                            GroupName="spSettingsCrawlButtonGroup"
                            TextLocId="AddContentSource_SharepointSettings_CrawlSite_Label"
                            IndentedControl="false"
                            Checked="false"/>

                    </SPSWC:InputFormDynamicSection>

                    <SPSWC:InputFormDynamicSection runat="server" id="webSettings" style="display:none">
                        <SPSWC:InputFormLabel runat="server" labelTextLocId="AddContentSource_Settings_Text"/>

                        <SPSWC:InputFormRadioButton runat="server"
                            id="webSettingsCrawlSiteRadioButton"
                            GroupName="webSettingsCrawlBehaviorButtonGroup"
                            TextLocId="AddContentSource_WebSettings_CrawlSite_Label"
                            IndentedControl="false"
                            Checked="true"/>
                        <SPSWC:InputFormRadioButton runat="server"
                            id="webSettingsCrawlPageRadioButton"
                            GroupName="webSettingsCrawlBehaviorButtonGroup"
                            TextLocId="AddContentSource_WebSettings_CrawlPage_Label"
                            IndentedControl="false"
                            Checked="false"
                            accessKey="<%$Resources:Microsoft.Office.Server.Search, AddContentSource_CrawlSettings_AccessKey%>"/>
                        <SPSWC:InputFormRadioButton runat="server"
                            id="webSettingsCrawlCustomRadioButton"
                            GroupName="webSettingsCrawlBehaviorButtonGroup"
                            TextLocId="AddContentSource_WebSettings_CrawlCustom_Label"
                            IndentedControl="false"
                            Checked="false"/>

                        <SPSWC:InputFormCheckBox runat="server" 
                            id="webSettingsPageDepthCheckBox" 
                            TextLocId="AddContentSource_WebSettings_PageDepth_Label" 
                            IndentedControl="true"
                            onClick="ClickCheckBox(this)"
                            Checked="false"/>
                        <SPSWC:InputFormTextBox runat="server" 
                            width="200"
                            id="webSettingsPageDepthTextBox"
                            LabelTextLocId="AddContentSource_WebSettings_PageDepth_Label"
                            onkeypress="return CheckKeyIsNumber()"
                            textLocId="AddContentSource_Unlimited_Text"/>
                        <SPSWC:InputFormDynamicSection runat="server" id="webPathDepthValidator">
                            <SPSWC:InputFormCustomValidator runat="server" 
                                display="dynamic"
                                errorMessageLocId="AddContentSource_CrawlSettingsPageDepth_Error"
                                onServerValidate="WebPageDepthValidation"/>
                        </SPSWC:InputFormDynamicSection>

                        <SPSWC:InputFormCheckBox runat="server" 
                            id="webSettingsServerHopsCheckBox" 
                            TextLocId="AddContentSource_WebSettings_ServerHops_Label" 
                            IndentedControl="true"
                            onClick="ClickCheckBox(this)"
                            Checked="false"/>
                        <SPSWC:InputFormTextBox runat="server" 
                            width="200"
                            id="webSettingsServerHopsTextBox"
                            LabelTextLocId="AddContentSource_WebSettings_ServerHops_Label"
                            onkeypress="return CheckKeyIsNumber()"
                            textLocId="AddContentSource_Unlimited_Text"/>
                        <SPSWC:InputFormDynamicSection runat="server" id="webServerHopsValidator">
                            <SPSWC:InputFormCustomValidator runat="server" 
                                display="dynamic"
                                errorMessageLocId="AddContentSource_CrawlSettingsServerHops_Error"
                                onServerValidate="WebServerHopsValidation"/>
                        </SPSWC:InputFormDynamicSection>
                    </SPSWC:InputFormDynamicSection>

                    <SPSWC:InputFormDynamicSection runat="server" id="fileSettings" style="display:none">
                        <SPSWC:InputFormLabel runat="server" labelTextLocId="AddContentSource_Settings_Text"/>

                        <SPSWC:InputFormRadioButton runat="server"
                            id="fileSettingsCrawlAllRadioButton"
                            GroupName="fileSettingsCrawlBehaviorButtonGroup"
                            TextLocId="AddContentSource_FileSettings_CrawlAll_Label"
                            IndentedControl="false"
                            Checked="true"
                            accessKey="<%$Resources:Microsoft.Office.Server.Search, AddContentSource_CrawlSettings_AccessKey%>"/>
                        <SPSWC:InputFormRadioButton runat="server"
                            id="fileSettingsCrawlOnlyRadioButton"
                            GroupName="fileSettingsCrawlBehaviorButtonGroup"
                            TextLocId="AddContentSource_FileSettings_CrawlOnly_Label"
                            IndentedControl="false"
                            Checked="false"/>
                    </SPSWC:InputFormDynamicSection>

                    <SPSWC:InputFormDynamicSection runat="server" id="bdcSettings" style="display:none">
                        <SPSWC:InputFormCustomValidator runat="server" id="bdcError"/>
                        <SPSWC:InputFormDropDownList id="bdcServiceApplicationProxiesDropDownList" 
                            SelectMultiple="false"
                            AutoPostBack="true"
                            labelTextLocId="AddContentSource_BdcSettings_SelectServiceApplicationText"
                            runat="server" />
                        <SPSWC:InputFormTable runat="server"><SPSWC:InputFormTableRow runat="server">
                            <SPSWC:InputFormTableData runat="server" width="30">
                            <div style="height:15px"/>
                            </SPSWC:InputFormTableData>
                        </SPSWC:InputFormTableRow></SPSWC:InputFormTable>
                        <SPSWC:InputFormRadioButton runat="server"
                            id="bdcSettingsAllAppsRadioButton"
                            groupName="bdcSettingsAppsButtonGroup"
                            textLocId="AddContentSource_BdcSettings_AllApps_Label"
                            indentedControl="false"
                            checked="true"
                            accessKey="<%$Resources:Microsoft.Office.Server.Search, AddContentSource_CrawlSettings_AccessKey%>"/>
                        <SPSWC:InputFormRadioButton runat="server"
                            id="bdcSettingsSomeAppsRadioButton"
                            groupName="bdcSettingsAppsButtonGroup"
                            textLocId="AddContentSource_BdcSettings_SomeApps_Label"
                            indentedControl="false"
                            checked="false"/>
                        <SPSWC:InputFormTable runat="server"><SPSWC:InputFormTableRow runat="server">
                            <SPSWC:InputFormTableData runat="server" width="30"/>
                            <SPSWC:InputFormTableData runat="server"><SPSWC:InputFormLabel runat="server" id="bdcAppText" visible="false"/></SPSWC:InputFormTableData>
                        </SPSWC:InputFormTableRow></SPSWC:InputFormTable>
                        <SPSWC:InputFormCheckBoxList runat="server" id="bdcSettingsAppList"/>
                    </SPSWC:InputFormDynamicSection>

                </SPSWC:InputFormSectionFieldArea>                            
            </SPSWC:InputFormSection>

            <SPSWC:InputFormSection runat="server">
                <SPSWC:InputFormSectionHelpArea runat="server" TitleLocId="AddContentSource_CrawlSchedules_Text">
                    <SPSWC:InputFormSectionHelpText runat="server" TextLocId="AddContentSource_CrawlSchedulesHelp_Text"/>
                    <SPSWC:InputFormSectionHelpText runat="server" id="continuousCrawlScheduleHelp"/>
                </SPSWC:InputFormSectionHelpArea>    

                <SPSWC:InputFormSectionFieldArea runat="server">

                    <SPSWC:InputFormDynamicSection runat="server" style="display:none" id="spCrawlScheduleOptions">
                        <SPSWC:InputFormRadioButton runat="server"
                            id="spContinuousCrawlRadioButton"
                            GroupName="spCrawlTypeButtonGroup"
                            TextLocId="AddContentSource_EnableContinuousCrawl_Text"
                            IndentedControl="false"
                            Checked="false"/>
                        <SPSWC:InputFormRadioButton runat="server"
                            id="spIncrementalCrawlRadioButton"
                            GroupName="spCrawlTypeButtonGroup"
                            TextLocId="AddContentSource_EnableIncrementalCrawl_Text"
                            IndentedControl="false"
                            Checked="true" />
                    </SPSWC:InputFormDynamicSection>

                    <SPSWC:InputFormDropDownList runat="server" 
                        id="scheduleIncDropDown"
                        onchange="ChangeScheduleDropDown(this, 'inc')"
                        indentedControl="true"
                        labelTextLocId="AddContentSource_ScheduleInc_Text" />
                    <SPSWC:InputFormDynamicSection runat="server" id="incCrawlLinkSection" style="display:block">
                        <SPSWC:InputFormHyperLink runat="server" 
                            textLocId="AddContentSource_ScheduleCreateNewLink_Text"
                            id="incCrawlLink"
                            IndentedControl="true"
                            navigateUrl="#EditSchedule"/>
                    </SPSWC:InputFormDynamicSection>

                    <tr><td height="15px"></td></tr>

                    <SPSWC:InputFormDropDownList runat="server" 
                        id="scheduleFullDropDown"
                        onchange="ChangeScheduleDropDown(this, 'full')"
                        accessKey="<%$Resources:Microsoft.Office.Server.Search, AddContentSource_Schedules_AccessKey%>"
                        indentedControl="true" 
                        labelTextLocId="AddContentSource_ScheduleFull_Text"/>
                    <SPSWC:InputFormDynamicSection runat="server" id="fullCrawlLinkSection" style="display:block">
                        <SPSWC:InputFormHyperLink runat="server" 
                            textLocId="AddContentSource_ScheduleCreateNewLink_Text"
                            id="fullCrawlLink"
                            IndentedControl="true"
                            navigateUrl="#EditSchedule"/>
                    </SPSWC:InputFormDynamicSection>

                </SPSWC:InputFormSectionFieldArea>                         
            </SPSWC:InputFormSection>

            <SPSWC:InputFormSection runat="server" id="CrawlPrioritySection">
                <SPSWC:InputFormSectionHelpArea runat="server" title="<%$Resources:Microsoft.Office.Server.Search, AddContentSource_Priority_Text%>">
                    <SPSWC:InputFormSectionHelpText runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, AddContentSource_PriorityHelp_Text%>"/>
                </SPSWC:InputFormSectionHelpArea>   

                <SPSWC:InputFormSectionFieldArea runat="server">
                    <SPSWC:InputFormDropDownList runat="server"
                        id="priorityDropDown"
                        indentedControl="false" />
                </SPSWC:InputFormSectionFieldArea>
            </SPSWC:InputFormSection>

        </SPSWC:InputForm>
    </td></tr>
    </table>
