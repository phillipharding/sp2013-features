<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="CMS" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" Inherits="Microsoft.SharePoint.Publishing.Internal.CodeBehind.EnhancedThemingPreOptions,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"   compilationMode="Always" %>
<wssuc:InputFormSection runat="server"
	id="inheritThemeSection"
	title="<%$Resources:cms, enhancedtheming_inherittheme_title%>"
	description="<%$Resources:cms, enhancedtheming_inherittheme_description%>"
	>
	<Template_InputFormControls>
		<div>
			<input id="inheritTheme" type="radio" name="inheritThemeGroup" runat="server"/>
			<label for="<%= inheritTheme.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_inherittheme_inherit%>" EncodeMethod='HtmlEncode'/></label>
		</div>
		<div>
			<input id="selectTheme" type="radio" name="inheritThemeGroup" runat="server"/>
			<label for="<%= selectTheme.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_inherittheme_select%>" EncodeMethod='HtmlEncode'/></label>
		</div>
	</Template_InputFormControls>
</wssuc:InputFormSection>
