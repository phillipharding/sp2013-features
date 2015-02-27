<%@ Control Language="C#" Inherits="Microsoft.SharePoint.ApplicationPages.LookupRelationshipsEditor,Microsoft.SharePoint.ApplicationPages"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="~/_controltemplates/15/InputFormControl.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="~/_controltemplates/15/InputFormSection.ascx" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<wssuc:InputFormSection runat="server"
	Title="<%$Resources:wss,LookupRelationships_SectionNameRI%>"
	id="inputSectionLookupRelationships"
	>
	<Template_Description>
		<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,LookupRelationships_SectionDescRI1%>" EncodeMethod='HtmlEncode'/>
		<br/><br/>
		<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,LookupRelationships_SectionDescRI2%>" EncodeMethod='HtmlEncodeAllowSimpleTextFormatting'/>
	</Template_Description>
	<Template_InputFormControls>
	<wssuc:InputFormControl runat="server" ID="inputFormRelationships">
		<Template_LabelText>
		<%
			bool bCascadeDeleteChecked;
			bool bRestrictDeleteChecked;
			bool bEnforceRI;
			bool bIsRelationship;
			GetDeleteBehaviorInternal(out bCascadeDeleteChecked, out bRestrictDeleteChecked, out bEnforceRI, out bIsRelationship);
			string L_IsRelationshipToolTip = SPHttpUtility.HtmlEncode((string) GetGlobalResourceObject("wss", "LookupRelationships_cbIsRelationship"));
			string L_EnforceRIToolTip = SPHttpUtility.HtmlEncode((string) GetGlobalResourceObject("wss", "LookupRelationships_cbEnforceRelationshipBehavior"));
		%>
			 <%
			if (IsRelationshipCheckboxVisible) {
			 %>
				  <span title=<%SPHttpUtility.WriteNoEncode("\"" + L_IsRelationshipToolTip + "\"",this.Page);%> >
					 <input name="IsRelationship" id="cbIsRelationship" type="checkbox"
					 <% if (bIsRelationship) SPHttpUtility.WriteNoEncode(" checked=\"checked\"",this.Page); %>
						  onclick="ToggleIsRelationship();" />
					 <label for="cbIsRelationship"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,LookupRelationships_cbIsRelationship%>" EncodeMethod='HtmlEncode'/></label>
				 </span>
				 <br />
			 <%
			 }
			 %>
			 <%
			 if (IsRIPanelVisible) {
			%>
					 <span title=<%SPHttpUtility.WriteNoEncode("\"" + L_EnforceRIToolTip + "\"",this.Page);%> >
						<input name="EnforceRI" id="cbEnforceReferentialIntegrity" type="checkbox" <% if (bEnforceRI) SPHttpUtility.WriteNoEncode(" checked=\"checked\"",this.Page); %>
						   onclick="ToggleReferentialIntegrity();" />
						<label for="cbEnforceReferentialIntegrity"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,LookupRelationships_cbEnforceRelationshipBehavior%>" EncodeMethod='HtmlEncode'/></label>
					</span>
			<%
			}
			%>
		</Template_LabelText>
		<Template_Control>
			<SharePoint:ScriptBlock runat="server">
			function ToggleReferentialIntegrity()
			{
				SetupReferentialIntegrityControls();
				ChangeMultiValDependingOnRIOrUniqueness();
			}
			function SetupReferentialIntegrityControls()
			{
				var cbxIsRelationship = document.getElementById("cbIsRelationship");
				var cbxRI = document.getElementById("cbEnforceReferentialIntegrity");
				var radCascade = document.getElementById("RadioButtonDeleteBehaviorCascade");
				var radRestrict = document.getElementById("RadioButtonDeleteBehaviorRestrict");
				if (cbxIsRelationship != null && !cbxIsRelationship.checked)
				{
					cbxRI.checked = false;
					cbxRI.disabled = true;
				}
				if (cbxRI.checked)
				{
					radCascade.disabled = false;
					radRestrict.disabled = false;
				}
				else
				{
					radCascade.disabled = true;
					radRestrict.disabled = true;
				}
			}
			function ToggleIsRelationship()
			{
				var cbxRI = document.getElementById("cbEnforceReferentialIntegrity");
				var radCascade = document.getElementById("RadioButtonDeleteBehaviorCascade");
				var radRestrict = document.getElementById("RadioButtonDeleteBehaviorRestrict");
				var cbxIsRelationship = document.getElementById("cbIsRelationship");
				var cbxAllowMV = null;
				<% if (!String.IsNullOrEmpty(m_allowMultiValClientId)) { %>
				cbxAllowMV = document.getElementById(<%SPHttpUtility.WriteNoEncode("\"" + m_allowMultiValClientId + "\"",this.Page);%>);
				<% } %>
				if (cbxIsRelationship != null && cbxIsRelationship.checked)
				{
					if (cbxRI != null &&
						(cbxAllowMV == null || !cbxAllowMV.checked))
					{
						cbxRI.checked = false;
						cbxRI.disabled = false;
						radCascade.disabled = true;
						radRestrict.disabled = true;
					}
				}
				else
				{
					if (cbxRI != null)
					{
						cbxRI.checked = false;
						cbxRI.disabled = true;
						radCascade.disabled = true;
						radRestrict.disabled = true;
					}
				}
				ChangeMultiValDependingOnRIOrUniqueness();
			}
			</SharePoint:ScriptBlock>
		<%
			if (IsRIPanelVisible) {
				bool bCascadeDeleteChecked;
				bool bRestrictDeleteChecked;
				bool bEnforceRI;
				bool bIsRelationship;
				GetDeleteBehaviorInternal(out bCascadeDeleteChecked, out bRestrictDeleteChecked, out bEnforceRI, out bIsRelationship);
				string L_CascadeToolTip = SPHttpUtility.HtmlEncode((string) GetGlobalResourceObject("wss", "LookupRelationships_DeleteBehavior_Cascade_ToolTip"));
				string L_RestrictToolTip = SPHttpUtility.HtmlEncode((string) GetGlobalResourceObject("wss", "LookupRelationships_DeleteBehavior_Restrict_ToolTip"));
		%>
				<table cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td valign="top" nowrap="nowrap" class="ms-authoringcontrols">
							<span title=<%SPHttpUtility.WriteNoEncode("\"" + L_RestrictToolTip + "\"",this.Page);%> >
								<input name="ChooseRelationshipDeleteBehavior" id="RadioButtonDeleteBehaviorRestrict" value="Restrict"
									<% if (bRestrictDeleteChecked) SPHttpUtility.WriteNoEncode(" checked = \"checked\"",this.Page); %>
									<% if (!bEnforceRI) SPHttpUtility.WriteNoEncode(" disabled = \"disabled\"",this.Page); %> type="radio" />
								<label for="RadioButtonDeleteBehaviorRestrict"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,LookupRelationships_DeleteBehavior_Restrict%>" EncodeMethod='HtmlEncode'/> </label>
							</span>
						</td>
					</tr>
					<tr>
						<td valign="top" nowrap="nowrap" class="ms-authoringcontrols">
							 <span title=<%SPHttpUtility.WriteNoEncode("\"" + L_CascadeToolTip + "\"",this.Page);%> >
								 <input name="ChooseRelationshipDeleteBehavior" id="RadioButtonDeleteBehaviorCascade" value="Cascade"
									<% if (bCascadeDeleteChecked) SPHttpUtility.WriteNoEncode(" checked = \"checked\"",this.Page); %>
									<% if (!bEnforceRI) SPHttpUtility.WriteNoEncode(" disabled = \"disabled\"",this.Page); %> type="radio" />
								 <label for="RadioButtonDeleteBehaviorCascade"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,LookupRelationships_DeleteBehavior_Cascade%>" EncodeMethod='HtmlEncode'/> </label>
							 </span>
						</td>
					</tr>
				</table>
		<%
		}
		%>
		</Template_Control>
	</wssuc:InputFormControl>
	</Template_InputFormControls>
</wssuc:InputFormSection>
</script>
