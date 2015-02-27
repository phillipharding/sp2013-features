<%@ Page language="C#" MasterPageFile="~masterurl/default.master"      %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WorkflowServices" Namespace="Microsoft.SharePoint.WorkflowServices.ApplicationPages" Assembly="Microsoft.SharePoint.WorkflowServices.ApplicationPages, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Workflow" Namespace="Microsoft.SharePoint.Workflow" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:osfserver, wfassocform_pagetitle%>" EncodeMethod='HtmlEncode'/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server">
	<img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" />
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
<WorkflowServices:WorkflowAssociationFormContextControl runat="server" />
<script type="text/javascript" src="/_layouts/15/datepicker.js "></script>
<script type="text/javascript" src="/_layouts/15/entityeditor.js "></script>
<script type="text/javascript" src="/_layouts/15/form.js "></script>
<script type="text/javascript" src="/_layouts/15/WfFormTemplates.js "></script>
<h1><label id="wfHeader"> </label> </h1>
<div>
	<div id='WorkflowClientFormTopContainer'></div>
	<div id='WorkflowClientFormPlaceholder'></div>
<table>
	<tr>
		<td>
			<button id="Save" onclick="return runAssocWFTask()"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:osfserver, wfassocform_submitButtonText%>" EncodeMethod='HtmlEncode'/> </button>
		</td>
		<td>
			<button id="cancel" onclick="location.href = cancelRedirectUrl; return false;"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:osfserver, wfinitform_cancelButtonText%>" EncodeMethod='HtmlEncode'/> </button>
		</td>
	</tr>
