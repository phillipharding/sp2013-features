<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="CMS" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="System.Drawing" %>
<%@ Import Namespace="Microsoft.SharePoint.Utilities" %>
<%@ Control Language="C#" Inherits="Microsoft.SharePoint.Publishing.Internal.CodeBehind.EnhancedThemingPostOptions,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"   compilationMode="Always" %>
<SharePoint:ScriptLink name="sp.js" loadafterui="true" defer="false" localizable="false" runat="server"/>
<SharePoint:ScriptLink name="sp.publishing.resources.resx" loadafterui="true" defer="false" localizable="false" runat="server"/>
<SharePoint:ScriptLink name="sp.ui.publishing.layoutspages.js" loadafterui="true" defer="false" localizable="false" runat="server"/>
<SharePoint:ScriptBlock runat="server">
	<%= this.WriteCustomJsonTheme() %>
	function prepareForThemePreview(themeUrl, context, callback, errorCallback)
	{
		eventArgument = Sys.Serialization.JavaScriptSerializer.serialize(
			{ method: "PrepareForThemePreview", args: [themeUrl] });
		__theFormPostData = '';
		WebForm_InitCallback();
		<%= Page.ClientScript.GetCallbackEventReference(this, "eventArgument", "callback", "context", "errorCallback", true) %>
	}
	function getShadesForColor(color, context, callback, errorCallback)
	{
		eventArgument = Sys.Serialization.JavaScriptSerializer.serialize(
			{ method: "GetShadesForColor", args: [color] });
		<%= Page.ClientScript.GetCallbackEventReference(this, "eventArgument", "callback", "context", "errorCallback", true) %>
	}
</SharePoint:ScriptBlock>
<wssuc:InputFormSection runat="server"
	id="customizeThemeSection"
	title="<%$Resources:cms, enhancedtheming_customizetheme_title%>"
	description="<%$Resources:cms, enhancedtheming_customizetheme_description%>"
	>
	<Template_InputFormControls>
		<tr><td>
	<div class="customize-theme">
		<input id="customThemeDirty" type="hidden" value="false" runat="server"/>
		<div id="themeCustomizedWarning" style="display:none;">
			<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_warning%>" EncodeMethod='HtmlEncode'/>
		</div>
		<div class="theme-color-pickers">
			<div>
				<label for="<%= dark1.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, themeweb_dark1 %>" EncodeMethod="HtmlEncode"/></label><input id="dark1" type="hidden" runat="server" themecolor="DarkColor1"/><div class="color-swatch" border="0" cellspacing="0" cellpadding="0"><div style="background-color: <%= SPHttpUtility.HtmlEncode(dark1.Value) %>;"><span class="ms-hidden"><%= SPHttpUtility.HtmlEncode(dark1.Value) %></span></div></div>
				<a id="dark1-more" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss, themeweb_dark1%>' EncodeMethod='HtmlEncode'/>
<SharePoint:EncodedLiteral runat='server' text='<%$Resources:cms, enhancedtheming_customizetheme_selectcolortip%>' EncodeMethod='HtmlEncode'/>" href="#">
<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_selectcolor%>" EncodeMethod='HtmlEncode'/></a>
			</div>
			<div>
				<label for="<%= light1.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, themeweb_light1 %>" EncodeMethod="HtmlEncode"/></label><input id="light1" type="hidden" runat="server" themecolor="LightColor1"/><div class="color-swatch" border="0" cellspacing="0" cellpadding="0"><div style="background-color: <%= SPHttpUtility.HtmlEncode(light1.Value) %>;"><span class="ms-hidden"><%= SPHttpUtility.HtmlEncode(light1.Value) %></span></div></div>
				<a id="light1-more" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss, themeweb_light1%>' EncodeMethod='HtmlEncode'/>
<SharePoint:EncodedLiteral runat='server' text='<%$Resources:cms, enhancedtheming_customizetheme_selectcolortip%>' EncodeMethod='HtmlEncode'/>" href="#">
<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_selectcolor%>" EncodeMethod='HtmlEncode'/></a>
			</div>
			<div>
				<label for="<%= dark2.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, themeweb_dark2 %>" EncodeMethod="HtmlEncode"/></label><input id="dark2" type="hidden" runat="server" themecolor="DarkColor2"/><div class="color-swatch" border="0" cellspacing="0" cellpadding="0"><div style="background-color: <%= SPHttpUtility.HtmlEncode(dark2.Value) %>;"><span class="ms-hidden"><%= SPHttpUtility.HtmlEncode(dark2.Value) %></span></div></div>
				<a id="dark2-more" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss, themeweb_dark2%>' EncodeMethod='HtmlEncode'/>
