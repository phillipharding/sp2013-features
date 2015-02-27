<%@ Control Language="C#" Inherits="Microsoft.Office.SharePoint.ClientExtensions.WebControls.TargetApplicationsSection,Microsoft.Office.SharePoint.ClientExtensions,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<script type="text/javascript">
// <![CDATA[
    var selectOneApplication = 
        "<asp:Literal runat='server' text='<%$Resources:obaui,SSSAdmin_SelectOneTargetApplication%>'/>";
    var selectOneOrMoreApplications = 
        "<asp:Literal runat='server' text='<%$Resources:obaui,SSSAdmin_SelectOneOrMoreTargetApplications%>'/>";
    var cannotSelectMoreThanOneApplication = 
        "<asp:Literal runat='server' text='<%$Resources:obaui,SSSAdmin_CannotSelectMoreThanOneTargetApplication%>'/>";
    var postInProgress = false;
    var deleteConfirmationMessagePattern=  
        "<asp:literal runat='server' text='<%$Resources:obaui, SSSAdmin_DeleteTargetAppConfirmation%>' />";
    var serverBusyMessage=
        "<asp:literal runat='server' text='<%$Resources:obaui, SSSAdmin_ServerBusy%>' />";
    var selectedApplicationNumber = 0;

    function DeleteApplication(id)
    {
        var confirmationMessage = deleteConfirmationMessagePattern;
        if (!postInProgress)
        {
            if (confirm(confirmationMessage))
            {
                 postInProgress=true;
                 __doPostBack('__Page',id);
            }
        }
        else
        {
            window.status = serverBusyMessage;
        }
    }

    function ValidateSelectedApplicationNumber()
    {
        if (selectedApplicationNumber <= 0)
        {
            alert(selectOneApplication);
            return false;
        }
        else if (selectedApplicationNumber > 1)
        {
            alert(cannotSelectMoreThanOneApplication);
            return false;
        }
        return true; 
    }

    function DeleteSelectedApplication()
    {
        var selectedAppIds = GetSelectedApplications(true);
        if (selectedApplicationNumber > 0)
        {
            DeleteApplication(selectedAppIds);
            return true;
        }
        else 
        {
          alert(selectOneOrMoreApplications);
          return false;
        }
    }

    function EditSelectedApplication()
    {
        var selectedAppId = GetSelectedApplications(false);
        if (ValidateSelectedApplicationNumber())
        {
            STSNavigate(
                "<%=ManageTargetApplicationUrl %>" + selectedAppId
                );
        }
        else
        {
            return false;
        }
    }

    function SetCredentials()
    {
        var selectedAppId = GetSelectedApplications(false);
        if (ValidateSelectedApplicationNumber())
        {
            PopUpCredentialPage(selectedAppId, '<%=ServiceAppId%>', true);
        }
        else
        {
            return false;
        }
    }

    function SetPermissions()
    {
        var selectedAppId = GetSelectedApplications(false);
        if (ValidateSelectedApplicationNumber())
        {
            STSNavigate(
                "<%=ManageTargetApplicationClaimUrl %>" + selectedAppId
                );
        }
        else
        {
            return false;
        }
    }

    function dialogCallback(dialogResult, returnValue)
    {
        if (dialogResult == 1)
        {
            STSNavigate("<%=ManageSSSvcApplicationUrl %>");
        }
        else if (isFromRibbon && typeof(SP.Ribbon) != "undefined" && SP.Ribbon && SP.Ribbon.PageManager)
        {
            SP.Ribbon.PageManager.get_instance().restoreFocusToRibbon();
        }

        isFromRibbon = null;
    }

    function GetSelectedApplications(getIndex)
    {
        var value = '';
        var form = document.forms.<%=Page.Form.ClientID%>;
        var elemId = form.principalCheckBox;
        selectedApplicationNumber = 0;

        if (elemId == null)
        {
            selectedApplicationNumber = 0;
            return value;
        }

        var len = elemId.length;
        if (len == null) 
        {
            if  (elemId.checked)
            {
                selectedApplicationNumber = 1;
                if (getIndex == true)
                {
                  value = document.getElementById(elemId.value).value;
                }
                else
                {
                  value = elemId.value;
                }
            }
        }
        else
        {
            for (var i = 0; i < len ; i++)
            {
                if (elemId[i].checked)
                {
                    if (selectedApplicationNumber != 0)
                    {
                        value += ",";
                    }

                    if (getIndex == true)
                    {
                      value+= document.getElementById(elemId[i].value).value;
                    }
                    else 
                    {
                      value+= elemId[i].value;
                    }
                    selectedApplicationNumber++;
                }
             }

         }
        return value;
    }

    var selected = true;
    function ToggleSelection()
    {
        var checkBoxes = document.forms.<%=Page.Form.ClientID%>.principalCheckBox;

        if (checkBoxes.length == undefined)
        {
            checkBoxes.checked=selected;
        }
        else 
        {
            for (var i=0; i < checkBoxes.length;i++)
            {
                checkBoxes[i].checked = selected;
            }
        }

        selected=!selected;
    }
