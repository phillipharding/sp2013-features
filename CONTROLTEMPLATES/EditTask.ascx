<%@ Control className="EditTaskControl" Language="C#" Inherits="Microsoft.Office.Server.WorkManagement.UI.EditTaskControl&#44;Microsoft.Office.Server.WorkManagement.UI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="MSSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="~/_controltemplates/15/LinksTable.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="~/_controltemplates/15/InputFormSection.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="~/_controltemplates/15/InputFormControl.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="LinkSection" src="~/_controltemplates/15/LinkSection.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="~/_controltemplates/15/ButtonSection.ascx" %>

<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0">
   <tbody>
   <tr>
      <td nowrap="true" valign="top" style="width:113px;" class="ms-formlabel">
      <h3 class='ms-standardheader'><nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_TaskName_Title%>" EncodeMethod='HtmlEncode'/><span class="ms-formvalidation" > *</span></nobr></h3>
      </td>
      <td valign="top" class="ms-formbody" style="width:350px;">
      <span dir="none">
         <input id='taskName' type='text' class='ms-long'></input>
         <div id='taskNameRequired' class='ms-error' style='display:none' ><SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_TaskName_Required%>" EncodeMethod='HtmlEncode'/></div>
      </span></td>
   </tr>
   <tr>
      <td nowrap="true" valign="top" style="width:113px;" class="ms-formlabel">
      <nobr>
         <h3 class='ms-standardheader'><SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_StartDate_Title%>" EncodeMethod='HtmlEncode'/></h3>
      </nobr> </td>
      <td valign="top" class="ms-formbody" style="width:350px;">
      <span dir="none">
         <div id='startDatePickerPlaceholder'></div>
         <div id='invalidStartDate' class='ms-error' style='display:none' ><SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_StartDate_Invalid%>" EncodeMethod='HtmlEncode'/></div>
      </span></td>
   </tr>
   <tr>
      <td nowrap="true" valign="top" style="width:113px;" class="ms-formlabel">
      <nobr>
         <h3 class='ms-standardheader'><SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_DueDate_Title%>" EncodeMethod='HtmlEncode'/></h3>
      </nobr> </td>
      <td valign="top" class="ms-formbody" style="width:350px;">
      <span dir="none">
         <div id='datePickerPlaceholder'></div>
         <div id='invalidDueDate' class='ms-error' style='display:none' ><SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_DueDate_Invalid%>" EncodeMethod='HtmlEncode'/></div>
      </span></td>
   </tr>
   <tr>
      <td nowrap="true" valign="top" style="width:113px;" class="ms-formlabel">
      <nobr>
         <h3 class='ms-standardheader'><SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Completed_Title%>" EncodeMethod='HtmlEncode'/></h3>
      </nobr> </td>
      <td valign="top" class="ms-formbody" style="width:350px;">
      <span dir="none">
         <input id='taskCompleted' type='checkbox'></input>
      </span></td>
   </tr>
   <tr>
      <td nowrap="true" valign="top" style="width:113px;" class="ms-formlabel">
      <nobr>
         <h3 class='ms-standardheader'><SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Desc_Title%>" EncodeMethod='HtmlEncode'/></h3>
      </nobr> </td>
      <td valign="top" class="ms-formbody" style="width:350px;">
      <span dir="none">
         <textarea id='taskDescription' class='ms-long' style='height:100px;'></textarea>
      </span></td>
   </tr>
   </tbody>
   <tbody id='promoteToPublicSection' style='display:none;'>
   <tr>
      <td nowrap="true" valign="top" style="width:113px;" class="ms-formlabel">
         <nobr>
            <h3 class='ms-standardheader'><SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_Project_Title%>" EncodeMethod='HtmlEncode'/></h3>
         </nobr> 
      </td>
      <td valign="top" class="ms-formbody" style="width:350px;">
         <span dir="none">
            <select id='taskProjects'></select>
         </span>
      </td>
   </tr>
   <tr>
      <td nowrap="true" valign="top" width="190px" class="ms-formlabel">
      </td>
      <td valign="top" class="ms-formbody" width="400px">
         <span dir="none">
            <div><input id='taskIsPublic' type='checkbox' disabled><SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_PromoteToPublic_Description%>" EncodeMethod='HtmlEncode'/></input></div>
            <div id='promoteToPublicError' class='ms-error' style='display:none'><SharePoint:EncodedLiteral runat="server" text="<%$Resources:workmanagement, MyTasksDashboard_PromoteToPublic_Error%>" EncodeMethod='HtmlEncode'/></div>
         </span>
      </td>
   </tr>
   </tbody>
   <tbody>
   <tr>
      <td nowrap="true" valign="top" style="width:113px;" class="ms-formlabel"></td>
      <td valign="top" class="ms-formbody" style="width:350px;">
          <table width="100%" style="padding-top: 7px;" cellSpacing="0" cellPadding="0">
            <tbody>
                <tr>
                    <td width="99%" class="ms-toolbar" noWrap="nowrap">
                        <img width="1" height="18" src="/_layouts/images/blank.gif"></img>
                    </td>
                    <td class="ms-toolbar" noWrap="nowrap">
                        <input type="button" id="saveButton" class="ms-ButtonHeightWidth" Value="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:workmanagement, AWIOP_Button_Save%>' EncodeMethod='HtmlEncode'/>"></input>
                    </td>
                    <td class="ms-separator"></td>
                    <td class="ms-toolbar" noWrap="nowrap">
                        <input type="button" id="cancelButton" class="ms-ButtonHeightWidth" Value="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:workmanagement, AWIOP_Button_Cancel%>' EncodeMethod='HtmlEncode'/>"></input>
                    </td>
                </tr>
            <tbody>
        </table>
    </td>
   </tr>
   </tbody>
</table>

<script>

EnsureScriptFunc('strings.js', 'Strings.STS', function()
{

   var validationElements = document.querySelectorAll('.ms-formvalidation');
   for(e in validationElements)
   {
      validationElements[e].title = Strings.STS.L_RequiredField_Tooltip;
   }
});

</script>
