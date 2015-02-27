<%@ Assembly Name="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Search.Internal.UI.WebControls.EditQueryClientTypesControl"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<div class = "ms-descriptiontext" style="padding-bottom: 10px;">
   <asp:Literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search, EditQueryClientTypes_Description_Label%>"/><br/>
   <br/>
</div>

<table border="0" cellspacing="0" cellpadding="0" class="ms-propertysheet" width="100%">
    <tr><td>

        <asp:Label runat="server" id="pageLevelError" foreColor="Red"/>

        <wssuc:InputFormSection runat="server" title="<%$Resources:Microsoft.Office.Server.Search, EditQueryClientTypes_ClientTypeName_Label%>" description="<%$Resources:Microsoft.Office.Server.Search, EditQueryClientTypes_ClientTypeNameHelp_Label%>">
            <Template_InputFormControls>
                <wssuc:InputFormControl runat="server">
                    <Template_LabelText>
                        <asp:Literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search, EditQueryClientTypes_ClientTypeName_TextBoxLabel%>"/><font color="red">*</font>
                    </Template_LabelText> 
                    <Template_control>
                        <wssawc:InputFormTextBox title="<%$Resources:Microsoft.Office.Server.Search, EditQueryClientTypes_ClientTypeName_Label%>" CssClass="ms-input" ID="clientTypeNameTextBox" Columns="35" Runat="server" AutoPostBack="false" MaxLength=64 />
                        <wssawc:InputFormRequiredFieldValidator runat="server"
                            id="clientTypeNameRequiredValidator"
                            controlToValidate="clientTypeNameTextBox"
                            foreColor="red"
                            display="dynamic"/>
                        <wssawc:InputFormCustomValidator runat="server"
                            id="clientTypeNameValidator"
                            controlToValidate="clientTypeNameTextBox"
                            foreColor="red"/>
                    </Template_control>
                </wssuc:InputFormControl>
            </Template_InputFormControls>
        </wssuc:InputFormSection>

        <wssuc:InputFormSection runat="server" title="<%$Resources:Microsoft.Office.Server.Search, EditQueryClientTypes_Tier_Label%>" description="<%$Resources:Microsoft.Office.Server.Search, EditQueryClientTypes_TierHelp_Label%>">
            <Template_InputFormControls>
                <wssuc:InputFormControl runat="server">
                    <Template_control>
                        <asp:DropDownList runat="server" id="throttlingTiersDropDownList" toolTip="<%$Resources:Microsoft.Office.Server.Search, EditQueryClientTypes_TierHelp_Label%>">
                            <asp:ListItem selected="false" value="Top" text="<%$Resources:Microsoft.Office.Server.Search, QueryThrottling_Tier_Label_Top%>"/>
                            <asp:ListItem selected="false" value="Middle" text="<%$Resources:Microsoft.Office.Server.Search, QueryThrottling_Tier_Label_Middle%>"/>
                            <asp:ListItem selected="false" value="Bottom" text="<%$Resources:Microsoft.Office.Server.Search, QueryThrottling_Tier_Label_Bottom%>"/>
                       </asp:DropDownList>
                    </Template_control>
                </wssuc:InputFormControl>
            </Template_InputFormControls>
        </wssuc:InputFormSection>

        <wssuc:ButtonSection runat="server" id="bottomButtonSection" showStandardCancelButton="false">
            <Template_Buttons>
                <asp:Button runat="server" class="ms-ButtonHeightWidth" OnClick="OnOkay" Text="<%$Resources:wss,multipages_okbutton_text%>" id="bottomOkayButton" accesskey="<%$Resources:wss,okbutton_accesskey%>" CausesValidation="true"/>
                <asp:Button runat="server" class="ms-ButtonHeightWidth" OnClick="OnCancel" Text="<%$Resources:wss,multipages_cancelbutton_text%>" id="bottomCancelButton" accesskey="<%$Resources:wss,cancelbutton_accesskey%>" CausesValidation="false"/>
            </Template_Buttons>
        </wssuc:ButtonSection>

        <wssawc:InputFormTextBox runat="server" id="hiddenClientTypeIdTextBox" style="display:none"/>
    </td></tr>
</table>
