<%@ Control Language="C#" Inherits="Microsoft.SharePoint.Taxonomy.TaxonomyFieldEditor,Microsoft.SharePoint.Taxonomy,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    %>
<%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="InputFormControl.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="InputFormSection.ascx" %>
<%@Assembly Name="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Taxonomy" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Osrv" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<wssuc:InputFormSection runat="server"
		Title="<%$Resources:taxonomy,fieldEditor_MultiValueTitle%>"
		Id="FirstDivision">
	<Template_Description>
		<asp:Literal ID="multipleValueDescription" Text="<%$Resources:taxonomy,fieldEditor_MultiValueDescription%>" runat="server"/>
	</Template_Description>
	<Template_InputFormControls>
		<Template_Control>
			<asp:CheckBox id="multipleAllowed"
				Text="<%$Resources:taxonomy,fieldEditor_MultiValueLabel%>"
				ToolTip="<%$Resources:taxonomy,fieldEditor_MultiValueLabel%>"
				onclick="ConfirmConvert(event)"
				runat="server" />
		</Template_Control>
	</Template_InputFormControls>
</wssuc:InputFormSection>
<wssuc:InputFormSection runat="server"
		Title="<%$Resources:taxonomy,fieldEditor_ShowPathTitle%>"
		Id="SecondDivision">
	<Template_Description>
		<asp:Literal ID="DisplayChoiceDescription" Text="<%$Resources:taxonomy,fieldEditor_ShowPathDescription%>" runat="server"/>
	</Template_Description>
	<Template_InputFormControls>
		<wssuc:InputFormControl runat="server"
			LabelText="<%$Resources:taxonomy,fieldEditor_ShowPathLabel%>">
			<Template_Control>
				<asp:RadioButton id="displayTerm" Text="<%$Resources:taxonomy,fieldEditor_ShowPathTermOnly%>" Checked="True"
					GroupName="displaypath" runat="server"/>
				<br />
				<asp:RadioButton id="displayPath" Text="<%$Resources:taxonomy,fieldEditor_ShowPathEntirePath%>" Checked="False"
					GroupName="displaypath" runat="server"/>
			</Template_Control>
		</wssuc:InputFormControl>
	</Template_InputFormControls>
</wssuc:InputFormSection>
<wssuc:InputFormSection runat="server"
		Title="<%$Resources:taxonomy,fieldEditor_TermSetTitle%>"
		Id="ThirdDivision">
	<Template_Description>
		<asp:Literal ID="TermSetType" Text="<%$Resources:taxonomy,fieldEditor_TermSetDescription%>" runat="server"/>
	</Template_Description>
	<Template_InputFormControls>
		<wssuc:InputFormControl runat="server">
			<Template_Control>
				<SharePoint:ScriptBlock runat="server">
		var bConfirmed = false;
		var bClicked = false;
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
				bConfirmed = confirm('<asp:Literal runat="server" Text="<%$Resources:taxonomy,fieldEditor_MultiValueChangeConfirm%>" />');
				cbx.checked = !bConfirmed;
			}
			bClicked = true;
			if (Microsoft != null && Microsoft.SharePoint != null
				&& Microsoft.SharePoint.Taxonomy != null &&
				Microsoft.SharePoint.Taxonomy.FieldEditor != null)
				{
					var editor = new Microsoft.SharePoint.Taxonomy.FieldEditor();
					editor.get_defaultValueControl().setIsMulti(cbx.checked);
				}
		}
		</SharePoint:ScriptBlock>
				<asp:RadioButton id="reuseTermSet" Text="<%$Resources:taxonomy,fieldEditor_TermSetReuseLabel%>" Checked="True"
					GroupName="termSetType" runat="server" />
				<br />
				<asp:Label id="termSetSearchBoxLabel" Text="<%$Resources:taxonomy,fieldEditor_TermSetFindLabel%>" runat="server" />
				<br />
				<wssawc:InputFormTextBox title="<%$Resources:taxonomy, fieldEditor_TermSetFindTextBox%>" class="ms-input" Columns="35" ID="termSetSearchBox" Runat="server" />
				<a href="javascript:Microsoft.SharePoint.Taxonomy.FieldEditor.callScriptWebService();" id="findLink"><img src="/_layouts/15/images/RTE2FIND.gif" Title="<%$Resources:taxonomy,fieldEditor_TermSetFindButtonText%>" runat="server" /></a>
				<a href="javascript:resetTextBox();" id="resetLink"><img src="/_layouts/15/images/refresh.gif" Title="<%$Resources:taxonomy,fieldEditor_TermSetResetButtonText%>" runat="server" /></a>
				<br />
				<div id="frameForReuseTreesContainer" class="FrameForTrees">
					<div id="metadataTreeControlTreeReuse" class="MetadataTreeControlTree"></div>
				</div>
				<div style="display:none;">
					<asp:TextBox id="reuseSspId" runat="server" />
					<asp:TextBox id="reuseGroupId" runat="server" />
					<asp:TextBox id="reuseTermSetId" runat="server" />
					<asp:TextBox id="reuseAnchorId" runat="server" />
					<asp:TextBox id="reuseAnchorIdPath" runat="server" />
				</div>
				<asp:RadioButton id="createTermSet" Text="<%$Resources:taxonomy,fieldEditor_TermSetCreateLabel%>" Checked="False"
					GroupName="termSetType" runat="server" />
				<br />
				<asp:Label id="createTermSetWarning" Text="<%$Resources:taxonomy,fieldEditor_TermSetCreateTermSetDescription%>" runat="server" />
				<br />
				<asp:Label id="createTermSetDescriptionLabel" Text="<%$Resources:taxonomy,fieldEditor_TermSetCreateTermSetDescriptionLabel%>" runat="server" />
				<br />
				<wssawc:InputFormTextBox title="<%$Resources:taxonomy, fieldEditor_TermSetCreateTermSetDescriptionLabel%>" class="ms-input" Columns="35" ID="createTermSetDescription" Runat="server" />
				<br />
				<div id="frameForCreateTreesContainer" class="FrameForTrees">
					<div id="metadataTreeControlTreeCreate" class=MetadataTreeControlTree"></div>
				</div>
				<a href="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$PlaceHolderMain$ctl00$RptControls$onetidSaveItem&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, true))" onclick="return tunnelToTSMT();" id="editWithTermManagerLink"><asp:Literal ID="tunnelToTermStoreLinkText" Text="<%$Resources:taxonomy,fieldEditor_TunnelLinkText%>" runat="server"/></a>
				<div style="display:none;">
					<asp:TextBox id="createSspId" runat="server" />
					<asp:TextBox id="createTermSetId" runat="server" />
					<asp:TextBox id="createAnchorId" runat="server" />
					<asp:TextBox id="createAnchorIdPath" runat="server" />
				</div>
				<Sharepoint:MenuTemplate UseShortId="False" runat="server" id="termSetECBMenu">
					<SharePoint:MenuItemTemplate id="TermSetECBMenuNew" runat="server" Text="<%$Resources:taxonomy,tsmt_termsetecb_newterm%>" ImageUrl="/_layouts/15/images/cat.gif"  ClientOnClickScript="Microsoft.SharePoint.Taxonomy.TreeUtility.addChildandFocus('metadataTreeControlTreeCreate')" />
				</Sharepoint:MenuTemplate>
				<Sharepoint:MenuTemplate UseShortId="False" runat="server" id="termECBMenu">
					<SharePoint:MenuItemTemplate id="TermECBMenuNew" runat="server" Text="<%$Resources:taxonomy,tsmt_termsetecb_newterm%>" ImageUrl="/_layouts/15/images/cat.gif"  ClientOnClickScript="Microsoft.SharePoint.Taxonomy.TreeUtility.addChildandFocus('metadataTreeControlTreeCreate')" />
					<SharePoint:MenuItemTemplate id="TermECBMenuMove" runat="server" Text="<%$Resources:taxonomy,tsmt_termecb_move%>" ImageUrl="/_layouts/15/images/EMMMoveTerm.png"  ClientOnClickScript="Microsoft.SharePoint.Taxonomy.TreeUtility.moveTo('metadataTreeControlTreeCreate');" />
					<SharePoint:MenuSeparatorTemplate id="TermOLWebSeparator" runat="server" />
					<SharePoint:MenuItemTemplate id="TermECBMenuDelete" runat="server" Text="<%$Resources:taxonomy,tsmt_termecb_delete%>" ImageUrl="/_layouts/15/images/EMMDeleteTerm.png"  ClientOnClickScript="Microsoft.SharePoint.Taxonomy.TreeUtility.removeTargetNode('metadataTreeControlTreeCreate')" />
				</Sharepoint:MenuTemplate>
				<Osrv:DelegateValidationControl id="treeControlValidator" IsInputForm="True" runat="server" />
			</Template_Control>
		</wssuc:InputFormControl>
	</Template_InputFormControls>
