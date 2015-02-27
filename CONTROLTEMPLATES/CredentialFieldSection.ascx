<%@ Control Language="C#" Inherits="Microsoft.Office.SharePoint.ClientExtensions.WebControls.CredentialFieldSection,Microsoft.Office.SharePoint.ClientExtensions,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<Sharepoint:ScriptBlock runat="server">
    _spBodyOnLoadFunctionNames.push("SetFocus");
    function SetFocus() {
        var initialControl = (document.getElementById("<%= FirstFieldId %>"));
        if (initialControl != null) {
            initialControl.focus();
        }
    }

    function cancelBack()
    {
        if ((event.keyCode == 8 ||
            (event.keyCode == 37 && event.altKey) ||
            (event.keyCode == 39 && event.altKey))
            &&
            (event.srcElement.form == null || event.srcElement.isTextEdit == false)
            )
        {
            event.cancelBubble = true;
            event.returnValue = false;
        }
    }
</Sharepoint:ScriptBlock>

<wssawc:SPGridView AutoGenerateColumns="false" 
    ID="targetAppFieldGridView" 
    Runat="server" AllowSorting="false"
    EnableViewState="false" DataBound="DataBound" 
    EmptyDataText="<%$Resources:obaui, SSSAdmin_NoTargetAppField%>">
    <Columns>
        <%--Bug fix 2766752: htmlencode = "false"--%>
        <asp:BoundField HeaderText="<%$Resources:obaui, SSSAdmin_TargetAppFieldName%>" DataField="Name" htmlencode="false">
          <ItemStyle font-bold />
        </asp:BoundField>
        <asp:TemplateField HeaderText="<%$Resources:obaui, SSSAdmin_TargetAppFieldValue%>">
            <ItemTemplate><INPUT type="<%# GetFieldType(Container.DataItem) %>" 
                    size="55" 
                    name="<%# (string)DataBinder.Eval(Container.DataItem, "textBoxID") %>"
                    id="<%# (string)DataBinder.Eval(Container.DataItem, "textBoxID") %>"
                    maxLength="256" 
                    class="ms-input"
                    onkeydown="cancelBack()"
                    title = "<%# (string)DataBinder.Eval(Container.DataItem, "title") %>"
                    value="<%# Microsoft.SharePoint.Utilities.SPHttpUtility.HtmlEncode((string) DataBinder.Eval(Container.DataItem, "Value"))%>" 
                /><INPUT type="file"
                    size="54"
                    id="certificateFile" 
                    Title='<%# (string)DataBinder.Eval(Container.DataItem, "title") %>'
                    runat="server"
                    class="ms-fileinput"
                    onkeydown="cancelBack()"
                    visible="<%# IsCertificateTypeCredentials(Container.DataItem) %>"
                /><div id="<%# (string)DataBinder.Eval(Container.DataItem, "warningID") %>" style="color:red;display:none">
                    <SharePoint:EncodedLiteral runat="server" text="<%$Resources:obaui, SSSAdmin_ConfirmFieldValueMismatchError%>" EncodeMethod='HtmlEncode'/>
                </div></ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <PagerTemplate></PagerTemplate>
</wssawc:SPGridView>
<wssawc:InputFormCustomValidator ID="CusValMaskedFieldValue"
    OnServerValidate="ValidateFieldsValue"
    runat="server"  />