// ]]>
</script>

    <wssawc:SPGridView AutoGenerateColumns="false" 
        ID="targetApplicationGridView" 
        Runat="server" AllowSorting="true" OnSorting="Sort"
        PageSize="100"
        AllowPaging="true"
        EnableViewState="false" DataBound="DataBound" 
        EmptyDataText="<%$Resources:obaui, SSSAdmin_NoTargetApplication%>"
        EmptyDataRowStyle-Font-Size="10pt"
        >
        <Columns>
            <asp:TemplateField HeaderStyle-CssClass="ms-vh-icon" ItemStyle-CssClass="ms-vb-itmcbx" >
              <HeaderTemplate><input type="checkbox" name="checkall" onclick="ToggleSelection();" title="<%=SelectAllTooltip %>"/></HeaderTemplate>
              <ItemTemplate><input type="checkbox" 
                      align="top"
                      name="principalCheckBox"
                      id="checkBox" 
                      value='<%# (string) DataBinder.Eval(Container.DataItem, "IDEncoded")%>'
                /><Input type="hidden" 
                      id='<%# (string) DataBinder.Eval(Container.DataItem, "IDEncoded") %>' 
                      name="appName" 
                      value="<%# Microsoft.SharePoint.Utilities.SPHttpUtility.HtmlEncode((string) DataBinder.Eval(Container.DataItem, "Index"))%>"
                /></ItemTemplate>
            </asp:TemplateField>
            <wssawc:SPMenuField 
                HeaderText="<%$Resources:obaui, SSSAdmin_TargetApplicationID%>"
                MenuTemplateId="targetApplicationMenu" 
                TextFields="ID" 
                NavigateUrlFields = "Url"
                TokenNameAndValueFields = "Index=Index,IDEncoded=IDEncoded,Name=Name,Url=Url,PUrl=PermissionUrl,SAId=SAId"
                SortExpression="ID"
                >
                <ItemStyle Width=30%></ItemStyle>
            </wssawc:SPMenuField>

            <asp:BoundField 
                HeaderText="<%$Resources:obaui, SSSAdmin_TargetApplicationTypeColumn%>" 
                DataField="Type" 
                SortExpression="Type"/>
            <asp:BoundField 
                HeaderText="<%$Resources:obaui, SSSAdmin_TargetApplicationName%>" 
                DataField="Name" 
                SortExpression="Name"/>
        </Columns>
        <PagerTemplate></PagerTemplate>
    </wssawc:SPGridView>
    <div width="100%" align="center" class="ms-bottompaging">
        <wssawc:SPGridViewPager GridViewId="targetApplicationGridView" runat="server" />
    </div>
<%--The page use this control should define the menu template with Id equal to targetApplicationMenu.
See an example in ManageSSSvcApplication.aspx.pp
--%>
