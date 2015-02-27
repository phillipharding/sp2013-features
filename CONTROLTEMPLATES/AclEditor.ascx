<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.AclEditor"    compilationMode="Always" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="~/_controltemplates/15/ButtonSection.ascx" %>
<script type="text/javascript">
// <![CDATA[
var bExistingSiteUsesKerberos = null;
_spBodyOnLoadFunctionNames.push("AclEditor_BodyOnLoad");
var rights;
var rules;
var subsets;
var curUser = 0;
var AclEditor_bAddButtonClicked = false;
var doc;
function AclEditor_BodyOnLoad()
{
	rights=[<%=m_rights%>];
	rules=[<%=m_rules%>];
	subsets=[<%=m_subsets%>];
	var usersBox = document.getElementById("optionBoxUsers");
	if (usersBox.length > 0)
	  usersBox.selectedIndex = 0;
	AclEditor_RefreshPermissionsDisplay();
	AclEditor_MakeHiddenUserList();
	AclEditor_UpdatePostStrings();
	AclEditor_SetFocus();
}
function AclEditor_SetFocus()
{
	inputItems = document.getElementsByTagName("div");
	for (var i = 0; i < inputItems.length; i ++)
	{
		if (inputItems[i].id.indexOf("upLevelDiv") >= 0)
		{
			inputItems[i].focus();
			break;
		}
	}
}
function AclEditor_RefreshPermissionsDisplay()
{
	var permissionsFrame = document.getElementById("inlineFramePermissions");
	doc = "";
	doc.innerHTML = "";
	AclEditor_WritePermissionsStart();
	if (rules.length > 0)
	{
	  for (var i = 0; i < rights.length; i ++)
	  {
		AclEditor_WriteItem(i, rights[i], rules[curUser][i]);
	  }
	}
	AclEditor_WritePermissionsEnd();
	permissionsFrame.innerHTML = doc;
	AclEditor_UpdatePermissionsLabel();
}
function AclEditor_UpdatePermissionsLabel()
{
  var permissionsText = (document.getElementById("<%= lblSelectedUser.ClientID %>"));
  var usersBox = document.getElementById("optionBoxUsers");
  if (usersBox.length > 0)
  {
	var permissionsString = (document.getElementById("<%= LocStringPermissionsFor.ClientID %>")).value;
	permissionsText.innerHTML = permissionsString.replace("{0}", usersBox.options[curUser].text);
  }
  else
  {
	permissionsText.innerHTML = (document.getElementById("<%= LocStringPermissions.ClientID %>")).value;
  }
}
function AclEditor_OnUserChange()
{
  curUser = document.getElementById("optionBoxUsers").selectedIndex;
  AclEditor_RefreshPermissionsDisplay();
}
function AclEditor_AddBtnClickCallback(result, ctx)
{
  if (!AclEditor_bAddButtonClicked)
	return;
  AclEditor_bAddButtonClicked = false;
  var uplevel=document.getElementById(getSubControlID(result, g_EntityEditorUpLevelId));
  var hiddenSpan = document.getElementById(getSubControlID(result, g_EntityEditorHiddenId));
  var downlevel=document.getElementById(getSubControlID(result, g_EntityEditorDownLevelId));
  var entities = GetEntities(ctx);
  if (entities == null)
	return;
  var nodes = entities.childNodes;
  var node = null;
  var i = 0;
  for (i = 0; i < nodes.length; i++)
  {
	if (isResolved = nodes[i].getAttribute("IsResolved") == "False")
	  return;
  }
  for (i = 0; i < nodes.length; i++)
  {
	node = nodes[i];
	displayText = node.getAttribute("DisplayText");
	key = node.getAttribute("Key");
	isResolved = node.getAttribute("IsResolved");
	if (isResolved == "True")
	{
	  AclEditor_AddUser(displayText, key);
	}
  }
  downlevel.value="";
  uplevel.innerHTML="";
  hiddenSpan.value="";
}
function AclEditor_AddUser(displayText, key)
{
  var usersBox = document.getElementById("optionBoxUsers");
  for (var i = 0; i < usersBox.length; i ++)
  {
	if (usersBox.options[i].value == key)
	{
	  usersBox.selectedIndex = i;
	  AclEditor_RefreshPermissionsDisplay();
	  return;
	}
  }
  var zeroRights = new Array(rights.length);
  for (var i = 0; i < rights.length; i ++)
	zeroRights[i] = false;
  var optionElement = new Option();
  usersBox.options.add(optionElement);
  optionElement.value = key;
  setInnerText(optionElement, displayText);
  rules[rules.length] = zeroRights;
  usersBox.selectedIndex = usersBox.length - 1;
  curUser = usersBox.selectedIndex;
  AclEditor_RefreshPermissionsDisplay();
  AclEditor_MakeHiddenUserList();
  AclEditor_UpdatePostStrings();
}
function AclEditor_AddBtnClick()
{
  var peoplePicker = (document.getElementById("<%= PickerAddUser.ClientID %>"));
  var pickerCheckNamesButton = document.getElementById(getSubControlID(peoplePicker.id, g_EntityEditorCheckNamesId));
  AclEditor_bAddButtonClicked = true;
  pickerCheckNamesButton.onclick();
}
function AclEditor_RemoveBtnClick()
{
  var usersBox = document.getElementById("optionBoxUsers");
  rules.splice(curUser,1);
  usersBox.options[curUser] = null;
  if (curUser > 0)
	curUser--;
  AclEditor_RefreshPermissionsDisplay();
  AclEditor_MakeHiddenUserList();
  AclEditor_UpdatePostStrings();
}
function AclEditor_MakeHiddenUserList()
{
  var usersBox = document.getElementById("optionBoxUsers");
  var userListPostString = (document.getElementById("<%= HiddenUsers.ClientID %>"));
  userListPostString.value = "";
  for (var i = 0; i < usersBox.options.length; i ++)
  {
	userListPostString.value += usersBox.options[i].value + ",";
  }
}
function AclEditor_OnCheckBoxClick(cb)
{
  AclEditor_UpdateRightsCheckBoxes(cb);
  AclEditor_UpdatePostStrings();
}
function AclEditor_UpdatePostStrings()
{
  var rulesPostString = (document.getElementById("<%= HiddenRules.ClientID %>"));
  rulesPostString.value = "";
  for (var i = 0; i < rules.length; i ++)
  {
	for (var j = 0; j < rules[i].length; j ++)
	{
	  rulesPostString.value += rules[i][j];
	  rulesPostString.value += ',';
	}
	rulesPostString.value += '|';
  }
}
function AclEditor_UpdateRightsCheckBoxes(cb)
{
  var curCheckBox
  var id = cb.id;
  var checked = cb.checked;
  for (var i = 0; i < rights.length; i ++)
  {
	curCheckBox = document.getElementById(i);
	if (checked && subsets[id][i])
	{
	  curCheckBox.checked = true;
	  rules[curUser][i] = true;
	}
	else if (!checked && subsets[i][id])
	{
	  curCheckBox.checked = false;
	  rules[curUser][i] = false;
	}
  }
}
function AclEditor_WritePermissionsStart()
{
  doc += '<table border="0" cellpadding="0" cellspacing="0" width="95%" dir="<%=rtlMode%>" class="ms-dialogBodyMain" style="border:none;">';
}
function AclEditor_WriteItem(id, text, checked)
{
  doc += '<tr><td>';
  doc += text;
  doc += '</td><td style="width: 20px"><input type="checkbox" title="' + text + '" ';
  doc += checked ? "CHECKED" : "";
  doc += ' id="';
  doc += id;
  doc += '" onclick="javascript:AclEditor_OnCheckBoxClick(this)"/></td></tr>';
}
function AclEditor_WritePermissionsEnd()
{
  doc += '</table>';
}
// ]]>
</script>
<div style="width:400px;">
	<input type="hidden" id="HiddenUsers" runat="server" />
	<input type="hidden" id="HiddenRights" runat="server" />
	<input type="hidden" id="HiddenRules" runat="server" />
	<input type="hidden" id="LocStringPermissions" value="<%$Resources:wss,AclEditor_Permissions%>" runat="server" />
	<input type="hidden" id="LocStringPermissionsFor" value="<%$Resources:wss,AclEditor_PermissionsFor%>" runat="server" />
	<asp:Label id="lblAddDesc" Text="<%$Resources:wss,ACLEditor_AddLabel_Windows%>" runat="server" />
	<br /><br />
	<table style="width:100%"><tr><td>
	<wssawc:PeopleEditor
	  AllowEmpty=true
	  SingleLine=true
	  ValidatorEnabled="true"
	  MultiSelect=true
	  id="PickerAddUser"
	  runat="server"
	  SelectionSet="User"
	  Width="100%"
	  /></td><td valign="middle">
	<asp:Button runat="server" id="btnAdd" Text="<%$Resources:wss,AclEditor_AddUserButton%>" />
	</td></tr></table>
	<%=optionBoxUsers%>
	<span style="float:<%=removeButtonFloatDirection%>; padding-top:0.75Em;">
	  <asp:Button runat="server" id="btnRemove" Text="<%$Resources:wss,AclEditor_RemoveUserButton%>" />
	</span>
	<br /><br />
	<asp:Label id="lblRemoveDesc" Text="<%$Resources:wss,ACLEditor_RemoveLabel_Windows%>" runat="server" />
	<br /><br />
	<asp:Label id="lblSelectedUser" runat="server" />
	<br />
	<div id="inlineFramePermissions" style="height: 100px; overflow-y: scroll; padding:5px;" class="ms-dialogBodyMain">
	  <asp:Literal runat="server" Text="<%$Resources:wss,AclEditor_LoadingLabel%>" />
	</div>
</div>
