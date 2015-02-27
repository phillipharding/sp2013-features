<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.MUISettingsControl,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<wssuc:InputFormSection
	Title="<%$Resources:wss,muisetng_defaultLanguage%>"
	Id="DefaultLanguageSection"
	runat="server"
	>
	<Template_Description>
		<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,muisetng_defaultLanguage_desc%>" EncodeMethod='HtmlEncode'/>
	</Template_Description>
	<Template_InputFormControls>
		<wssuc:InputFormControl LabelText="<%$Resources:wss,muisetng_defaultLanguage_label%>" runat="server">
			<Template_Control>
				<Template_Control>
					<table border="0" width="100%" cellspacing="0" cellpadding="0">
						<tr>
							<td nowrap="nowrap" class="ms-authoringcontrols">
								<b><asp:Label id="LblDefaultLanguage" runat="server"/></b>
							</td>
						</tr>
					</table>
				</Template_Control>
			</Template_Control>
		</wssuc:InputFormControl>
	</Template_InputFormControls>
</wssuc:InputFormSection>
<wssuc:InputFormSection
	Title="<%$Resources:wss,muisetng_select_alternate_languages%>"
	Id="AlternateLanguagesSection"
	runat="server"
	>
	<Template_Description>
		<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,muisetng_select_alternate_languages_desc%>" EncodeMethod='HtmlEncode'/>
	</Template_Description>
	<Template_InputFormControls>
		<wssuc:InputFormControl id="ctlSelectLanguages" LabelText="<%$Resources:wss,muisetng_select_alternate_languages_label%>" runat="server">
			<Template_Control>
				<Template_Control>
					<table border="0" width="100%" cellspacing="0" cellpadding="0">
					  <tr>
						<td nowrap="nowrap" class="ms-authoringcontrols">
						  <asp:CheckBoxList id="CblAlternateLanguages" runat="server"/>
						</td>
					  </tr>
					</table>
				</Template_Control>
			</Template_Control>
		</wssuc:InputFormControl>
	</Template_InputFormControls>
</wssuc:InputFormSection>
<wssuc:InputFormSection
	Title="<%$Resources:wss,muisetng_overwriteMUI%>"
	Id="OverwriteTranslationsSection"
	runat="server"
	>
	<Template_Description>
		<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,muisetng_overwriteMUI_desc%>" EncodeMethod='HtmlEncode'/>
	</Template_Description>
	<Template_InputFormControls>
		<wssuc:InputFormControl id="ctlOverwriteMUI" LabelText="<%$Resources:wss,muisetng_overwriteMUI_label%>" runat="server">
			<Template_Control>
				<input id="RadOverwriteMUIYes" name="overwriteMUI" type="radio" runat="server" />
				<label for=<%SPHttpUtility.WriteAddQuote(SPHttpUtility.NoEncode(RadOverwriteMUIYes.ClientID),this.Page);%> ><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,Yes%>" EncodeMethod='HtmlEncode'/></label>
				&#160;&#160;
				<input id="RadOverwriteMUINo" name="overwriteMUI" type="radio" checked="true" runat="server" />
				<label for=<%SPHttpUtility.WriteAddQuote(SPHttpUtility.NoEncode(RadOverwriteMUINo.ClientID),this.Page);%> > <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,No%>" EncodeMethod='HtmlEncode'/> </label>
			</Template_Control>
		</wssuc:InputFormControl>
	</Template_InputFormControls>
</wssuc:InputFormSection>
