<%@ Control Language="C#" Inherits="Microsoft.SharePoint.ApplicationPages.MoreColorsPicker,Microsoft.SharePoint.ApplicationPages"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<SharePoint:CssRegistration Name="themev4.css" runat="server" />
<SharePoint:ScriptLink name="sp.js" loadafterui="true" defer="false" localizable="false" runat="server"/>
<div id="<%= this.ClientID %>" class="more-colors-picker">
	<span class="ms-hidden"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,morecolors_choose%>" EncodeMethod='HtmlEncode'/></span>
	<img class="more-colors-palette" src="/_layouts/15/images/more-colors.png?rev=23" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,morecolors_palette%>' EncodeMethod='HtmlEncode'/>" usemap="#<%= this.ClientID %>-map" style="border:none;"/>
	<map id="<%= this.ClientID %>-map" name="<%= this.ClientID %>-map"></map>
	<div class="color-swatches">
		<label for="oldColorValue"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,morecolors_oldcolor%>" EncodeMethod='HtmlEncode'/></label>
		<div class="color-swatch">
			<div class="old" style="background-color: black;"></div>
		</div>
		<input id="oldColorValue" type="text" class="ms-input" maxlength="7" disabled="disabled"/>
		<label for="<%= colorValue.ClientID %>"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,morecolors_newcolor%>" EncodeMethod='HtmlEncode'/></label>
		<div class="color-swatch">
			<div class="new" style="background-color: black;"></div>
		</div>
		<input id="colorValue" type="text" class="ms-input" maxlength="7" runat="server"/>
	</div>
</div>
