<%@ Assembly Name="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="Taxonomy" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Osrv" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SPSearchWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Search.Internal.UI.WebControls.FacetedNavigationControl"    compilationMode="Always" %>

<Sharepoint:CssRegistration runat="server" Name="Themable/searchv15.css" /> 
<SharePoint:ScriptLink language="javascript" defer="true" name="start.js" Localizable="false" runat="server" />

<script type="text/javascript">
    // <![CDATA[
    function FacetedNavigationTab_GetInheritanceLabel(inheritanceMode) {
        var label = '';
        switch (inheritanceMode) {
            case Microsoft.SharePoint.Search.FacetedNavigation.InheritanceMode.Custom:
                label = '<%= GetEncodedResourceString("IBFN_FacetedNavigationTab_CustomInheritanceModeLabel")%>';
                break;
            case Microsoft.SharePoint.Search.FacetedNavigation.InheritanceMode.Inherit:
                label = '<%= GetEncodedResourceString("IBFN_FacetedNavigationTab_InheritInheritanceModeLabel")%>';
                break;
            default:
                break;
        }
        return label;
    }

    function FacetedNavigationTab_GetFriendlyManagedTypeName(type) {
        switch (type) {

            case Microsoft.SharePoint.Search.FacetedNavigation.RefinerConfiguration.typeText:
                return '<%= GetEncodedResourceString("ManagedProperty_NameAndType_Type_Text_Label")%>';
            case Microsoft.SharePoint.Search.FacetedNavigation.RefinerConfiguration.typeInteger:
                return '<%= GetEncodedResourceString("ManagedProperty_NameAndType_Type_Integer_Label")%>';
            case Microsoft.SharePoint.Search.FacetedNavigation.RefinerConfiguration.typeDecimal:
                return '<%= GetEncodedResourceString("ManagedProperty_NameAndType_Type_Decimal_Label")%>';
            case Microsoft.SharePoint.Search.FacetedNavigation.RefinerConfiguration.typeDateTime:
                return '<%= GetEncodedResourceString("ManagedProperty_NameAndType_Type_DateAndTime_Label")%>';
            case Microsoft.SharePoint.Search.FacetedNavigation.RefinerConfiguration.typeYesNo:
                return '<%= GetEncodedResourceString("ManagedProperty_NameAndType_Type_YesNo_Label")%>';
            case Microsoft.SharePoint.Search.FacetedNavigation.RefinerConfiguration.typeBinary:
                return '<%= GetEncodedResourceString("ManagedProperty_NameAndType_Type_BinaryData_Label")%>';
            case Microsoft.SharePoint.Search.FacetedNavigation.RefinerConfiguration.typeDouble:
                return '<%= GetEncodedResourceString("ManagedProperty_NameAndType_Type_Double_Label")%>';
            default:
                Srch.U.trace(null, "FacetedNavigationTab_GetFriendlyManagedTypeName", "Unknown type:" + type);
                return type;
        }
    }

    var gFacetedNavigationTab = null;

    function FacetedNavigationTab_registerTab() {
        if (gFacetedNavigationTab) {

            Srch.U.trace(null, "FacetedNavigationTab_registerTab", "Ignoring redundant initialization");
            return;
        }

        gFacetedNavigationTab = new Microsoft.SharePoint.Search.FacetedNavigation.FacetedNavigationTab('FacetedNavigationTab');
        Microsoft.SharePoint.Taxonomy.TermStoreManager.addCustomPropertyTab(gFacetedNavigationTab);
    }

    function EnsureScriptsLoaded(scripts, scriptIndex, continuation) {
        if (scriptIndex < scripts.length) {
            var scriptName = scripts[scriptIndex];
            var jsFileName = scriptName + '.js';
            EnsureScript(jsFileName, TypeofFullName(scriptName), null);
            ExecuteOrDelayUntilScriptLoaded(function () {
                EnsureScriptsLoaded(scripts, scriptIndex + 1, continuation);
            }, jsFileName);
        } else {
            continuation();
        }
    }

    function FacetedNavigationTab_loadSPScript() {
        EnsureScriptsLoaded(['SP',  
                'SP.Taxonomy',
                'TermStoreManager',
                'search.clientcontrols',
                'search.refinementconfiguration',
                'search.refinementconfigurationdialog',
                'search.facetednavigationtab'],
            0,
            FacetedNavigationTab_registerTab);
    }

    _spBodyOnLoadFunctionNames.push('FacetedNavigationTab_loadSPScript');
    // ]]>
