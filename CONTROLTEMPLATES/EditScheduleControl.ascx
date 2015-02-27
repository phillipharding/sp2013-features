<%@ Assembly Name="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Search.Internal.UI.WebControls.EditScheduleControl"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<table cellpadding="10" cellspacing="0" border="0" width="100%" height="100%" class="ms-propertysheet"><tr valign="top"><td>
<SPSWC:PageLevelError runat="server" id="pageLevelError"/>

<SPSWC:InputForm runat="server" id="NewInputForm" ShowRequiredText="true">

<SPSWC:InputFormSection runat="server">
    <SPSWC:InputFormSectionHelpArea runat="server" titleLocId="EditSchedule_Type_Label">
        <SPSWC:InputFormSectionHelpText runat="server" textLocId="EditSchedule_TypeHelp_Label"/>
    </SPSWC:InputFormSectionHelpArea> 

    <SPSWC:InputFormSectionFieldArea runat="server">

        <SPSWC:InputFormRadioButton runat="server" 
            id="scheduleDaily" 
            textLocId="EditSchedule_Daily_Label" 
            groupName="scheduleDetails"
            onClick="ResetSections(); Schedule_ShowSection('dailySection')" 
            checked/>
        <SPSWC:InputFormRadioButton runat="server"    
            id="scheduleWeekly" 
            textLocId="EditSchedule_Weekly_Label" 
            groupName="scheduleDetails"
            onClick="ResetSections(); Schedule_ShowSection('weeklySection')"/>
        <SPSWC:InputFormRadioButton runat="server" 
            id="scheduleMonthly" 
            textLocId="EditSchedule_Monthly_Label" 
            groupName="scheduleDetails"
            onClick="ResetSections(); Schedule_ShowSection('monthlySection')"/>
    </SPSWC:InputFormSectionFieldArea>
</SPSWC:InputFormSection>