<SharePoint:EncodedLiteral runat='server' text='<%$Resources:cms, enhancedtheming_customizetheme_selectcolortip%>' EncodeMethod='HtmlEncode'/>" href="#">
<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_selectcolor%>" EncodeMethod='HtmlEncode'/></a>
			</div>
			<div>
				<label for="<%= light2.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, themeweb_light2 %>" EncodeMethod="HtmlEncode"/></label><input id="light2" type="hidden" runat="server" themecolor="LightColor2"/><div class="color-swatch" border="0" cellspacing="0" cellpadding="0"><div style="background-color: <%= SPHttpUtility.HtmlEncode(light2.Value) %>;"><span class="ms-hidden"><%= SPHttpUtility.HtmlEncode(light2.Value) %></span></div></div>
				<a id="light2-more" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss, themeweb_light2%>' EncodeMethod='HtmlEncode'/>
<SharePoint:EncodedLiteral runat='server' text='<%$Resources:cms, enhancedtheming_customizetheme_selectcolortip%>' EncodeMethod='HtmlEncode'/>" href="#">
<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_selectcolor%>" EncodeMethod='HtmlEncode'/></a>
			</div>
			<div>
				<label for="<%= accent1.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, themeweb_accent1 %>" EncodeMethod="HtmlEncode"/></label><input id="accent1" type="hidden" runat="server" themecolor="AccentColor1"/><div class="color-swatch" border="0" cellspacing="0" cellpadding="0"><div style="background-color: <%= SPHttpUtility.HtmlEncode(accent1.Value) %>;"><span class="ms-hidden"><%= SPHttpUtility.HtmlEncode(accent1.Value) %></span></div></div>
				<a id="accent1-more" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss, themeweb_accent1%>' EncodeMethod='HtmlEncode'/>
<SharePoint:EncodedLiteral runat='server' text='<%$Resources:cms, enhancedtheming_customizetheme_selectcolortip%>' EncodeMethod='HtmlEncode'/>" href="#">
<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_selectcolor%>" EncodeMethod='HtmlEncode'/></a>
			</div>
			<div>
				<label for="<%= accent2.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, themeweb_accent2 %>" EncodeMethod="HtmlEncode"/></label><input id="accent2" type="hidden" runat="server" themecolor="AccentColor2"/><div class="color-swatch" border="0" cellspacing="0" cellpadding="0"><div style="background-color: <%= SPHttpUtility.HtmlEncode(accent2.Value) %>;"><span class="ms-hidden"><%= SPHttpUtility.HtmlEncode(accent2.Value) %></span></div></div>
				<a id="accent2-more" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss, themeweb_accent2%>' EncodeMethod='HtmlEncode'/>
<SharePoint:EncodedLiteral runat='server' text='<%$Resources:cms, enhancedtheming_customizetheme_selectcolortip%>' EncodeMethod='HtmlEncode'/>" href="#">
<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_selectcolor%>" EncodeMethod='HtmlEncode'/></a>
			</div>
			<div>
				<label for="<%= accent3.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, themeweb_accent3 %>" EncodeMethod="HtmlEncode"/></label><input id="accent3" type="hidden" runat="server" themecolor="AccentColor3"/><div class="color-swatch" border="0" cellspacing="0" cellpadding="0"><div style="background-color: <%= SPHttpUtility.HtmlEncode(accent3.Value) %>;"><span class="ms-hidden"><%= SPHttpUtility.HtmlEncode(accent3.Value) %></span></div></div>
				<a id="accent3-more" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss, themeweb_accent3%>' EncodeMethod='HtmlEncode'/>
<SharePoint:EncodedLiteral runat='server' text='<%$Resources:cms, enhancedtheming_customizetheme_selectcolortip%>' EncodeMethod='HtmlEncode'/>" href="#">
<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_selectcolor%>" EncodeMethod='HtmlEncode'/></a>
			</div>
			<div>
				<label for="<%= accent4.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, themeweb_accent4 %>" EncodeMethod="HtmlEncode"/></label><input id="accent4" type="hidden" runat="server" themecolor="AccentColor4"/><div class="color-swatch" border="0" cellspacing="0" cellpadding="0"><div style="background-color: <%= SPHttpUtility.HtmlEncode(accent4.Value) %>;"><span class="ms-hidden"><%= SPHttpUtility.HtmlEncode(accent4.Value) %></span></div></div>
				<a id="accent4-more" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss, themeweb_accent4%>' EncodeMethod='HtmlEncode'/>
<SharePoint:EncodedLiteral runat='server' text='<%$Resources:cms, enhancedtheming_customizetheme_selectcolortip%>' EncodeMethod='HtmlEncode'/>" href="#">
<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_selectcolor%>" EncodeMethod='HtmlEncode'/></a>
			</div>
			<div>
				<label for="<%= accent5.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, themeweb_accent5 %>" EncodeMethod="HtmlEncode"/></label><input id="accent5" type="hidden" runat="server" themecolor="AccentColor5"/><div class="color-swatch" border="0" cellspacing="0" cellpadding="0"><div style="background-color: <%= SPHttpUtility.HtmlEncode(accent5.Value) %>;"><span class="ms-hidden"><%= SPHttpUtility.HtmlEncode(accent5.Value) %></span></div></div>
				<a id="accent5-more" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss, themeweb_accent5%>' EncodeMethod='HtmlEncode'/>
