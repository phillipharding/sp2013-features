<%@ Control Language="C#" Inherits="Microsoft.SharePoint.ApplicationPages.UserFieldEditor,Microsoft.SharePoint.ApplicationPages"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="~/_controltemplates/15/InputFormControl.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<SharePoint:ScriptBlock runat="server">
function ChooseFromChanged()
{
	var chooseFromGroup = (document.getElementById("<%= RadChooseFromGroup.ClientID %>"));
	var ddlGroup = (document.getElementById("<%= DdlGroup.ClientID %>"));
	ddlGroup.disabled = !chooseFromGroup.checked;
}
var bConfirmed = false;
var bAllowMultiSelectionInitValue = <%=AllowMultiSelection? "true" : "false" %>;
function AllowMultiSelectionChanged()
{
	var allowMultiSelection = (document.getElementById("<%= RadMultiSelectionYes.ClientID %>"));
	if (bAllowMultiSelectionInitValue && !allowMultiSelection.checked && !bConfirmed)
	{
		var msg = "<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,userfieldeditor_warn_turnoffmultilookup%>' EncodeMethod='HtmlEncode'/>";
		bConfirmed = confirm(msg);
		allowMultiSelection.checked = !bConfirmed;
	}
	UpdateDocLibWarning();
	DisableUniquenessIfMultiSelection(allowMultiSelection.checked);
}
function UpdateDocLibWarning()
{
	var allowMultiSelection = (document.getElementById("<%= RadMultiSelectionYes.ClientID %>"));
	var spanDocLibWarning = (document.getElementById("<%= SpanDocLibWarning.ClientID %>"));
	if (spanDocLibWarning != null)
	{
		if (allowMultiSelection.checked)
		{
			spanDocLibWarning.style.display = "";
		}
		else
		{
			spanDocLibWarning.style.display = "none";
		}
	}
}
function DisableUniquenessIfMultiSelection(allowMultiValChecked)
{
	var radEnforceUniqueValuesYes = document.getElementById("onetidEnforceUniqueValuesTrue");
	var radEnforceUniqueValuesNo = document.getElementById("onetidEnforceUniqueValuesFalse");
	if (radEnforceUniqueValuesYes != null)
	{
		if (allowMultiValChecked)
		{
			radEnforceUniqueValuesYes.checked = false;
			radEnforceUniqueValuesNo.checked = true;
			radEnforceUniqueValuesYes.disabled = true;
			radEnforceUniqueValuesNo.disabled = true;
		}
		else
		{
			radEnforceUniqueValuesYes.disabled = false;
			radEnforceUniqueValuesNo.disabled = false;
		}
	}
}
</SharePoint:ScriptBlock>
<asp:PlaceHolder id="PanelNonSystemField" runat="server">
<wssuc:InputFormControl runat="server"
	LabelText="<%$Resources:wss,userfieldeditor_allowmultiple%>"
	>
	<Template_Control>
		<asp:RadioButton id="RadMultiSelectionYes" GroupName="MultiSelection" Text="<%$Resources:wss,fldedit_yes%>" runat=server onclick="AllowMultiSelectionChanged()" />
		<asp:RadioButton id="RadMultiSelectionNo" GroupName="MultiSelection" Text="<%$Resources:wss,fldedit_no%>" Checked="true" onclick="AllowMultiSelectionChanged()" runat=server/>
		<span class="ms-formvalidation" id="SpanDocLibWarning" runat="server" Visible="false"><br><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,fldedit_MultiUserWarningForDocLibSupport%>" EncodeMethod='HtmlEncode'/></span>
	</Template_Control>
</wssuc:InputFormControl>
<wssuc:InputFormControl runat="server"
	LabelText="<%$Resources:wss,userfieldeditor_allowselection%>"
	SmallIndent="true"
	>
	<Template_Control>
		<asp:RadioButton id="RadSelectionPeopleOnly" GroupName="Selection" Text="<%$Resources:wss,userfieldeditor_peopleonly%>" runat="server"/>
		<asp:RadioButton id="RadSelectionPeopleAndGroups" GroupName="Selection" Text="<%$Resources:wss,userfieldeditor_peopleandgroups%>" runat="server"/>
	</Template_Control>
</wssuc:InputFormControl>
<wssuc:InputFormControl runat="server"
	LabelText="<%$Resources:wss,userfieldeditor_choosefrom%>"
	SmallIndent="true"
	>
	<Template_Control>
		<table class="ms-authoringcontrols" border="0" width="100%" cellspacing="0" cellpadding="0">
			<tr>
				<td valign="top" width="1px">
					<input name="ChooseFrom" id="RadChooseFromAllPeopleGroups" type="radio" runat="server" onclick="ChooseFromChanged();" />
				</td>
				<td nowrap="nowrap" class="ms-authoringcontrols">
					<label for=<%SPHttpUtility.WriteAddQuote(SPHttpUtility.NoEncode(RadChooseFromAllPeopleGroups.ClientID),this.Page);%> > <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,userfieldeditor_allusers%>" EncodeMethod='HtmlEncode'/> </label>
				</td>
			</tr>
			<tr>
				<td valign="top" width="1px">
					<input name="ChooseFrom" id="RadChooseFromGroup" type="radio" runat="server" onclick="ChooseFromChanged();" />
				</td>
				<td nowrap="nowrap" class="ms-authoringcontrols">
					<label for=<%SPHttpUtility.WriteAddQuote(SPHttpUtility.NoEncode(RadChooseFromGroup.ClientID),this.Page);%> > <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,userfieldeditor_sharepointgroup%>" EncodeMethod='HtmlEncode'/> </label>
				</td>
			</tr>
			<tr>
				<td valign="top" width="1px"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td>
				<td nowrap="nowrap" class="ms-authoringcontrols">
					<SharePoint:ExpandableDropDownList runat="server" id="DdlGroup" title="<%$Resources:wss,userfieldeditor_sharepointgroup%>" />
				</td>
			</tr>
		</table>
	</Template_Control>
</wssuc:InputFormControl>
</asp:PlaceHolder>
<wssuc:InputFormControl runat="server"
	LabelText="<%$Resources:wss,fldeditex_showfield%>"
	LabelAssociatedControlId="DdlUserFieldTargetField"
	>
	<Template_Control>
		<asp:DropDownList id="DdlUserFieldTargetField" runat="server"/>
	</Template_Control>
</wssuc:InputFormControl>
<SharePoint:ScriptBlock runat="server">
UpdateDocLibWarning();
</SharePoint:ScriptBlock>