<SPSWC:InputFormSection runat="server">

    <SPSWC:InputFormSectionHelpArea runat="server" titleLocId="EditSchedule_Settings_Label">
        <SPSWC:InputFormSectionHelpText runat="server" textLocId="EditSchedule_SettingsHelp_Label"/>
    </SPSWC:InputFormSectionHelpArea> 

    <SPSWC:InputFormSectionFieldArea runat="server">

                    <SPSWC:InputFormDynamicSection runat="server" id="dailySection" style="display:none">
            <tr>
            <td>

                <table cellspacing='0' cellpadding='0' border='0'>
                   <tr>
                   <td> 
                    <table cellspacing='0' cellpadding='0' border='0'>
                    <tr valign='top'>
                    <td width="200">
                     <table width="200" cellspacing='0' cellpadding='0' border='0'>
                                    <SPSWC:InputFormLabel runat="server" 
                                        labelTextLocId="EditSchedule_RunEvery_Label"
                                        isRequired="true"/>
                    </table>
                    </td>
                    <td width="500">
                                    <SPSWC:TextBoxLoc runat="server"
                                        id="dailyIntervalText"
                                        width="50"
                                        class="ms-long"
                                        maxLength="3"
                                        text="1"
                                        onKeyPress="return CheckKeyIsNumber()"/>
                                    <SPSWC:LabelLoc runat="server" textLocId="EditSchedule_Days_Label"/>
                    </td>
                    </tr>
                                    <SPSWC:InputFormDynamicSection runat="server" id="dailyIntervalValidator">
                                        <SPSWC:InputFormCustomValidator runat="server" 
                                            display="dynamic"
                                            errorMessageLocId="EditSchedule_Interval_Error"
                                            onServerValidate="DailyIntervalValidation"/>
                                    </SPSWC:InputFormDynamicSection>
                 </table>
                 </td>
                 </tr>

                <tr>
                <td>
                <table cellspacing='0' cellpadding='0' border='0'>
                    <tr valign='top'>
                    <td width="200">
                     <table width="200" cellspacing='0' cellpadding='0' border='0'>
                                    <SPSWC:InputFormLabel runat="server" labelTextLocId="EditSchedule_StartTime_Label"/>
                    </table>
                    </td>
                    <td width="500">
                    <table cellspacing='0' cellpadding='0' border='0' >        
                                    <SPSWC:InputFormDropDownList runat="server" 
                                        width="100" 
                                        id="dailyStartTimeList"
                                        indentedControl="false"/>
                    </table>
                    </td>
                    </tr>
                </table>    
                </td>
                </tr>

                <tr>
                <td >
                    <table cellspacing='0' cellpadding='0' border='0' >    
                    <tr valign='top'>
                    <td colspan="2" >
                    <table cellspacing='0' cellpadding='0' border='0' >    
                                    <SPSWC:InputFormCheckBox runat="server" 
                                        textLocId="EditSchedule_RepeatTask_Label" 
                                        id="dailyRepeatTaskCheck"   
                                        onClick="SetCheckboxBindings(this)"
                                        indentedControl="false"/>
                    </table>
                    </td>
                    </tr>

                    <tr valign='top'>
                    <td width="200" >
                       <table width="200" cellspacing='0' cellpadding='0' border='0' >        
                                    <SPSWC:InputFormLabel runat="server" indentedTextLocId="EditSchedule_TaskInterval_Text"/>
                       </table>    
                    </td>
                    <td width="500">
                                    <SPSWC:TextBoxLoc runat="server"
                                        id="dailyTaskIntervalText"
                                        width="50"
                                        class="ms-long"
                                        maxLength="4"
                                        text="5"
                                        onKeyPress="return CheckKeyIsNumber()"/>
                                    <SPSWC:LabelLoc runat="server" textLocId="EditSchedule_Minutes_Label"/>
                    </td>
                    </tr>

                                    <SPSWC:InputFormDynamicSection runat="server" id="dailyTaskIntervalValidator">
                                        <SPSWC:InputFormRangeValidator runat="server" 
                                            Type="Integer" 
                                            ControlToValidate="dailyTaskIntervalText" 
                                            MinimumValue=1
                                            MaximumValue=1439
                                            errorMessageLocId="EditSchedule_TaskInterval_Error"/>
                                    </SPSWC:InputFormDynamicSection>

                    <tr valign='top'>
                    <td width="200" >
                       <table width="200" cellspacing='0' cellpadding='0' border='0' >        
                                    <SPSWC:InputFormLabel runat="server" indentedTextLocId="EditSchedule_TaskDuration_Text"/>
                       </table>    
                    </td>
                    <td width="500">
                                    <SPSWC:TextBoxLoc runat="server"
                                        id="dailyTaskDurationText"
                                        width="50"
                                        class="ms-long"
                                        maxLength="4"
                                        text="1440"
                                        onKeyPress="return CheckKeyIsNumber()"/>
                                    <SPSWC:LabelLoc runat="server" textLocId="EditSchedule_ForMinutes_Label"/>
                    </td>
                    </tr>

                                    <SPSWC:InputFormDynamicSection runat="server" id="dailyTaskDurationValidator">
                                        <SPSWC:InputFormRangeValidator runat="server" 
                                            Type="Integer" 
                                            ControlToValidate="dailyTaskDurationText" 
                                            MinimumValue=1
                                            MaximumValue=1440
                                            errorMessageLocId="EditSchedule_TaskDuration_Error"/>
                                        <SPSWC:InputFormCustomValidator runat="server" 
                                            display="dynamic"
                                            errorMessageLocId="EditSchedule_RepeatTask_Error"
                                            onServerValidate="RepeatTaskValidation"/>
                                    </SPSWC:InputFormDynamicSection>
                </table>

            </td>
            </tr>
            </table>            
            </td>
            </tr>

                    </SPSWC:InputFormDynamicSection>

                    <SPSWC:InputFormDynamicSection runat="server" id="weeklySection" style="display:none">
            <tr>
            <td >

                <table cellspacing='0' cellpadding='0' border='0' >
                   <tr valign='top'>
                   <td class=>
                    <table cellspacing='0' cellpadding='0' border='0' >
                    <tr valign='top'>
                    <td width="200" >
                     <table width="200" cellspacing='0' cellpadding='0' border='0' >
                                    <SPSWC:InputFormLabel runat="server" 
                                        labelTextLocId="EditSchedule_RunEvery_Label"
                                        isRequired="true"/>
                    </table>
                    </td>
                    <td width="500">
                                    <SPSWC:TextBoxLoc runat="server"
                                        id="weeklyIntervalText"
                                        width="50"
                                        class="ms-long"
                                        maxLength="3"
                                        onKeyPress="return CheckKeyIsNumber()"/>
                                    <SPSWC:LabelLoc runat="server" textLocId="EditSchedule_Weeks_Label"/>
                    </td>
                    </tr>
                                    <SPSWC:InputFormDynamicSection runat="server" id="weeklyIntervalValidator"> 
                                        <SPSWC:InputFormCustomValidator runat="server" 
                                            display="dynamic"
                                            errorMessageLocId="EditSchedule_Interval_Error"
                                            onServerValidate="WeeklyIntervalValidation"/>
                                    </SPSWC:InputFormDynamicSection>
                    </table>
                  </td>
                  </tr>

                      <tr valign='top'>
                  <td >
                  <table cellspacing='0' cellpadding='0' border='0' >
                    <tr valign='top'>
                    <td width="200"  valign='top'>
                     <table width="200" cellspacing='0' cellpadding='0' border='0' valign='top'>
                                    <SPSWC:InputFormLabel runat="server" 
                                        labelTextLocId="EditSchedule_On_Label"
                                        isRequired="true"/>
                    </table>
                    </td>
                    <td width="500">
                  <table cellspacing='0' cellpadding='0' border='0' >
                                    <tr><td><SPSWC:CheckBoxLoc runat="server"
                                                id="weeklyDayMonday" 
                                                textLocId="WeekDay_Monday_Label"/></td></tr>
                                    <tr><td><SPSWC:CheckBoxLoc runat="server" 
                                                id="weeklyDayTuesday"
                                                textLocId="WeekDay_Tuesday_Label"/></td></tr>
                                    <tr><td><SPSWC:CheckBoxLoc runat="server" 
                                                id="weeklyDayWednesday"
                                                textLocId="WeekDay_Wednesday_Label"/></td></tr>
                                    <tr><td><SPSWC:CheckBoxLoc runat="server" 
                                                id="weeklyDayThursday"
                                                textLocId="WeekDay_Thursday_Label"/></td></tr>
                                    <tr><td><SPSWC:CheckBoxLoc runat="server" 
                                                id="weeklyDayFriday"
                                                textLocId="WeekDay_Friday_Label"/></td></tr>
                                    <tr><td><SPSWC:CheckBoxLoc runat="server" 
                                                id="weeklyDaySaturday"
                                                textLocId="WeekDay_Saturday_Label"/></td></tr>
                                    <tr><td><SPSWC:CheckBoxLoc runat="server" 
                                                id="weeklyDaySunday"
                                                textLocId="WeekDay_Sunday_Label"/></td></tr>
                    </table>
                     </td>
                    </tr>
                                    <SPSWC:InputFormDynamicSection runat="server" id="weeklyDayValidator">
                                        <SPSWC:InputFormCustomValidator runat="server" 
                                            display="dynamic"
                                            errorMessageLocId="EditSchedule_DaySelection_Error"
                                            onServerValidate="DaysOfWeekValidation"/>
                                    </SPSWC:InputFormDynamicSection>

                    </table>
                  </td>
                  </tr>

                      <tr>
                  <td >
                  <table cellspacing='0' cellpadding='0' border='0' >
                    <tr valign='top'>
                    <td width="200" >
                     <table width="200" cellspacing='0' cellpadding='0' border='0' >
                                   <SPSWC:InputFormLabel runat="server" labelTextLocId="EditSchedule_StartTime_Label"/>
                    </table>
                    </td>
                    <td width="500">
                    <table cellspacing='0' cellpadding='0' border='0' >
                                    <SPSWC:InputFormDropDownList runat="server" 
                                        width="100" 
                                        id="weeklyStartTimeList"
                                        indentedControl="false"/>
                    </table>
                    </td>
                    </tr>

                    </table>
                  </td>
                  </tr>

                    <tr>
                  <td >
                  <table cellspacing='0' cellpadding='0' border='0' >
                    <tr valign='top'>
                    <td colspan="2" >
                     <table cellspacing='0' cellpadding='0' border='0' >
                                    <SPSWC:InputFormCheckBox runat="server" 
                                        textLocId="EditSchedule_RepeatTask_Label" 
                                        id="weeklyRepeatTaskCheck"
                                        onClick="SetCheckboxBindings(this)"
                                        indentedControl="false"/>
                     </table>    
                    </td>
                    </tr>

                    <tr valign='top'>
                    <td width="200" >
                     <table width="200" cellspacing='0' cellpadding='0' border='0' >
                                    <SPSWC:InputFormLabel runat="server" indentedTextLocId="EditSchedule_TaskInterval_Text"/>
                    </table>
                    </td>
                    <td width="500">
                                    <SPSWC:TextBoxLoc runat="server"
                                        id="weeklyTaskIntervalText"
                                        width="50"
                                        class="ms-long"
                                        maxLength="4"
                                        text="5"
                                        onKeyPress="return CheckKeyIsNumber()"/>
                                    <SPSWC:LabelLoc runat="server" textLocId="EditSchedule_Minutes_Label"/>
                    </td>
                    </tr>
                                    <SPSWC:InputFormDynamicSection runat="server" id="weeklyTaskIntervalValidator">
                                        <SPSWC:InputFormRangeValidator runat="server" 
                                            Type="Integer" 
                                            ControlToValidate="weeklyTaskIntervalText" 
                                            MinimumValue=1
                                            MaximumValue=1439
                                            errorMessageLocId="EditSchedule_TaskInterval_Error"/>
                                    </SPSWC:InputFormDynamicSection>

                    <tr valign='top'>
                    <td width="200" >
                     <table width="200" cellspacing='0' cellpadding='0' border='0' >
                                    <SPSWC:InputFormLabel runat="server" indentedTextLocId="EditSchedule_TaskDuration_Text"/>
                    </table>
                    </td>
                    <td width="500">
                                    <SPSWC:TextBoxLoc runat="server"
                                        id="weeklyTaskDurationText"
                                        width="50"
                                        class="ms-long"
                                        maxLength="4"
                                        text="1440"
                                        onKeyPress="return CheckKeyIsNumber()"/>
                                    <SPSWC:LabelLoc runat="server" textLocId="EditSchedule_ForMinutes_Label"/>
                    </td>
                    </tr>
                                    <SPSWC:InputFormDynamicSection runat="server" id="weeklyTaskDurationValidator">
                                        <SPSWC:InputFormRangeValidator runat="server" 
                                            Type="Integer" 
                                            ControlToValidate="weeklyTaskDurationText" 
                                            MinimumValue=1
                                            MaximumValue=1440
                                            errorMessageLocId="EditSchedule_TaskDuration_Error"/>
                                        <SPSWC:InputFormCustomValidator runat="server" 
                                            display="dynamic"
                                            errorMessageLocId="EditSchedule_RepeatTask_Error"
                                            onServerValidate="RepeatTaskValidation"/>
                                        </SPSWC:InputFormDynamicSection>

                </table>
            </td>
            </tr>
            </table>            
            </td>
            </tr>

                    </SPSWC:InputFormDynamicSection>

                    <SPSWC:InputFormDynamicSection runat="server" id="monthlySection" style="display:none">
            <tr>
            <td >
                    <table cellspacing='0' cellpadding='0' border='0' >

                    <tr valign='top'>
                    <td colspan="2">
                     <table cellspacing='0' cellpadding='0' border='0' >
                      <tr valign='top'>
                      <td>
                         <table cellspacing='0' cellpadding='0' border='0'>    
                                             <SPSWC:InputFormLabel runat="server" 
                                                    labelTextLocId="EditSchedule_On_Label"
                                                    isRequired="true"/>
                            </table>
                      </td>
                      <td>
                          <table cellspacing='0' cellpadding='0' border='0' >
                                                <SPSWC:InputFormDropDownList runat="server"  
                                                    id="monthlyDayList"
                                                    width="50"
                                                    indentedControl="false"/>

                                                <SPSWC:InputFormDynamicSection runat="server" id="monthlyDayValidator">
                                                    <SPSWC:InputFormCustomValidator runat="server" 
                                                        display="dynamic"
                                                        ErrorMessage="<%$Resources:Microsoft.Office.Server.Search, EditSchedule_DatePastEndOfMonthSelection_Error%>"
                                                        onServerValidate="DayOfMonthValidation"/>
                                                </SPSWC:InputFormDynamicSection>
                           </table>
                      </td>
                      </tr>
                       </table>
                    </td>
                    </tr>

                    <tr valign='top'>
                    <td  colspan="2" >
                     <table cellspacing='0' cellpadding='0' border='0' >
                       <tr>    
                        <td  width="120">
                                                <SPSWC:CheckBoxLoc runat="server"
                                                    id="monthlyJanuaryCheck"
                                                    textLocId="Month_January_Label"
                                                   indentedControl="false"/>
                        </td>
                        <td  width="120">
                                                <SPSWC:CheckBoxLoc runat="server"
                                                    id="monthlyMayCheck"
                                                    textLocId="Month_May_Label"
                                                    indentedControl="false"/>
                        </td>
                        <td  width="120">    
                                                <SPSWC:CheckBoxLoc runat="server"
                                                    id="monthlySeptemberCheck"
                                                    textLocId="Month_September_Label"
                                                    indentedControl="false"/>
                        </td>
                          </tr>
                       <tr>    
                        <td>
                                                <SPSWC:CheckBoxLoc runat="server"
                                                    id="monthlyFebruaryCheck"
                                                    textLocId="Month_February_Label"
                                                    indentedControl="false"/>
                        </td>
                        <td >
                                                <SPSWC:CheckBoxLoc runat="server"
                                                    id="monthlyJuneCheck"
                                                    textLocId="Month_June_Label"
                                                    indentedControl="false"/>
                        </td>
                        <td >
                                                <SPSWC:CheckBoxLoc runat="server"
                                                    id="monthlyOctoberCheck"
                                                    textLocId="Month_October_Label"
                                                    indentedControl="false"/>
                        </td>
                          </tr>
                       <tr>    
                        <td >
                                                <SPSWC:CheckBoxLoc runat="server"
                                                    id="monthlyMarchCheck"
                                                    textLocId="Month_March_Label"
                                                    indentedControl="false"/>
                        </td>
                        <td >
                                                <SPSWC:CheckBoxLoc runat="server"
                                                    id="monthlyJulyCheck"
                                                    textLocId="Month_July_Label"
                                                    indentedControl="false"/>
                        </td>
                        <td >
                                               <SPSWC:CheckBoxLoc runat="server"
                                                    id="monthlyNovemberCheck"
                                                    textLocId="Month_November_Label"
                                                    indentedControl="false"/>
                        </td>
                          </tr>
                       <tr>    
                        <td >
                                                <SPSWC:CheckBoxLoc runat="server"
                                                    id="monthlyAprilCheck"
                                                    textLocId="Month_April_Label"
                                                    indentedControl="false"/>
                        </td>
                        <td >
                                                <SPSWC:CheckBoxLoc runat="server"
                                                    id="monthlyAugustCheck"
                                                    textLocId="Month_August_Label"
                                                    indentedControl="false"/>
                        </td>
                        <td >
                                                <SPSWC:CheckBoxLoc runat="server"
                                                    id="monthlyDecemberCheck"
                                                    textLocId="Month_December_Label"
                                                    indentedControl="false"/>
                        </td>
                          </tr>
                       </table>
                    </td>    
                    </tr>
                                                <SPSWC:InputFormDynamicSection runat="server" id="monthlyMonthValidator">
                                                    <SPSWC:InputFormCustomValidator runat="server" 
                                                        display="dynamic"
                                                        errorMessageLocId="EditSchedule_MonthSelection_Error"
                                                        onServerValidate="MonthsOfYearValidation"/>
                                                </SPSWC:InputFormDynamicSection>

                    <tr valign='top'>
                    <td  colspan="2">
                     <table cellspacing='0' cellpadding='0' border='0' >
                        <tr valign='top'>
                      <td width="200" >
                       <table width="200" cellspacing='0' cellpadding='0' border='0' >
                                    <SPSWC:InputFormLabel runat="server" labelTextLocId="EditSchedule_StartTime_Label"/>
                       </table>
                       </td>
                       <td >
                       <table cellspacing='0' cellpadding='0' border='0' >
                                    <SPSWC:InputFormDropDownList runat="server" 
                                        width="100" 
                                        id="monthlyStartTimeList"
                                        indentedControl="false"/>
                       </table>
                       </td>
                       </tr>

                      <tr valign='top'>
                      <td colspan="2" >
                       <table width="200" cellspacing='0' cellpadding='0' border='0' >
                                    <SPSWC:InputFormCheckBox runat="server" 
                                        textLocId="EditSchedule_RepeatTask_Label" 
                                        id="monthlyRepeatTaskCheck"
                                        onClick="SetCheckboxBindings(this)"
                                        indentedControl="false"/>
                      </table>
                      </td>
                      </tr>

                      <tr valign='top'>
                      <td width="200" >
                       <table width="200" cellspacing='0' cellpadding='0' border='0' >
                                    <SPSWC:InputFormLabel runat="server" indentedTextLocId="EditSchedule_TaskInterval_Text"/>
                      </table>
                      </td>
                      <td width="500">
                                    <SPSWC:TextBoxLoc runat="server"
                                        id="monthlyTaskIntervalText"
                                        width="50"
                                        class="ms-long"
                                        maxLength="4"
                                        text="5"
                                        onKeyPress="return CheckKeyIsNumber()"/>
                                    <SPSWC:LabelLoc runat="server" textLocId="EditSchedule_Minutes_Label"/>
                      </td>
                      </tr>

                                    <SPSWC:InputFormDynamicSection runat="server" id="monthlyTaskIntervalValidator">
                                        <SPSWC:InputFormRangeValidator runat="server" 
                                            Type="Integer" 
                                            ControlToValidate="monthlyTaskIntervalText" 
                                            MinimumValue=1
                                            MaximumValue=1439
                                            errorMessageLocId="EditSchedule_TaskInterval_Error"/>
                                    </SPSWC:InputFormDynamicSection>

                    <tr valign='top'>
                    <td width="200" >
                     <table width="200" cellspacing='0' cellpadding='0' border='0' >
                                    <SPSWC:InputFormLabel runat="server" indentedTextLocId="EditSchedule_TaskDuration_Text"/>
                    </table>
                    </td>
                    <td width="500">
                                    <SPSWC:TextBoxLoc runat="server"
                                        id="monthlyTaskDurationText"
                                        width="50"
                                        class="ms-long"
                                        maxLength="4"
                                        text="1440"
                                        onKeyPress="return CheckKeyIsNumber()"/>
                                    <SPSWC:LabelLoc runat="server" textLocId="EditSchedule_ForMinutes_Label"/>
                    </td>
                    </tr>

                                    <SPSWC:InputFormDynamicSection runat="server" id="monthlyTaskDurationValidator">
                                        <SPSWC:InputFormRangeValidator runat="server" 
                                            Type="Integer" 
                                            ControlToValidate="monthlyTaskDurationText" 
                                            MinimumValue=1
                                            MaximumValue=1440
                                            errorMessageLocId="EditSchedule_TaskDuration_Error"/>
                                        <SPSWC:InputFormCustomValidator runat="server" 
                                            display="dynamic"
                                            errorMessageLocId="EditSchedule_RepeatTask_Error"
                                            onServerValidate="RepeatTaskValidation"/>
                                        </SPSWC:InputFormDynamicSection>
                     </td>
                    </table>
            </td>
            </tr>
            </table>            
            </td>
            </tr>
                    </SPSWC:InputFormDynamicSection>

    </SPSWC:InputFormSectionFieldArea>
</SPSWC:InputFormSection>

<SPSWC:InputFormButtonSection runat="server">
    <SPSWC:InputFormButtonAtBottom runat="server" 
        id="cmdOK" 
        OnClick="OnClickOK" 
        TextLocId="Page_OkButton_Text"
        accessKey="<%$Resources:Microsoft.Office.Server.Search, SearchAdmin_Ok_AccessKey%>"/>
    <SPSWC:InputFormButtonAtBottom runat="server" 
        id="cmdCancel"
        OnClick="OnClickCancel" 
        TextLocId="Page_CancelButton_Text"
        accessKey="<%$Resources:Microsoft.Office.Server.Search, SearchAdmin_Cancel_AccessKey%>"/>
</SPSWC:InputFormButtonSection>

</SPSWC:InputForm>

</td></tr>
</table>            

