<%@ Page language="C#" MasterPageFile="~masterurl/default.master"      %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WorkflowServices" Namespace="Microsoft.SharePoint.WorkflowServices.ApplicationPages" Assembly="Microsoft.SharePoint.WorkflowServices.ApplicationPages, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Workflow" Namespace="Microsoft.SharePoint.Workflow" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:osfserver, wfinitform_pagetitle%>" EncodeMethod='HtmlEncode'/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server">
	<img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" />
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
<WorkflowServices:WorkflowInitiationFormContextControl runat="server" />
<script type="text/javascript" src="/_layouts/15/datepicker.js "></script>
<script type="text/javascript" src="/_layouts/15/entityeditor.js "></script>
<script type="text/javascript" src="/_layouts/15/form.js "></script>
<script type="text/javascript" src="/_layouts/15/WfFormTemplates.js "></script>
<h1><label id="wfHeader"> </label></h1>
<div>
	<div id='WorkflowClientFormTopContainer'></div>
	<div id='WorkflowClientFormPlaceholder'></div>
<table>
	<tr>
		<td>
			<button id="start" onclick="return runStartWFTask()"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:osfserver, wfinitform_submitButtonText%>" EncodeMethod='HtmlEncode'/> </button>
		</td>
		<td>
			<button id="cancel" onclick="location.href = redirectUrl; return false;"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:osfserver, wfinitform_cancelButtonText%>" EncodeMethod='HtmlEncode'/> </button>
		</td>
	</tr>
</table>
<script type="text/javascript">
function ULSoCz(){var o=new Object;o.ULSTeamName="Microsoft SharePoint Solutions Framework";o.ULSFileName="WFInitForm.aspx";return o;}
var errorMessage = "<SharePoint:EncodedLiteral runat='server' text='<%$Resources:osfserver, Workflow_StartJSError%>' EncodeMethod='HtmlEncode'/>";
var dlg = null;
var complete = 0;
function runStartWFTask()
{ULSoCz:;
	var peoplePickerDict = SPClientPeoplePicker.SPClientPeoplePickerDict;
	for(var pickerId in peoplePickerDict)
	{
		peoplePickerDict[pickerId].AddUnresolvedUserFromEditor(false);
		peoplePickerDict[pickerId].ResolveAllUsers();
	}
	var form = SPClientForms.ClientFormManager.GetClientForm('Workflow');
	if(form.SubmitClientForm())
	{
		return false;
	}
	var button = document.getElementById("start");
	var cb = new SP.Utilities.CommandBlock( null, startWF, startComplete);
	var task = new SP.Utilities.Task(button, SP.Utilities.Task.TaskType.autoCancel, 0, cb, inProgressDialog, null, null);
	task.start();
	return false;
}
function startComplete()
{ULSoCz:;
	if(dlg != null)
	{
		dlg.close();
	}
}
function inProgressDialog()
{ULSoCz:;
	if(dlg == null)
	{
		dlg = SP.UI.ModalDialog.showWaitScreenWithNoClose("<SharePoint:EncodedLiteral runat='server' text='<%$Resources:osfserver, wfdialog_title%>' EncodeMethod='EcmaScriptStringLiteralEncode'/>", "<SharePoint:EncodedLiteral runat='server' text='<%$Resources:osfserver, wfdialog_message%>' EncodeMethod='EcmaScriptStringLiteralEncode'/>", null, null);
	}
}
function startWF()
{ULSoCz:;
	if(complete != 0)
	{
		return complete;
	}
	var formCtx = window["WorkflowFormCtx"];
	var externalVariablePrefix = "Microsoft.SharePoint.ExternalVariable.";
	var fieldPrefix = "ClientFormPostBackValue_WorkflowForm_";
	var params = new Object();
	var ctx = SP.ClientContext.get_current();
	var wfManager = SP.WorkflowServices.WorkflowServicesManager.newObject(ctx, ctx.get_web());
	var subscription = wfManager.getWorkflowSubscriptionService().getSubscription(subscriptionId);
	ctx.load(subscription, 'PropertyDefinitions');
	ctx.executeQueryAsync(
		function(sender, args)
		{ULSoCz:;
			complete = 0.66;
			var formData = subscription.get_propertyDefinitions()["FormData"];
			if(formData != null && formData != 'undefined' && formData != "")
			{
				var assocParams = formData.split(";#");
				for(var i = 0; i < assocParams.length; i++)
				{
					params[assocParams[i]] = subscription.getExternalVariable(assocParams[i]);
				}
			}
			for (var fieldName in formCtx.ListSchema)
			{
				var fieldElement = document.getElementById(fieldPrefix + fieldName);
				if(fieldElement != 'undefined' && fieldElement != null)
				{
					var fieldValue = fieldElement.value;
					var fieldType = formCtx.ListSchema[fieldName].FieldType;
					if(fieldType == "User" || fieldType == "UserMulti")
					{
						var userString = "";
						if(fieldValue != null && fieldValue != "")
						{
							var userCollection = JSON.parse(fieldValue);
							var firstUser = true;
							for (var i in userCollection)
							{
								if(!firstUser)
								{
									userString += ";";
								}
								userString += userCollection[i].Key;
								firstUser = false;
							}
						}
						params[fieldName] = userString;
						if(subscription.getExternalVariable(fieldName) != null)
						{
							params[externalVariablePrefix+fieldName] = userString;
						}
					}
					else if(fieldType == "Boolean")
					{
						var booleanString = fieldValue;
						if(fieldValue != null && fieldValue != "")
						{
							if(fieldValue == "1")
							{
								booleanString = "True";
							}
							else if(fieldValue == "0")
							{
								booleanString = "False";
							}
						}
						params[fieldName] = booleanString;
						if(subscription.getExternalVariable(fieldName) != null)
						{
							params[externalVariablePrefix+fieldName] = booleanString;
						}
					}
					else
					{
						params[fieldName] = fieldValue;
						if(subscription.getExternalVariable(fieldName) != null)
						{
							params[externalVariablePrefix+fieldName] = fieldValue;
						}
					}
				}
			}
			if(itemId)
			{
				wfManager.getWorkflowInstanceService().startWorkflowOnListItem(subscription, itemId, params);
			}
			else
			{
				wfManager.getWorkflowInstanceService().startWorkflow(subscription, params);
			}
			ctx.executeQueryAsync(
				function(sender, args)
				{ULSoCz:;
					complete = 1;
					location.href = redirectUrl;
				},
				function (sender, args)
				{ULSoCz:;
					complete = 1;
					alert(errorMessage);
				}
			);
		},
		function(sender, args)
		{ULSoCz:;
			complete = 1;
			alert(errorMessage);
		}
	);
	complete = 0.33;
	return complete;
}
function setHeader()
{ULSoCz:;
	var headerLabel = document.getElementById('wfHeader');
	if(headerLabel != null)
		headerLabel.innerText = headerString;
}
Sys.Application.add_load(setHeader);
</script>
	</div>
</asp:Content>
