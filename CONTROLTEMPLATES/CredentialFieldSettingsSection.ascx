<%@ Control Language="C#" Inherits="Microsoft.Office.SharePoint.ClientExtensions.WebControls.CredentialFieldSettingsSection,Microsoft.Office.SharePoint.ClientExtensions,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<script type="text/javascript">
// <![CDATA[
    function GetFieldValues()
    {
        var value = '';
        var form = document.forms.<%=Page.Form.ClientID%>;
        var elemId = form.valueTextBox;
        if (elemId == null)
            return value;
        var len = elemId.length;
        if (len == null) 
        {
                value = elemId.value;
        }
        else
        {
            var count =0;
            for (var i = 0; i < len ; i++)
            {
                if (count != 0)
                {
                    value += ",";
                }
                value+= elemId[i].value;
                count++;
             }
         }
        document.getElementById('fieldValues').value=value;
    }

    function DisableCheckBox(element)
    {
       var selectControlId = element.id;
       var controlInstanceNumber = selectControlId.replace("SelectControl","");

       var isMaskedControlPrefix = "IsMasked";
       var isMaskedControlId = isMaskedControlPrefix.concat(controlInstanceNumber);
       var checkBoxControl = document.getElementById(isMaskedControlId);

       if (checkBoxControl != null)
       {
          if(element.options[element.selectedIndex].value == "Certificate")
          {
              checkBoxControl.checked = false;
              checkBoxControl.disabled = true;
          }
          else
          {
              checkBoxControl.disabled = false;
          }
       }
    }

// ]]>
</script>

    <input type="hidden" runat="server" id="HiddenMaskedSelection" />

    <wssawc:SPGridView AutoGenerateColumns="false" 
        ID="CredentialFieldsGridView"
        Runat="server" AllowSorting="false"
        EnableViewState="false" DataBound="DataBound" 
        EmptyDataText="<%$Resources:obaui, SSSAdmin_TargetAppNoCredentialField%>"
        EmptyDataRowStyle-Font-Size="10pt"
        >
        <Columns>
            <asp:TemplateField 
                HeaderText="<%$Resources:obaui, SSSAdmin_TargetAppCredentialFieldName%>">
                <ItemTemplate><input type="text" 
                        align="top" class="ms-input" 
                        maxlength="256" title="<%=FieldNameTitle%>"
                        name='<%# (string)DataBinder.Eval(Container.DataItem, "textBoxID") %>' 
                        id='<%# (string)DataBinder.Eval(Container.DataItem, "textBoxID") %>' 
                        value='<%# Microsoft.SharePoint.Utilities.SPHttpUtility.HtmlEncode((string) DataBinder.Eval(Container.DataItem, "Name"))%>' 
                /></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField 
                HeaderText="<%$Resources:obaui, SSSAdmin_CredentialFieldType%>">
                <ItemTemplate><select id='<%# (string)DataBinder.Eval(Container.DataItem, "selectControlID") %>'
                            name="DdlCredentialType"
                            title="<%=FieldTypeTitle%>"
                            onchange="javascript:DisableCheckBox(this)" >
<% if( Microsoft.Office.SharePoint.ClientExtensions.WebControls.TargetAppGeneralSettingsSection.IsMultiTargetAppTypeDisabledInSSS() == false) { %>
                        <option value="Generic" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "Generic")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeGeneric%>" EncodeMethod='HtmlEncode'/>
                        </option >
<% } %>
                        <option value="UserName" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "UserName")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeUserName%>" EncodeMethod='HtmlEncode'/>
                        </option >
                        <option value="Password" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "Password")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypePassword%>" EncodeMethod='HtmlEncode'/>
                        </option>
<% if(Microsoft.Office.SharePoint.ClientExtensions.WebControls.TargetAppGeneralSettingsSection.IsMultiTargetAppTypeDisabledInSSS() == false) { %>
                        <option value="Pin" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "Pin")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypePIN%>" EncodeMethod='HtmlEncode'/>
                        </option >
                        <option value="Key" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "Key")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeKey%>" EncodeMethod='HtmlEncode'/>
                        </option>
                        <option value="WindowsUserName" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "WindowsUserName")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeWindowsUserName%>" EncodeMethod='HtmlEncode'/>
                        </option>
                        <option value="WindowsPassword" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "WindowsPassword")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeWindowsPassword%>" EncodeMethod='HtmlEncode'/>
                        </option>