<SharePoint:EncodedLiteral runat='server' text='<%$Resources:cms, enhancedtheming_customizetheme_selectcolortip%>' EncodeMethod='HtmlEncode'/>" href="#">
<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_selectcolor%>" EncodeMethod='HtmlEncode'/></a>
			</div>
			<div>
				<label for="<%= accent6.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, themeweb_accent6 %>" EncodeMethod="HtmlEncode"/></label><input id="accent6" type="hidden" runat="server" themecolor="AccentColor6"/><div class="color-swatch" border="0" cellspacing="0" cellpadding="0"><div style="background-color: <%= SPHttpUtility.HtmlEncode(accent6.Value) %>;"><span class="ms-hidden"><%= SPHttpUtility.HtmlEncode(accent6.Value) %></span></div></div>
				<a id="accent6-more" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss, themeweb_accent6%>' EncodeMethod='HtmlEncode'/>
<SharePoint:EncodedLiteral runat='server' text='<%$Resources:cms, enhancedtheming_customizetheme_selectcolortip%>' EncodeMethod='HtmlEncode'/>" href="#">
<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_selectcolor%>" EncodeMethod='HtmlEncode'/></a>
			</div>
			<div>
				<label for="<%= hlink.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, themeweb_hlink %>" EncodeMethod="HtmlEncode"/></label><input id="hlink" type="hidden" runat="server" themecolor="HyperlinkColor"/><div class="color-swatch" border="0" cellspacing="0" cellpadding="0"><div style="background-color: <%= SPHttpUtility.HtmlEncode(hlink.Value) %>;"><span class="ms-hidden"><%= SPHttpUtility.HtmlEncode(hlink.Value) %></span></div></div>
				<a id="hlink-more" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss, themeweb_hlink%>' EncodeMethod='HtmlEncode'/>
<SharePoint:EncodedLiteral runat='server' text='<%$Resources:cms, enhancedtheming_customizetheme_selectcolortip%>' EncodeMethod='HtmlEncode'/>" href="#">
<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_selectcolor%>" EncodeMethod='HtmlEncode'/></a>
			</div>
			<div>
				<label for="<%= folHlink.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, themeweb_folhlink %>" EncodeMethod="HtmlEncode"/></label><input id="folHlink" type="hidden" runat="server" themecolor="FollowedHyperlinkColor"/><div class="color-swatch" border="0" cellspacing="0" cellpadding="0"><div style="background-color: <%= SPHttpUtility.HtmlEncode(folHlink.Value) %>;"><span class="ms-hidden"><%= SPHttpUtility.HtmlEncode(folHlink.Value) %></span></div></div>
				<a id="folHlink-more" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss, themeweb_folhlink%>' EncodeMethod='HtmlEncode'/>
<SharePoint:EncodedLiteral runat='server' text='<%$Resources:cms, enhancedtheming_customizetheme_selectcolortip%>' EncodeMethod='HtmlEncode'/>" href="#">
<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_selectcolor%>" EncodeMethod='HtmlEncode'/></a>
			</div>
		</div>
		<div class="theme-font-pickers">
			<div>
				<label for="<%= font1.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_font1%>" EncodeMethod='HtmlEncode'/></label>
				<select id="font1" type="text" runat="server" themefont="MajorFont"/>
			</div>
			<div>
				<label for="<%= font2.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_customizetheme_font2%>" EncodeMethod='HtmlEncode'/></label>
				<select id="font2" type="text" runat="server" themefont="MinorFont"/>
			</div>
		</div>
	</div>
		</td></tr>
	</Template_InputFormControls>
</wssuc:InputFormSection>
<wssuc:InputFormSection runat="server"
	id="previewThemeSection"
	title="<%$Resources:cms, enhancedtheming_previewtheme_title%>"
	description="<%$Resources:cms, enhancedtheming_previewtheme_description%>"
	>
	<Template_InputFormControls>
		<tr><td>
			<label class="ms-hidden" for="<%= preview.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_previewtheme_buttontext%>" EncodeMethod='HtmlEncode'/></label>
			<input id="preview" class="preview-button ms-ButtonHeightWidth" type="button" value="<%$Resources:cms, enhancedtheming_previewtheme_buttontext%>" runat="server" />
		</td></tr>
	</Template_InputFormControls>
</wssuc:InputFormSection>
<wssuc:InputFormSection runat="server"
	id="applyThemeSection"
	title="<%$Resources:cms, enhancedtheming_applytheme_title%>"
	description="<%$Resources:cms, enhancedtheming_applytheme_description%>"
	>
	<Template_InputFormControls>
		<tr><td>
			<div>
				<input id="onlyThis" type="radio" name="applyThemeGroup" checked="true" runat="server"/>
				<label for="<%= onlyThis.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_applytheme_onlythis%>" EncodeMethod='HtmlEncode'/></label>
			</div>
			<div>
				<input id="thisAndBelow" type="radio" name="applyThemeGroup" runat="server"/>
				<label for="<%= thisAndBelow.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, enhancedtheming_applytheme_thisandbelow%>" EncodeMethod='HtmlEncode'/></label>
			</div>
		</td></tr>
	</Template_InputFormControls>
</wssuc:InputFormSection>
