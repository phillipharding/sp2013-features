<%@ Assembly Name="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Search.Internal.UI.WebControls.EditQueryConditionControl"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

    <div id="conditionSeparator" runat="server" style="display:none">
        <br />

        <table border="0" cellspacing="0" cellpadding="0" class="ms-propertysheet" width="100%">
            <tr>
                <td width="40%"><hr /></td>
                <td align="center" runat="server"><asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_OR_Label%>" /></td>
                <td width="40%"><hr /></td>
            </tr>
        </table>
        <br />
    </div>

    <asp:DropDownList ID="conditionType" 
        class="ms-eqrconditionctrl"
        runat="server" 
        ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_Type_Tooltip%>"
        />

        <div Id="MatchKeyword" runat="server" class="ms-eqrsubsectionindent">

            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_QueryPhrases_Label%>"/>
            <br/>

            <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_QueryPhrases_Label%>" CssClass="ms-input ms-eqrconditionctrl" ID="queryPhrases" Columns="35" Runat="server" AutoPostBack="false" />
            <wssawc:InputFormRequiredFieldValidator ID="queryPhrasesVal" ControlToValidate="queryPhrases" Display="Dynamic" Runat="server"
                ForeColor="red"/>
        </div>

        <div Id="MatchDictionary" runat="server" style="display:none" class="ms-eqrsubsectionindent">

            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_EntryInDictionary_Label%>"/>
            <br />

            <SEARCHWC:AdSearchDropDownList 
                Id="dictionaryDropDown" 
                runat="server" 
                class="ms-eqrconditionctrl"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_Dictionary_Tooltip%>"
                />
            <br/>
            <div>
                <asp:Label runat="server" Id="invalidDictError" ForeColor="red" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryRule_ChooseDictionaryMessage%>" style="display:none"/>
            </div>
            <div>
                <asp:Label runat="server" Id="peopleDictDescr" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_PeopleNameDictionaryDescr_Label%>"/>
            </div>

            <asp:LinkButton runat="server" 
                id="pickTaxonomyDict" 
                Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_ImportFromTaxonomy_Link%>" 
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_ImportFromTaxonomy_Link%>" 
                CausesValidation="false"
            />
        </div>

        <div Id="MatchActionTerm" runat="server" style="display:none" class="ms-eqrsubsectionindent">

            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_MatchActionTerm_Description_Label%>" />
            <br />

            <SharePoint:RadioButtonWithChildren 
                Id="actionTermInText"
                Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_ActionTermsText_Label%>"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_ActionTermsText_Label%>"
                Checked="true" 
                GroupName="actionTermGroup" 
                CausesValidation="false"
                AutoPostBack="false"
                runat="server"
                Options="DisableChildWhenNotSelected">
                <Template_ChildControl>
                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_ActionTermText_Label%>" CssClass="ms-input ms-eqrconditionctrl" ID="actionTerms" Columns="35" Runat="server" AutoPostBack="false" />

                    <wssawc:InputFormRequiredFieldValidator ID="actionTermsVal" ControlToValidate="actionTerms" Display="Dynamic" Runat="server"
                        ForeColor="red"/>
                </Template_ChildControl>
            </SharePoint:RadioButtonWithChildren>

            <SharePoint:RadioButtonWithChildren 
                Id="actionTermInDict"
                Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_ActionTermsDict_Label%>"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_ActionTermsDict_Label%>"
                Checked="false" 
                GroupName="actionTermGroup" 
                CausesValidation="false"
                AutoPostBack="false"
                runat="server"
                Options="DisableChildWhenNotSelected">
                <Template_ChildControl>
                    <SEARCHWC:AdSearchDropDownList 
                        Id="actionTermDict" 
                        runat="server" 
                        class="ms-eqrconditionctrl" 
                        ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_Dictionary_Tooltip%>"
                    /> 
                    <br/>
                    <div>
                        <asp:Label runat="server" Id="invalidActionDictError" ForeColor="red" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryRule_ChooseDictionaryMessage%>" style="display:none"/>
                    </div>

                    <asp:LinkButton runat="server" 
                        id="pickTaxonomyTerm" 
                        Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_ImportFromTaxonomy_Link%>" 
                        ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_ImportFromTaxonomy_Link%>" 
                        CausesValidation="false"
                    />
                    <br/>
                </Template_ChildControl>
            </SharePoint:RadioButtonWithChildren>

        </div>

        <div Id="CommonInSource" runat="server" style="display:none" class="ms-eqrsubsectionindent">

            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_CommonInSource_Label%>"/>
            <br />

            <asp:DropDownList ID="sourcesDropDown" 
                runat="server" 
                class="ms-eqrconditionctrl"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_CommonInSource_Tooltip%>"
             />
            <div>
                <asp:Label runat="server" Id="invalidSourceError" ForeColor="red" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryRule_ChooseResultSourceMessage%>" style="display:none"/>
            </div>
        </div>

        <div Id="CommonClick" runat="server" style="display:none" class="ms-eqrsubsectionindent">

            <asp:Literal runat="server" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_CommonClickedResultType_Label%>" />
            <br />

            <asp:DropDownList 
                Id="resultTypesDropDown" 
                runat="server" 
                class="ms-eqrconditionctrl"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_ResultType_Tooltip%>"
            />
            <div>
                <asp:Label runat="server" Id="invalidResultTypeError" ForeColor="red" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryRule_ChooseResultTypeMessage%>" style="display:none"/>
            </div>
        </div>

        <div Id="AdvancedMatch" runat="server" style="display:none" class="ms-eqrsubsectionindent">

            <SharePoint:RadioButtonWithChildren 
                Id="matchRegexRadioAdv"
                Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_QueryRegEx_Label%>"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_QueryRegEx_Label%>"
                Checked="true" 
                GroupName="advMatchGroup" 
                CausesValidation="false"
                AutoPostBack="false"
                runat="server"
                Options="DisableChildWhenNotSelected">
                <Template_ChildControl>
                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_QueryRegEx_Label%>" CssClass="ms-input ms-eqrconditionctrl" ID="queryMatchRegexAdv" Columns="35" Runat="server" AutoPostBack="false" />

                    <wssawc:InputFormRequiredFieldValidator ID="queryMatchRegexAdvVal" ControlToValidate="queryMatchRegexAdv" Display="Dynamic" Runat="server"
                        ForeColor="red"/>
                    <asp:Label runat="server" Id="invalidRegexError" ForeColor="Red" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_InvalidRegularExpression%>" style="display:none"/>
                </Template_ChildControl>
            </SharePoint:RadioButtonWithChildren>

            <SharePoint:RadioButtonWithChildren 
                Id="matchPhraseRadioAdv"
                Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_AdvQueryPhrases_Label%>"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_AdvQueryPhrases_Label%>"
                Checked="false" 
                GroupName="advMatchGroup" 
                CausesValidation="false"
                AutoPostBack="false"
                runat="server"
                Options="DisableChildWhenNotSelected">
                <Template_ChildControl>
                    <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_AdvQueryPhrases_Label%>" CssClass="ms-input ms-eqrconditionctrl" ID="queryPhrasesAdv" Columns="35" Runat="server" AutoPostBack="false" />

                    <wssawc:InputFormRequiredFieldValidator ID="queryPhrasesAdvVal" ControlToValidate="queryPhrasesAdv" Display="Dynamic" Runat="server"
                        ForeColor="red"/>
                </Template_ChildControl>
            </SharePoint:RadioButtonWithChildren>

            <SharePoint:RadioButtonWithChildren 
                Id="termInDictRadioAdv"
                Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_AdvEntryInDictionary_Label%>"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_AdvEntryInDictionary_Label%>"
                Checked="false" 
                GroupName="advMatchGroup" 
                CausesValidation="false"
                AutoPostBack="false"
                runat="server"
                Options="DisableChildWhenNotSelected">
                <Template_ChildControl>
                    <SEARCHWC:AdSearchDropDownList 
                        Id="dictionaryDropDownAdv" 
                        runat="server" 
                        class="ms-eqrconditionctrl"
                        ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_Dictionary_Tooltip%>"
                    />
                    <br/>

                    <div>
                        <asp:Label runat="server" Id="invalidAdvDictError" ForeColor="red" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryRule_ChooseDictionaryMessage%>" style="display:none"/>
                    </div>

                    <div>
                        <asp:Label runat="server" Id="peopleDictDescrAdv" Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_PeopleNameDictionaryDescr_Label%>"/>
                    </div>

                    <asp:LinkButton runat="server" 
                        id="pickTaxonomyDictAdv" 
                        Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_ImportFromTaxonomy_Link%>" 
                        ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_ImportFromTaxonomy_Link%>" 
                        CausesValidation="false"
                    />

                </Template_ChildControl>
            </SharePoint:RadioButtonWithChildren>

            <br/>

            <span Id="matchEntireQueryAdvSec" runat="server">
                <asp:CheckBox runat="server"
                    id="matchEntireQueryAdv"
                    Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_MatchEntireQuery_Text%>" 
                    ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_MatchEntireQuery_Text%>" 
                    checked="true"
                    />
                <br/>
            </span>

            <span Id="matchQueryStartAdvSec" runat="server">
                <asp:CheckBox runat="server"
                    id="matchQueryStartAdv"
                    Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_MatchQueryStart_Text%>" 
                    ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_MatchQueryStart_Text%>" 
                    checked="false"
                    />
                <br/>
            </span>

            <span Id="matchQueryEndAdvSec" runat="server">
                <asp:CheckBox runat="server"
                    id="matchQueryEndAdv"
                    Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_MatchQueryEnd_Text%>" 
                    ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_MatchQueryEnd_Text%>" 
                    checked="false"
                    />
                <br/>
            </span>

            <br/>

            <span Id="assignAllToSubjectAdvSec" runat="server">
                <asp:RadioButton
                    Id="assignAllToSubjectAdv"
                    Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_AssignAllToSubject_Text%>"
                    ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_AssignAllToSubject_Text%>"
                    Checked="true" 
                    GroupName="assignMatchAdvGroup" 
                    CausesValidation="false"
                    runat="server" />
                <br/>
            </span>
            <span Id="assignToSubjectActionAdvSec" runat="server">
                <asp:RadioButton
                    Id="assignToSubjectActionAdv"
                    Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_AssignToSubjectAction_Text%>"
                    ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_AssignToSubjectAction_Text%>"
                    Checked="false" 
                    GroupName="assignMatchAdvGroup" 
                    CausesValidation="false"
                    runat="server" />
                <br/>
            </span>
            <span Id="assignToActionSubjectAdvSec" runat="server">
                <asp:RadioButton
                    Id="assignToActionSubjectAdv"
                    Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_AssignToActionSubject_Text%>"
                    ToolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_AssignToActionSubject_Text%>"
                    Checked="false" 
                    GroupName="assignMatchAdvGroup" 
                    CausesValidation="false"
                    runat="server" />
                <br/>
            </span>
        </div>

    <div class="ms-eqrsubsectionspace">

        <asp:LinkButton runat="server" 
            Id="removeCondition"
            Text="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_RemoveCondition_Link%>" 
            Tooltip="<%$Resources:Microsoft.Office.Server.Search, EditQueryCondition_RemoveCondition_Link%>"
            CausesValidation="False"
            />
        <br/>

        <asp:HiddenField runat="server" id="dictPersist"/>
        <asp:HiddenField runat="server" id="dictSelected"/>

        <asp:HiddenField runat="server" id="actionPersist"/>
        <asp:HiddenField runat="server" id="actionSelected"/>

        <asp:HiddenField runat="server" id="dictPersistAdv"/>
        <asp:HiddenField runat="server" id="dictSelectedAdv"/>

        <asp:HiddenField runat="server" id="editConditionIdHidden"/>
        <asp:HiddenField runat="server" id="dictHidden"/>
        <asp:HiddenField runat="server" id="dictAdvHidden"/>
        <asp:HiddenField runat="server" id="captureGroupsHidden"/>
    </div>