</wssuc:InputFormSection>
<wssuc:InputFormSection runat="server"
		Title="<%$Resources:taxonomy,fieldEditor_AllowFillinTitle%>"
		Id="FourthDivision">
	<Template_Description>
		<asp:Literal ID="FillInChoice" Text="<%$Resources:taxonomy,fieldEditor_AllowFillinDescription%>" runat="server"/>
	</Template_Description>
	<Template_InputFormControls>
		<wssuc:InputFormControl runat="server"
		LabelText="<%$Resources:taxonomy,fieldEditor_AllowFillinLabel%>">
			<Template_Control>
				<asp:RadioButton id="fillInTrue" Text="<%$Resources:taxonomy,Yes%>" Checked="False"
					GroupName="fillInValue" runat="server"/>
				<asp:RadioButton id="fillInFalse" Text="<%$Resources:taxonomy,No%>" Checked="True"
					GroupName="fillInValue" runat="server"/>
			</Template_Control>
		</wssuc:InputFormControl>
	</Template_InputFormControls>
</wssuc:InputFormSection>
<wssuc:InputFormSection runat="server"
		Title="<%$Resources:taxonomy,fieldEditor_DefaultValueTitle%>"
		Id="FifthDivision">
	<Template_Description>
		<asp:Literal ID="DefaultValue" Text="<%$Resources:taxonomy,fieldEditor_DefaultValueDescription%>" runat="server"/>
	</Template_Description>
	<Template_InputFormControls>
		<wssuc:InputFormControl runat="server"
		LabelText="<%$Resources:taxonomy,fieldEditor_DefaultValueLabel%>">
			<Template_Control>
				<Taxonomy:TaxonomyWebTaggingControl id="defaultValueControl" runat="server" />
				<Osrv:DelegateValidationControl id="defaultControlValidator" IsInputForm="True" runat="server" />
			</Template_Control>
		</wssuc:InputFormControl>
	</Template_InputFormControls>
</wssuc:InputFormSection>
<SharePoint:CssRegistration runat="server" name="termstoremanager.css" />
	  <SharePoint:ScriptBlock runat="server">
	  function ChangeMultiValDependingOnRIOrUniqueness()
		{
			var cbxRI = document.getElementById("cbEnforceReferentialIntegrity");
			var radEnforceUniqueValuesYes = document.getElementById("onetidEnforceUniqueValuesTrue");
			var bShouldDisableMultiVal = false;
			var cbAllowMultiVal = document.getElementById(getAllowMultiId());
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
		function ChangeRIAndUniquenessDependingOnMultiVal(allowMultiValChecked)
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