</script>
<div class="tmt-ps">
    <!-- TODO : implement or remove this -->
    <div id="divPinnedTermWarning" style="display: none;">
        <p>
            <h5 class="ms-error">
                <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_PinnedTermNotificationText%>" />
            </h5>
        </p>
    </div>
    <div id="divReadonlyTermWarning" style="display: none;">
        <p>
            <h5 class="ms-error">
                <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_ReadonlyTermNotificationText%>" />
            </h5>
        </p>
    </div>
    <div class="ms-srch-facnav-inheritance-section">
        <div style="width: 100%;">
            <h4 class="ms-standardheader ms-sectionheader TmtPropertyName">
                <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_InheritanceSectionTitle%>" />
            </h4>
        </div>
        <!-- This term inherits its refiners from.... -->
        <div id="divTermAncestorsInfo" class="ms-srch-facnav-ancestors-info-container ms-descriptiontext tmt-description">
            <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_DCR_LoadingData%>" />
        </div>
        <!-- Inherit/Stop inheritance buttons -->
        <div class="ms-srch-facnav-inheritance-buttons-container">
            <div id="divStopInheritance" style="width: 100%; display: none;">
                <input type="button" id="btnStopInheritance" class="ms-ButtonHeightWidth ms-srch-facnav-tab-button" value="<%= GetResourceString("IBFN_FacetedNavigationTab_DCR_StopInheritingRefiners")%>" />
            </div>
            <div id="divInherit" style="width: 100%; display: none;">
                <input type="button" id="btnInherit" class="ms-ButtonHeightWidth ms-srch-facnav-tab-button" value="<%= GetResourceString("IBFN_FacetedNavigationTab_DCR_InheritRefiners")%>" />
            </div>
            <div id="divUnknownInheritance" style="width: 100%;">
                <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_DCR_LoadingData%>" />
            </div>
        </div>
        <!-- Term descendants info -->
        <div class="ms-srch-facnav-descendants-info-container ms-descriptiontext tmt-description">
            <div id="divTermDescendantsInfoWaiting" style="height: 100%;">
                <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_DCR_LoadingData%>" />
                <img src="/_layouts/15/images/loadingcirclests16.gif?rev=23" class="ms-srch-facnav-descendants-progress-image" />
            </div>
            <div id="divTermDescendantsInfo" style="height: 100%;">
            </div>
            <div id="divTermDescendantsInfoError" class="ms-error" style="display: none; height: 100%;">
            </div>
        </div>
    </div>
    <div class="ms-srch-facnav-refiners-section">
        <div style="width: 100%;">
            <h4 class="ms-standardheader ms-sectionheader TmtPropertyName">
                <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_RefinersSectionTitle%>" />
            </h4>
        </div>
        <div style="width: 100%;" class="ms-descriptiontext tmt-description">
            <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_DCR_CustomizeRefinersIfYouWant%>" />
        </div>
        <div class="ms-srch-facnav-customize-button-container">
            <div style="width:100%;">
                <input type="button" id="btnCustomizeRefiners" disabled="true" class="ms-ButtonHeightWidth ms-srch-facnav-tab-button"
                    value="<%= GetResourceString("IBFN_FacetedNavigationTab_DCR_CustomizeRefiners")%>" />
            </div>
            <div style="width:100%; margin-top: 5px;">
                <input type="button" id="btnPreviewRefiners" disabled="true" class="ms-ButtonHeightWidth ms-srch-facnav-tab-button"
                value="<%= GetResourceString("IBFN_FacetedNavigationTab_DCR_PreviewRefiners")%>" />
            </div>
        </div>
        <div class="ms-srch-facnav-refiners-info-container">
            <div class="ms-srch-facnav-refiner-list-container">
                <div>
                    <h5 class="ms-standardheader ms-sectionheader TmtPropertyName">
                        <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_DCR_RefinersForThisTermHeader%>" />
                    </h5>
                </div>
                <div style="padding: 5px;">
                    <select id="selectedRefinersListBox" size="10" style="width: 100%;">
                    </select>
                </div>
            </div>
            <div class="ms-srch-facnav-refiner-properties-container">
                <div>
                    <h5 class="ms-standardheader ms-sectionheader TmtPropertyName">
                        <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_DCR_RefinerConfigurationHeader%>" />
                    </h5>
                </div>
                <div>
                    <div id="divCommonRefinerProperties" style="display:none;" class="ms-srch-refiner-property-group">
                        <div class="ms-srch-refiner-property">
                            <div id="refinerTypeLabel" class="ms-srch-refiner-property-value">
                            </div>
                            <div class="ms-srch-refiner-property-header">
                                <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_RefinerTypePrompt%>" />
                            </div>
                        </div>
                        <div class="ms-srch-refiner-property">
                            <div id="refinerAliasesLabel" class="ms-srch-refiner-property-value">
                            </div>
                            <div class="ms-srch-refiner-property-header">
                                 <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_DCR_Aliases%>" />
                            </div>
                        </div>
                        <div class="ms-srch-refiner-property">
                            <div id="refinerDisplayTemplateLabel" class="ms-srch-refiner-property-value">
                            </div>
                            <div style="display:none;">
                                <SPSearchWC:DisplayTemplateDropDown runat="server" id="ddlDisplayTemplateSelector" 
                                    CssClass="tmt-ctrl" AutoPostBack="false" ClientIDMode="Static" TemplateLevel="Filter" 
                                    TargetControlType="Refinement" /> 
                            </div>
                            <div class="ms-srch-refiner-property-header">
                                <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_RefinerDisplayTemplatePrompt%>" />
                            </div>
                        </div>
                    </div>
                    <div id="divTextRefinerProperties" style="display:none;" class="ms-srch-refiner-property-group">
                        <div class="ms-srch-refiner-property">
                            <div id="refinerSortByLabel" class="ms-srch-refiner-property-value">
                            </div>
                            <div class="ms-srch-refiner-property-header">
                                <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_RefinerSortByPrompt%>" />
                            </div>
                        </div>
                        <div class="ms-srch-refiner-property">
                            <div id="refinerSortOrderLabel" class="ms-srch-refiner-property-value">
                            </div>
                            <div class="ms-srch-refiner-property-header">
                                <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_RefinerSortOrderPrompt%>" />
                            </div>
                        </div>
                        <div class="ms-srch-refiner-property">
                            <div id="refinerMaxNumOptionsLabel" class="ms-srch-refiner-property-value">
                            </div>
                            <div class="ms-srch-refiner-property-header">
                                <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_RefinerMaxRefinementOptionsPrompt%>" />
                            </div>
                        </div>
                    </div>
                    <div id="divNumericRefinerProperties" style="display:none;" class="ms-srch-refiner-property-group">
                        <div id="refinerNumericManualIntervals" class="ms-srch-refiner-property-value">
                            <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_RefinementConfigurationDialog_ManualDiscretization%>" />                        
                        </div>
                        <div id="refinerNumericSchemaIntervals" class="ms-srch-refiner-property-value">
                            <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_RefinementConfigurationDialog_UseSchemaDiscretization%>" />                        
                        </div>
                        <div class="ms-srch-refiner-property-header">
                            <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_DCR_IntervalsLabel%>" />
                        </div>
                    </div>
                    <div id="divDateRefinerProperties" style="display:none;" class="ms-srch-refiner-property-group">
                        <div id="refinerDateDefaultIntervals" class="ms-srch-refiner-property-value">
                            <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_RefinementConfigurationDialog_DefaultDateDiscretization%>" />                        
                        </div>
                        <div id="refinerDateSchemaIntervals" class="ms-srch-refiner-property-value">
                            <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_RefinementConfigurationDialog_UseSchemaDiscretization%>" />                        
                        </div>
                        <div class="ms-srch-refiner-property-header">
                            <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_DCR_DatesLabel%>" />
                        </div>
                    </div>
                    <div id="divUnsupportedProperties" style="display:none;" class="ms-srch-refiner-property-group">
                        <div class="ms-srch-refiner-property-value">
                            <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_FacetedNavigationTab_DCR_PropertyTypeUnsupported%>" />                        
                        </div>
                        <div class="ms-srch-refiner-property-header">
                            <asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search,IBFN_RefinementConfigurationDialog_ConfigurationSectionTitle%>" />
                        </div>
                    </div>
                    <div style="clear:both;"> <!-- clear floats -->
                    </div>
                </div>
            </div>
        </div>
    </div>

  <div id="divStopInheritingPopup" style="display:none;">
    <p><SharePoint:EncodedLiteral runat="server" text="<%$Resources:Microsoft.Office.Server.Search, IBFN_FacetedNavigationTab_DCR_StopInheritingPopup%>" EncodeMethod='HtmlEncode'/></p>
    <p><SharePoint:EncodedLiteral runat="server" text="<%$Resources:Microsoft.Office.Server.Search, IBFN_FacetedNavigationTab_DCR_StopInheritingPopupSecondPara%>" EncodeMethod='HtmlEncode'/></p>
    <div style="width:100%;">
        <div class="float-right">
			<input type="button" value="<%= GetResourceString("IBFN_FacetedNavigationTab_DCR_OK_Caption")%>"  onclick="SP.UI.ModalDialog.commonModalDialogClose(SP.UI.DialogResult.OK, null); return false;" class="ms-ButtonHeightWidth" />
			<input type="button" id="btnCancelStopInheritingPopup" value="<%= GetResourceString("IBFN_FacetedNavigationTab_DCR_Cancel_Caption")%>" onclick="SP.UI.ModalDialog.commonModalDialogClose(SP.UI.DialogResult.cancel, null); return false;" class="ms-ButtonHeightWidth" />
        </div>
        <div style="clear:both;">  <!-- clear the float so that the containing divs height is properly computed -->
        </div>
     </div>
  </div>

  <div id="divInheritPopup" style="display:none;">
    <p><SharePoint:EncodedLiteral runat="server" text="<%$Resources:Microsoft.Office.Server.Search, IBFN_FacetedNavigationTab_DCR_InheritPopup%>" EncodeMethod='HtmlEncode'/></p>
    <div style="width:100%;">
        <div class="float-right">
			<input type="button" value="<%= GetResourceString("IBFN_FacetedNavigationTab_DCR_OK_Caption")%>"  onclick="SP.UI.ModalDialog.commonModalDialogClose(SP.UI.DialogResult.OK, null); return false;" class="ms-ButtonHeightWidth" />
			<input type="button" id="btnCancelInheritPopup" value="<%= GetResourceString("IBFN_FacetedNavigationTab_DCR_Cancel_Caption")%>" onclick="SP.UI.ModalDialog.commonModalDialogClose(SP.UI.DialogResult.cancel, null); return false;" class="ms-ButtonHeightWidth" />
        </div>
        <div style="clear:both;">  <!-- clear the float so that the containing divs height is properly computed -->
        </div>
     </div>
  </div>

  <div id="divDescendantsStoppingInheritancePopup" style="display:none;">
    <p><SharePoint:EncodedLiteral runat="server" text="<%$Resources:Microsoft.Office.Server.Search, IBFN_FacetedNavigationTab_DCR_DescendantsStoppingInheritancePopupText%>" EncodeMethod='HtmlEncode'/></p>
    <div id="divTermsStoppingInheritance" class="ms-srch-facnav-terms-stopping-inheritance-container">
        <!-- This is populated by JS code -->
    </div>
    <div style="width:100%;">
        <div class="float-right">
            <input type="button" id="btnCancelTermsStoppingInheritancePopup" value="<%= GetResourceString("IBFN_FacetedNavigationTab_DCR_DescendantsStoppingInheritancePopup_Close")%>"  onclick="SP.UI.ModalDialog.commonModalDialogClose(SP.UI.DialogResult.OK, null); return false;" class="ms-ButtonHeightWidth" />
        </div>
        <div style="clear:both;"> <!-- clear the float so that the containing divs height is properly computed -->
        </div>
    </div>
  </div>
</div>
