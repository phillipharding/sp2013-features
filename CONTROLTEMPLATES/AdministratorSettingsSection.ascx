<%@ Control Language="C#" Inherits="Microsoft.Office.SharePoint.ClientExtensions.WebControls.AdministratorSettingsSection,Microsoft.Office.SharePoint.ClientExtensions,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<script type="text/javascript">
    // <![CDATA[
    _spBodyOnLoadFunctionNames.push("DisplayAdminDisclaimer");
    function DisplayAdminDisclaimer() {
        var disclaimer = document.getElementById("AdminDisclaimerWarning"); 
        if ("<%=IsPartitioned%>" == "True")
        {
            disclaimer.style.display = 'none';
        }
        else
        {
            disclaimer.style.display = '';
        }
    }
    // ]]>
</script>

    <wssuc:InputFormSection runat="server" 
        Title="<%$Resources:obaui, SSSAdmin_TargetAppAdmins%>"
        id="idAdminMembers">
        <Template_Description>
            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TargetAppAdminsDescription%>" EncodeMethod='HtmlEncode' Id='TargetAppAdminDescription'/>
        </Template_Description>
        <Template_InputFormControls>
            <wssuc:InputFormControl runat="server" >
                <Template_Control>
                    <wssawc:PeopleEditor 
                            AllowEmpty="false"
                            ValidatorEnabled="true"
                            id="administratorPicker" 
                            runat="server" 
                            SelectionSet="User,SecGroup" 
                            ForceClaims="true"
                            width='400px'
                            title="<%$Resources:obaui, SSSAdmin_ApplicationAdminPickerTitle%>" />
                    <br />
                    <div id="AdminDisclaimerWarning" style="color:red;display:none">
                        <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_ApplicationAdminDisclaimer%>" EncodeMethod='HtmlEncode'/>
                    </div>
                </Template_Control>
            </wssuc:InputFormControl>
        </Template_InputFormControls>
    </wssuc:InputFormSection>

    <wssuc:InputFormSection runat="server" 
        Title="<%$Resources:obaui, SSSAdmin_TargetAppMembers%>"
        id="idGroupMembers"
        Description="<%$Resources:obaui, SSSAdmin_TargetAppMembersDescription%>">
        <Template_InputFormControls>
            <wssuc:InputFormControl runat="server" >
                <Template_Control>
                <wssawc:PeopleEditor 
                        AllowEmpty=false
                        ValidatorEnabled="true"
                        id="groupPicker" 
                        runat="server" 
                        SelectionSet="User,SecGroup" 
                        ForceClaims="true"
                        width='400px'
                        title="<%$Resources:obaui, SSSAdmin_GroupPickerTitle%>" />
                </Template_Control>
            </wssuc:InputFormControl>
        </Template_InputFormControls>
    </wssuc:InputFormSection>

    <wssuc:InputFormSection runat="server" 
        Title="<%$Resources:obaui, SSSAdmin_TargetAppTicketRedeemers%>"
        id="idTicketRedeemers"
        Description="<%$Resources:obaui, SSSAdmin_TargetAppTicketRedeemersDescription%>">
        <Template_InputFormControls>
            <wssuc:InputFormControl runat="server" >
                <Template_Control>
                    <wssawc:PeopleEditor 
                            AllowEmpty=false
                            ValidatorEnabled="true"
                            id="ticketRedeemerPicker" 
                            runat="server" 
                            SelectionSet="User,SecGroup" 
                            ForceClaims="true"
                            width='400px'
                            title="<%$Resources:obaui, SSSAdmin_TickerRedeemerPickerTitle%>" />
                </Template_Control>
            </wssuc:InputFormControl>
        </Template_InputFormControls>
    </wssuc:InputFormSection>
