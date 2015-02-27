<%@ Control Language="C#" Inherits="Microsoft.SharePoint.ApplicationPages.LookupFieldEditor,Microsoft.SharePoint.ApplicationPages"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="~/_controltemplates/15/InputFormControl.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Reference Control="~/_controltemplates/15/LookupRelationshipsEditor.ascx" %>
<wssuc:InputFormControl runat="server"
	LabelText="<%$Resources:wss,fldedit_getinfofrom%>"
	>
	<Template_Control>
		<asp:Label id="LabelLookupFieldTargetListTitle" runat="server" Visible="False"/>
		<asp:DropDownList id="DdlLookupFieldTargetList" runat="server"
			AutoPostBack="True"
			OnSelectedIndexChanged="DdlLookupFieldTargetList_Changed"
			Title = "<%$Resources:wss,fldedit_getinfofrom%>"
			Visible="False"
			>
		</asp:DropDownList>
		<wssawc:InputFormCustomValidator ID="targetListPermissionValidator"
			 OnServerValidate="RITargetList_ServerValidate"
			 ErrorMessage="<%$Resources:wss,LookupRelationships_PermCheckErrorTargetList%>" runat="server"  />
	</Template_Control>
</wssuc:InputFormControl>
<wssuc:InputFormControl runat="server"
	LabelText="<%$Resources:wss,fldedit_inthiscolumn%>"
	>
	<Template_Control>
		<asp:DropDownList id="DdlLookupFieldTargetField" runat="server"
			AutoPostBack="False"
			title="<%$Resources:wss,fldedit_inthiscolumn%>" />
		<asp:Label id="LabelLookupFieldTargetField" runat="server" Visible="False"/>
		<SharePoint:ScriptBlock runat="server">
		var bConfirmed = false;
		var bClicked = false;
		function SetupRIAndUniquenessControls()
		{
			var cbx = (document.getElementById("<%= cbxAllowMultiValue.ClientID %>"));
			if (cbx != null) ChangeRIAndUniquenessDependingOnMultiVal(cbx.checked);
			ChangeMultiValDependingOnRIOrUniqueness();
			if (typeof(SetupReferentialIntegrityControls) == 'function')
				SetupReferentialIntegrityControls();
		}
		function ConfirmConvert(event)
		{
			var cbx = event.srcElement;
			if (cbx == null)
				cbx = event.target;
			if (!bClicked && cbx.checked)
			{
				bConfirmed = true;
			}
			if (!cbx.checked && !bConfirmed)
			{
				var msg = "<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,fldedit_warn_turnoffmultilookup%>' EncodeMethod='HtmlEncode'/>";
				bConfirmed = confirm(msg);
				cbx.checked = !bConfirmed;
			}
			bClicked = true;
			UpdateDocLibWarning();
			UpdateLengthWarning();
			ChangeRIAndUniquenessDependingOnMultiVal(cbx.checked);
		}
		function UpdateDocLibWarning()
		{
			var cbx = (document.getElementById("<%= cbxAllowMultiValue.ClientID %>"));
			var spanDocLibWarning = (document.getElementById("<%= SpanDocLibWarning.ClientID %>"));
			if (spanDocLibWarning != null)
			{
				if (cbx != null && cbx.checked)
				{
					spanDocLibWarning.style.display = "";
				}
				else
				{
					spanDocLibWarning.style.display = "none";
				}
			}
		}
		function UpdateLengthWarning()
		{
			var cbx = (document.getElementById("<%= cbxUnlimitedLengthInDocLib.ClientID %>"));
			var spanDocLibWarning = (document.getElementById("<%= SpanLengthWarning.ClientID %>"));
			if (spanDocLibWarning != null)
			{
				if (cbx != null && cbx.checked)
				{
					spanDocLibWarning.style.display = "";
				}
				else
				{
					spanDocLibWarning.style.display = "none";
				}
			}
		}
		function GetSelectedDependentLookupNames()
		{
			var cbxl = (document.getElementById("<%= CbxlDependentLookupFields.ClientID %>"));
			if (cbxl != null)
			{
				cbxl = cbxl.childNodes;;
			}
			var selectedNames = new Array();
			var j = 0;
			if (cbxl != null)
			{
				for (var i = 0; i < cbxl.length - 1; i++)
				{
					var item = cbxl[i];
					if(item.tagName.toLowerCase() == "input" && item.type.toLowerCase() == "checkbox" && item.checked)
					{
						var itemLabel = cbxl[i+1];
						if(itemLabel.tagName.toLowerCase() == "label")
						{
							selectedNames[j] = itemLabel.innerHTML.trim().toLowerCase();
							j++;
						}
					}
				}
			}
			return selectedNames;
		}
		function DisableDependentCountRelatedLookup()
		{
			var cbxlDepLookup = (document.getElementById("<%= CbxlDependentLookupFields.ClientID %>"));
			var cbxAllowMV = (document.getElementById("<%= cbxAllowMultiValue.ClientID %>"));
			var cbxULengthInDocLib = (document.getElementById("<%= cbxUnlimitedLengthInDocLib.ClientID %>"));
			var ddlTargetField = (document.getElementById("<%= DdlLookupFieldTargetField.ClientID %>"));
			var countRelatedLookup = false;
			var selectedTargetField = "";
			if (typeof(g_CtRelatedLookupFieldName) != "undefined")
			{
				for (var i = 0; i < ddlTargetField.options.length; i++)
				{
					if (ddlTargetField.options[i].selected)
					{
						selectedTargetField = ddlTargetField.options[i].value;
						break;
					}
				}
				for (var j = 0; j < g_CtRelatedLookupFieldName.length; j++)
				{
					if (selectedTargetField == g_CtRelatedLookupFieldName[j])
					{
						countRelatedLookup = true;
						break;
					}
				}
				if (countRelatedLookup)
				{
					DisableChildren(cbxlDepLookup, true);
					DisableChildren(cbxAllowMV, true);
					DisableChildren(cbxULengthInDocLib, true);
				}
				else
				{
					DisableChildren(cbxlDepLookup, false);
					DisableChildren(cbxAllowMV, false);
					DisableChildren(cbxULengthInDocLib, false);
				}
			}
		}
		function DisableChildren(cbxl, dis)
		{
			if (cbxl == null)
				return;
			var cbxlChildren = cbxl.getElementsByTagName("*");
			var cbxlParent = cbxl.parentNode;
			cbxlParent.disabled = dis;
			cbxl.disabled = dis;
			for (var i = 0; i < cbxlChildren.length; i++)
			{
				var item = cbxlChildren[i];
				item.disabled = dis;
			}
		}
		function ChangeRIAndUniquenessDependingOnMultiVal(allowMultiValChecked)
		{
			var cbxRI = document.getElementById("cbEnforceReferentialIntegrity");
			var radEnforceUniqueValuesYes = document.getElementById("onetidEnforceUniqueValuesTrue");
			var radEnforceUniqueValuesNo = document.getElementById("onetidEnforceUniqueValuesFalse");
			var radCascade = document.getElementById("RadioButtonDeleteBehaviorCascade");
			var radRestrict = document.getElementById("RadioButtonDeleteBehaviorRestrict");
			var cbxIsRelationship = document.getElementById("cbIsRelationship");
			if (cbxRI != null)
			{
				if (allowMultiValChecked)
				{
					cbxRI.disabled = true;
					cbxRI.checked = false;
					radCascade.disabled = true;
					radRestrict.disabled = true;
				}
				else
				{
					if (cbxIsRelationship == null || cbxIsRelationship.checked)
					{
						cbxRI.disabled = false;
					}
				}
			}
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
		function ChangeMultiValDependingOnRIOrUniqueness()
		{
			var cbxRI = document.getElementById("cbEnforceReferentialIntegrity");
			var radEnforceUniqueValuesYes = document.getElementById("onetidEnforceUniqueValuesTrue");
			var bShouldDisableMultiVal = false;
			var cbAllowMultiVal = (document.getElementById("<%= cbxAllowMultiValue.ClientID %>"));
			if (cbxRI != null && cbxRI.checked)
			{
				bShouldDisableMultiVal = true;
			}
			if (radEnforceUniqueValuesYes != null && radEnforceUniqueValuesYes.checked)
			{
				bShouldDisableMultiVal = true;
			}
			if (cbAllowMultiVal != null)
			{
				if (!bShouldDisableMultiVal)
				{
					if (cbAllowMultiVal.disabled)
					{
						cbAllowMultiVal.disabled = false;
					}
				}
				else
				{
					cbAllowMultiVal.checked = false;
					cbAllowMultiVal.disabled = true;
				}
			}
		}
		</SharePoint:ScriptBlock>
		<br />
	   <asp:CheckBox id="cbxAllowMultiValue"
			Text="<%$Resources:wss,fldedit_allowmultivalue%>"
			ToolTip="<%$Resources:wss,fldedit_allowmultivalue%>"
			onclick="ConfirmConvert(event)"
			runat="server" />
	   <span class="ms-formvalidation" id="SpanDocLibWarning" runat="server" Visible="false"><br /><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,fldedit_MultiLookupWarningForDocLibSupport%>" EncodeMethod='HtmlEncode'/></span>
	   <br />
		<asp:CheckBox id="cbxUnlimitedLengthInDocLib"
			Text="<%$Resources:wss,fldedit_UnlimitedLengthInDocumentLibrary2%>"
			ToolTip="<%$Resources:wss,fldedit_UnlimitedLengthInDocumentLibrary2%>"
			onclick="UpdateLengthWarning()"
			runat="server" />
	  <span class="ms-formvalidation" id="SpanLengthWarning" runat="server" Visible="false"><br /><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,fldedit_WarningForUnlimitedLengthInDocumentLibrar%>" EncodeMethod='HtmlEncode'/></span>
	</Template_Control>
</wssuc:InputFormControl>
<wssuc:InputFormControl runat="server"
	LabelText="<%$Resources:wss,fldedit_dependentcolumns%>"
	id="ifcLabelDependentLookupFields"
	>
	<Template_Control>
		<asp:CheckBoxList id="CbxlDependentLookupFields" runat="server"
			AutoPostBack="False"
			RepeatLayout="Flow"
			Visible="True" />
	</Template_Control>
</wssuc:InputFormControl>
<SharePoint:ScriptBlock runat="server">
	UpdateDocLibWarning();
	UpdateLengthWarning();
</SharePoint:ScriptBlock>