</table>
<script type="text/javascript">
function ULStUK(){var o=new Object;o.ULSTeamName="Microsoft SharePoint Solutions Framework";o.ULSFileName="WFAssocForm.aspx";return o;}
var errorMessage = "<SharePoint:EncodedLiteral runat='server' text='<%$Resources:osfserver, Workflow_AssociateJSError%>' EncodeMethod='HtmlEncode'/>";
var dlg = null;
var complete = 0;
var CID_O15WorkflowTask = "0x0108003365C4474CAE8C42BCE396314E88E51F";
function runAssocWFTask()
{ULStUK:;
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
	var button = document.getElementById("Save");
	var cb = new SP.Utilities.CommandBlock( null, associateWF, assocComplete);
	var task = new SP.Utilities.Task(button, SP.Utilities.Task.TaskType.autoCancel, 0, cb, inProgressDialog, null, null);
	task.start();
	return false;
}
function assocComplete()
{ULStUK:;
	if(dlg != null)
	{
		dlg.close();
	}
}
function inProgressDialog()
{ULStUK:;
	if(dlg == null)
	{
		dlg = SP.UI.ModalDialog.showWaitScreenWithNoClose("<SharePoint:EncodedLiteral runat='server' text='<%$Resources:osfserver, wfdialog_title%>' EncodeMethod='EcmaScriptStringLiteralEncode'/>", "<SharePoint:EncodedLiteral runat='server' text='<%$Resources:osfserver, wfdialog_message%>' EncodeMethod='EcmaScriptStringLiteralEncode'/>", null, null);
	}
}
function associateWF(state, pauseFunction)
{ULStUK:;
	if(complete != 0)
	{
		return complete;
	}
	var ctx = window["WorkflowFormCtx"];
	var fieldPrefix = "ClientFormPostBackValue_WorkflowForm_";
	var metadata = new Object();
	var externalVariables = new Object();
	for (var fieldName in ctx.ListSchema)
	{
		var fieldElement = document.getElementById(fieldPrefix + fieldName);
		if(fieldElement != 'undefined' && fieldElement != null)
		{
			var fieldValue = fieldElement.value;
			var fieldType = ctx.ListSchema[fieldName].FieldType;
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
				externalVariables[fieldName] = userString;
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
				externalVariables[fieldName] = booleanString;
			}
			else
			{
				externalVariables[fieldName] = fieldValue;
			}
		}
	}
	var historyListId = "";
	var taskListId = "";
	metadata["FormData"] = formData;
	var ctx = SP.ClientContext.get_current();
	var web = ctx.get_web();
	var wfManager = SP.WorkflowServices.WorkflowServicesManager.newObject(ctx, web);
	var newHistoryList = null;
	var taskList = null;
	if(historyListName[0] == 'z')
	{
		historyListName = historyListName.substring(1);
		var listCreationInfo = new SP.ListCreationInformation();
		listCreationInfo.set_templateType(SP.ListTemplateType.workflowHistory);
		listCreationInfo.set_title(historyListName);
		listCreationInfo.set_description(historyListDescription);
		newHistoryList = web.get_lists().add(listCreationInfo);
		ctx.load(newHistoryList, 'Id');
	}
	else
	{
		historyListId = historyListName;
	}
	if(taskListName[0] == 'z')
	{
		taskListName = taskListName.substring(1);
		var listCreationInfo = new SP.ListCreationInformation();
		listCreationInfo.set_templateType(SP.ListTemplateType.tasksWithTimelineAndHierarchy);
		listCreationInfo.set_title(taskListName);
		listCreationInfo.set_description(taskListDescription);
		taskList = web.get_lists().add(listCreationInfo);
	}
	else
	{
		var listCollection = web.get_lists();
		taskList = listCollection.getById(taskListName);
	}
	ctx.load(taskList, 'Id');
	var contentTypeCollection = web.get_availableContentTypes();
	var contentType = contentTypeCollection.getById(CID_O15WorkflowTask);
	ctx.load(contentType, 'Name');
	var taskListContentTypeCollection = taskList.get_contentTypes();
	ctx.load(taskListContentTypeCollection, 'Include(Name)');
	ctx.executeQueryAsync(
		function(sender, args)
		{ULStUK:;
			var hasTaskContentType = false;
			for (var i = 0; i < taskListContentTypeCollection.get_count(); i++)
			{
				var taskListContentType = taskListContentTypeCollection.get_item(i);
				if (taskListContentType.get_name() == contentType.get_name())
				{
					hasTaskContentType = true;
					break;
				}
			}
			if (!hasTaskContentType)
			{
				taskListContentTypeCollection.addExistingContentType(contentType);
			}
			complete = 0.66;
			if(newHistoryList != null)
			{
				historyListId = newHistoryList.get_id().toString();
			}
			taskListId = taskList.get_id().toString();
			metadata["HistoryListId"] = historyListId;
			metadata["TaskListId"] = taskListId;
			var eventTypes = new Array();
			if(autoStartCreate)
			{
				eventTypes.push("ItemAdded");
			}
			if(autoStartChange)
			{
				eventTypes.push("ItemUpdated");
			}
			if(allowManual)
			{
				eventTypes.push("WorkflowStart");
			}
			if(subscriptionId != null && subscriptionId != "")
			{
				var subscription = wfManager.getWorkflowSubscriptionService().getSubscription(subscriptionId);
				subscription.set_name(workflowName);
				subscription.set_eventTypes(eventTypes);
				for (var key in metadata)
				{
					subscription.setProperty(key, metadata[key]);
				}
				for (var key in externalVariables)
				{
					subscription.setExternalVariable(key, externalVariables[key]);
				}
				wfManager.getWorkflowSubscriptionService().publishSubscription(subscription);
				ctx.executeQueryAsync(
					function(sender, args)
					{ULStUK:;
						complete = 1;
						location.href = redirectUrl;
					},
					function(sender, args)
					{ULStUK:;
						complete = 1;
						alert(errorMessage);
					}
				);
			}
			else
			{
				var newSubscription = SP.WorkflowServices.WorkflowSubscription.newObject(ctx);
				newSubscription.set_definitionId(definitionId);
				newSubscription.set_eventSourceId(eventSourceId);
				newSubscription.set_eventTypes(eventTypes);
				newSubscription.set_name(workflowName);
				for (var key in metadata)
				{
					newSubscription.setProperty(key, metadata[key]);
				}
				for (var key in externalVariables)
				{
					newSubscription.setExternalVariable(key, externalVariables[key]);
				}
				wfManager.getWorkflowSubscriptionService().publishSubscriptionForList(newSubscription, listId);
				ctx.executeQueryAsync(
					function(sender, args)
					{ULStUK:;
						complete = 1;
						location.href = redirectUrl;
					},
					function(sender,args)
					{ULStUK:;
						complete = 1;
						alert(errorMessage);
					}
				);
			}
		},
		function(sender, args)
		{ULStUK:;
			complete = 1;
			alert(errorMessage);
		}
	);
	complete = 0.33;
	return complete;
}
function setHeader()
{ULStUK:;
	var headerLabel = document.getElementById('wfHeader');
	if(headerLabel != null)
		headerLabel.innerText = headerString;
}
Sys.Application.add_load(setHeader);
</script>
</div>
</asp:Content>