<% } %>
                        <option value="Certificate" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "Certificate")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeCertificate%>" EncodeMethod='HtmlEncode'/>
                        </option>
                        <option value="CertificatePassword" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "CertificatePassword")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeCertificatePassword%>" EncodeMethod='HtmlEncode'/>
                        </option>
                </select></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField 
                HeaderText="<%$Resources:obaui, SSSAdmin_TargetAppCredentialFieldIsMasked%>">
                <ItemTemplate><input type="checkbox"
                        align="top" name="<%# (string)DataBinder.Eval(Container.DataItem, "checkBoxID") %>" title="<%=FieldIsMaskedTitle%>"
                        id="<%# (string)DataBinder.Eval(Container.DataItem, "checkBoxID") %>" ClientIDMode="Static"
                        <%# (bool)DataBinder.Eval(Container.DataItem, "IsMasked")?"checked":""%> /></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField 
                HeaderText="<%$Resources:obaui, SSSAdmin_DeleteApplicationField%>">
                <ItemTemplate><a href="javascript:DeleteField('<%# (string)DataBinder.Eval(Container.DataItem, "ID") %>')"><img src="/_layouts/images/delitem.gif" border="0" title="<%=FieldDeteteTitle%>"/></a></ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <PagerTemplate></PagerTemplate>
    </wssawc:SPGridView>
    <wssawc:SPGridView AutoGenerateColumns="false" 
        ID="CredentialFieldsGridViewEditMode" 
        Runat="server" 
        AllowSorting="false"
        EnableViewState="false" 
        DataBound="DataBound" 
        EmptyDataText="<%$Resources:obaui, SSSAdmin_TargetAppNoCredentialField%>"
        EmptyDataRowStyle-Font-Size="10pt"
        >
        <Columns>
            <asp:TemplateField 
                HeaderText="<%$Resources:obaui, SSSAdmin_TargetAppCredentialFieldName%>">
                <ItemTemplate><input type="text" 
                        align="top" 
                        class="ms-input"
                        maxlength="256" 
                        title="<%=FieldNameTitle%>"
                        disabled="true"
                        name='<%# (string)DataBinder.Eval(Container.DataItem, "textBoxID") %>' 
                        id='<%# (string)DataBinder.Eval(Container.DataItem, "textBoxID") %>' 
                        value='<%# Microsoft.SharePoint.Utilities.SPHttpUtility.HtmlEncode((string) DataBinder.Eval(Container.DataItem, "Name"))%>' /></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField
              HeaderText="<%$Resources:obaui, SSSAdmin_CredentialFieldType%>">
                <ItemTemplate><select id="DdlCredentialType" name="DdlCredentialType" title="<%=FieldTypeTitle%>" disabled="true" onchange="javascript:DisableCheckBox(this)">
<% if( Microsoft.Office.SharePoint.ClientExtensions.WebControls.TargetAppGeneralSettingsSection.IsMultiTargetAppTypeDisabledInSSS() == false) { %>
                        <option value="Generic" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "Generic")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeGeneric%>" EncodeMethod='HtmlEncode'/>
                        </option >
<% } %>
                        <option value="UserName" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "UserName")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeUserName%>" EncodeMethod='HtmlEncode'/>
                        </option >
                        <option value="Password" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "Password")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypePassword%>" EncodeMethod='HtmlEncode'/>
                        </option>
<% if( Microsoft.Office.SharePoint.ClientExtensions.WebControls.TargetAppGeneralSettingsSection.IsMultiTargetAppTypeDisabledInSSS() == false) { %>
                        <option value="Pin" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "Pin")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypePIN%>" EncodeMethod='HtmlEncode'/>
                        </option >
                        <option value="Key" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "Key")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeKey%>" EncodeMethod='HtmlEncode'/>
                        </option>
                        <option value="WindowsUserName" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "WindowsUserName")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeWindowsUserName%>" EncodeMethod='HtmlEncode'/>
                        </option>
                        <option value="WindowsPassword" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "WindowsPassword")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeWindowsPassword%>" EncodeMethod='HtmlEncode'/>
                        </option>
<% } %>
                        <option value="Certificate" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "Certificate")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeCertificate%>" EncodeMethod='HtmlEncode'/>
                        </option>
                        <option value="CertificatePassword" <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "CertificatePassword")?"selected":""%> >
                            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_TypeCertificatePassword%>" EncodeMethod='HtmlEncode'/>
                        </option>
                    </select></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField 
                HeaderText="<%$Resources:obaui, SSSAdmin_TargetAppCredentialFieldIsMasked%>">
                <ItemTemplate><input type="checkbox" 
                        align="top" title="<%=FieldIsMaskedTitle%>"
                        name="<%# (string)DataBinder.Eval(Container.DataItem, "checkBoxID") %>" 
                        id="<%# (string)DataBinder.Eval(Container.DataItem, "checkBoxID") %>"
                        <%# (bool)DataBinder.Eval(Container.DataItem, "IsMasked")?"checked":""%>
                        <%# ((string)DataBinder.Eval(Container.DataItem, "Type") == "Certificate")?"disabled":""%> /></ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <PagerTemplate></PagerTemplate>
    </wssawc:SPGridView>

    <div runat="server" Id="applicationFieldToolBarArea" style="padding-left:6px">
        <wssuc:ToolBar runat="server" Id="applicationFieldManagementToolBar">
            <Template_Buttons>
                <wssuc:ToolBarButton 
                        runat="server"
                        Id="addFieldButton"
                        Text= "<%$Resources:obaui, SSSAdmin_AddApplicationField%>"
                        ToolTip= "<%$Resources:obaui, SSSAdmin_AddApplicationFieldToolTip%>"
                        OnClientClick="return ValidateFieldNumber()"
                        OnClick="AddField"
                        TabIndex=0
                />
            </Template_Buttons>
        </wssuc:ToolBar>
    </div>

