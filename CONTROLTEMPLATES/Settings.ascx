<%@ Control className="SettingsControl" Language="C#" Inherits="Microsoft.Office.Server.WorkManagement.UI.SettingsControl&#44;Microsoft.Office.Server.WorkManagement.UI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="MSSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="~/_controltemplates/15/LinksTable.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="~/_controltemplates/15/InputFormSection.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="~/_controltemplates/15/InputFormControl.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="LinkSection" src="~/_controltemplates/15/LinkSection.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="~/_controltemplates/15/ButtonSection.ascx" %>

    <SPSWC:InputFormButtonSection runat="server">
        <SPSWC:InputFormButtonAtBottom id="saveButtonTop" runat="server" TextLocId="InputFormGridSave_Text" />
        <SPSWC:InputFormButtonAtBottom id="cancelButtonTop" CausesValidation="false" runat="server" TextLocId="Page_CancelButton_Text" />
    </SPSWC:InputFormButtonSection>

<SPSWC:InputForm runat="server" ID="InputForm1" ShowRequiredText="false">
    <SPSWC:InputFormSection runat="server" id="Section1">
        <SPSWC:InputFormSectionHelpArea runat="server">
            <h3 class="ms-standardheader">
                <SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Settings_OldTasksLimit%>" EncodeMethod='HtmlEncode'/>
            </h3>
        </SPSWC:InputFormSectionHelpArea>

        <SPSWC:InputFormSectionFieldArea runat="server" ID="InputFormSectionFieldArea1" >
            <SPSWC:InputFormCheckBox id="enableOldTasksLimit" runat="server" 
                Text="<%$Resources:workmanagement, MyTasksDashboard_Settings_OldTasksLimit_Descr%>"
                indentedcontrol=true
            />
            <SPSWC:InputFormTextBox runat="server" id="oldTasksLimit" />

            <tr><td></td><td>
            <SPSWC:InputFormRangeValidator 
                runat="server"
                id="oldTasksLimitValidator"
                ControlToValidate="oldTasksLimit"
                EnableClientScript="true"
                Type="Integer"
                CssClass="ms-error"
                MinimumValue="1"
                MaximumValue="60"
            />
            </td></tr>
        </SPSWC:InputFormSectionFieldArea>
    </SPSWC:InputFormSection>
    <SPSWC:InputFormSection runat="server" id="Section2">
        <SPSWC:InputFormSectionHelpArea runat="server">
            <h3 class="ms-standardheader">
                <SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Settings_LateAndUpcomingTasks%>" EncodeMethod='HtmlEncode'/>
            </h3>
        </SPSWC:InputFormSectionHelpArea>

        <SPSWC:InputFormSectionFieldArea runat="server" ID="InputFormSectionFieldArea2" >
            <SPSWC:InputFormCheckBox id="enableLateTasks" runat="server" 
                Text="<%$Resources:workmanagement, MyTasksDashboard_Settings_LateAndUpcomingTasks_Descr1%>"
                indentedcontrol=true
            />
            <SPSWC:InputFormTextBox runat="server" id="lateTasks" />
            <tr><td></td><td>
            <SPSWC:InputFormRangeValidator 
                runat="server"
                id="lateTasksValidator"
                ControlToValidate="lateTasks"
                EnableClientScript="true"
                CssClass="ms-error"
                Type="Integer"
                MinimumValue="1"
                MaximumValue="3650"
            />
            </td></tr>

            <SPSWC:InputFormCheckBox id="enableUpcomingTasks" runat="server" 
                Text="<%$Resources:workmanagement, MyTasksDashboard_Settings_LateAndUpcomingTasks_Descr2%>"
                indentedcontrol=true
            />
            <SPSWC:InputFormTextBox runat="server" id="upcomingTasks" />
            <tr><td></td><td>
            <SPSWC:InputFormRangeValidator 
                runat="server"
                id="upcomingTasksValidator"
                ControlToValidate="upcomingTasks"
                EnableClientScript="true"
                CssClass="ms-error"
                Type="Integer"
                MinimumValue="1"
                MaximumValue="3650"
            />
            </td></tr>
        </SPSWC:InputFormSectionFieldArea>
    </SPSWC:InputFormSection>
    <SPSWC:InputFormSection runat="server" id="Section3">
        <SPSWC:InputFormSectionHelpArea runat="server">
            <h3 class="ms-standardheader">
                <SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Settings_ImportantTasks%>" EncodeMethod='HtmlEncode'/>
            </h3>
        </SPSWC:InputFormSectionHelpArea>

        <SPSWC:InputFormSectionFieldArea runat="server" ID="InputFormSectionFieldArea3" >
            <SPSWC:InputFormCheckBox id="enableImportantTasks" runat="server" 
                Text="<%$Resources:workmanagement, MyTasksDashboard_Settings_ImportantTasks_Descr%>"
                indentedcontrol=true
            />
            <SPSWC:InputFormTextBox runat="server" id="importantTasks" />
            <tr><td></td><td>
            <SPSWC:InputFormRangeValidator 
                runat="server"
                id="importantTasksValidator"
                ControlToValidate="importantTasks"
                EnableClientScript="true"
                CssClass="ms-error"
                Type="Integer"
                MinimumValue="1"
                MaximumValue="3650"
            />
            </td></tr>
        </SPSWC:InputFormSectionFieldArea>
    </SPSWC:InputFormSection>
    <SPSWC:InputFormSection runat="server" id="Section4">
        <SPSWC:InputFormSectionHelpArea runat="server">
            <h3 class="ms-standardheader">
                <SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Settings_NewTasks%>" EncodeMethod='HtmlEncode'/>
            </h3>
        </SPSWC:InputFormSectionHelpArea>
        <SPSWC:InputFormSectionFieldArea runat="server" ID="InputFormSectionFieldArea4" >
            <tr><td></td><td>
            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Settings_NewTasks_Descr%>" EncodeMethod='HtmlEncode'/>
            </td></tr>
            <SPSWC:InputFormTextBox runat="server" id="newTasks" />
            <tr><td></td><td>
            <SPSWC:InputFormRangeValidator 
                runat="server"
                id="newTasksValidator"
                ControlToValidate="newTasks"
                EnableClientScript="true"
                CssClass="ms-error"
                Type="Integer"
                MinimumValue="1"
                MaximumValue="30"
            />
            </td></tr>
        </SPSWC:InputFormSectionFieldArea>
    </SPSWC:InputFormSection>
    <SPSWC:InputFormSection runat="server" id="Section5">
        <SPSWC:InputFormSectionHelpArea runat="server">
            <h3 class="ms-standardheader">
                <SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Settings_DefaultTimelineRange%>" EncodeMethod='HtmlEncode'/>
            </h3>
        </SPSWC:InputFormSectionHelpArea>
        <SPSWC:InputFormSectionFieldArea runat="server" ID="InputFormSectionFieldArea5" >
            <SPSWC:InputFormCheckBox id="enableDefaultTimelineRange" runat="server" 
                Text="<%$Resources:workmanagement, MyTasksDashboard_Settings_DefaultTimelineRange_Descr1%>"
                indentedcontrol=true
            />

            <tr><td></td><td>
            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Settings_DefaultTimelineRange_Descr2%>" EncodeMethod='HtmlEncode'/>
            </td></tr>
            <SPSWC:InputFormTextBox runat="server" id="timelineStart" />
            <tr><td></td><td>
            <SPSWC:InputFormRangeValidator 
                runat="server"
                id="timelineStartValidator"
                ControlToValidate="timelineStart"
                EnableClientScript="true"
                CssClass="ms-error"
                Type="Integer"
                MinimumValue="1"
                MaximumValue="3650"
            />
            </td></tr>

            <tr><td></td><td>
            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Settings_DefaultTimelineRange_Descr3%>" EncodeMethod='HtmlEncode'/>
            </td></tr>
            <SPSWC:InputFormTextBox runat="server" id="timelineEnd" />
            <tr><td></td><td>
            <SPSWC:InputFormRangeValidator 
                runat="server"
                id="timelineEndValidator"
                ControlToValidate="timelineEnd"
                EnableClientScript="true"
                CssClass="ms-error"
                Type="Integer"
                MinimumValue="1"
                MaximumValue="3650"
            />
            </td></tr>

        </SPSWC:InputFormSectionFieldArea>
    </SPSWC:InputFormSection>
        <SPSWC:InputFormSection runat="server" id="Section6">
        <SPSWC:InputFormSectionHelpArea runat="server">
            <h3 class="ms-standardheader">
                <SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Settings_HideEmptyFilters%>" EncodeMethod='HtmlEncode'/>
            </h3>
        </SPSWC:InputFormSectionHelpArea>
        <SPSWC:InputFormSectionFieldArea runat="server" ID="InputFormSectionFieldArea6" >
            <SPSWC:InputFormCheckBox id="enableHideEmptyFilters" runat="server" 
                Text="<%$Resources:workmanagement, MyTasksDashboard_Settings_HideEmptyFilters_Descr%>"
                indentedcontrol=true
            />
            <SPSWC:InputFormTextBox runat="server" id="hideEmptyFilters" />
            <tr><td></td><td>
            <SPSWC:InputFormRangeValidator 
                runat="server"
                id="hideEmptyFiltersValidator"
                ControlToValidate="hideEmptyFilters"
                EnableClientScript="true"
                CssClass="ms-error"
                Type="Integer"
                MinimumValue="1"
                MaximumValue="60"
            />
            </td></tr>
        </SPSWC:InputFormSectionFieldArea>
    </SPSWC:InputFormSection>

    <SPSWC:InputFormSection runat="server" id="Section7">
        <SPSWC:InputFormSectionHelpArea runat="server">
            <h3 class="ms-standardheader">
                <SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Settings_Filters%>" EncodeMethod='HtmlEncode'/>
            </h3>
            <SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Settings_Filters_Descr%>" EncodeMethod='HtmlEncode'/>
        </SPSWC:InputFormSectionHelpArea>
        <SPSWC:InputFormSectionFieldArea runat="server" ID="InputFormSectionFieldArea7" >
            <asp:Label ID="noFiltersMsg" runat="server" Text="<%$Resources:workmanagement, MyTasksDashboard_Settings_NoFilters%>" Visible="False" />
            <asp:DataGrid ID="filterGrid" runat="server" AutoGenerateColumns="False" width="600px">
                <Columns>
                    <asp:TemplateColumn HeaderText="<%$Resources:workmanagement, MyTasksDashboard_Settings_Filters_Display%>" >
                        <ItemStyle Width="100px" />
                         <ItemTemplate>
                            <asp:CheckBox id="filterDisplay" runat="server" indentedcontrol="true"/>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$Resources:workmanagement, MyTasksDashboard_Settings_Filters_FilterName%>">
                        <ItemStyle Width="100px" />
                        <ItemTemplate>
                            <asp:Label id="filterName" runat="server" />
                            <input type="hidden" id="filterId" runat="server"/>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$Resources:workmanagement, MyTasksDashboard_Settings_Filters_FilterColor%>">
                        <ItemStyle Width="100px" />
                        <ItemTemplate>
                            <asp:Label style="width:15px;height:15px;display:inline-block" id="filterColor" runat="server" />
                            <input type="hidden" id="filterColorValue" runat="server"/>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$Resources:workmanagement, MyTasksDashboard_Settings_Filters_PositionFromTop%>">
                         <ItemStyle Width="100px" />
                         <ItemTemplate>
                            <asp:DropDownList ID="filterPosition" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
            </asp:DataGrid>
        </SPSWC:InputFormSectionFieldArea>
    </SPSWC:InputFormSection>

    <SPSWC:InputFormButtonSection runat="server">
        <SPSWC:InputFormButtonAtBottom id="saveButtonBottom" runat="server" TextLocId="InputFormGridSave_Text" />
        <SPSWC:InputFormButtonAtBottom id="cancelButtonBottom" CausesValidation="false" runat="server" TextLocId="Page_CancelButton_Text" />
    </SPSWC:InputFormButtonSection>
</SPSWC:InputForm>
