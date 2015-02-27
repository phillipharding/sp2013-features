<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
		<PublishingWebControls:EditModePanel runat="server">
		<!-- Styles for edit mode only-->
		<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	</PublishingWebControls:EditModePanel>
	<SharePointWebControls:FieldValue id="PageStylesField" FieldName="HeaderStyleDefinitions" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	<PublishingWebControls:LayoutDivContainer runat="server" class="layout-col twoRowTwoColumn-top  ms-verticalAlignTop">
		<PublishingWebControls:LayoutDivContainer runat="server" class="twoRowTwoColumn-top-inner">
			<PublishingWebControls:RichHtmlField FieldName="PublishingPageContent" HasInitialFocus="True" MinimumEditHeight="400px" runat="server"/>
		</PublishingWebControls:LayoutDivContainer>
	</PublishingWebControls:LayoutDivContainer>
	<div class="layout-row">
		<PublishingWebControls:LayoutDivContainer runat="server" class="layout-col twoRowTwoColumn-bottomLeft ms-verticalAlignTop">
			<PublishingWebControls:LayoutDivContainer runat="server" class="twoRowTwoColumn-bottomLeft-inner">
				<PublishingWebControls:RichHtmlField FieldName="SBWPageContent1" MinimumEditHeight="400px" runat="server"/>
			</PublishingWebControls:LayoutDivContainer>
		</PublishingWebControls:LayoutDivContainer>
		<PublishingWebControls:LayoutDivContainer runat="server" class="layout-col twoRowTwoColumn-bottomRight ms-verticalAlignTop">
			<PublishingWebControls:LayoutDivContainer runat="server" class="twoRowTwoColumn-bottomRight-inner">
				<PublishingWebControls:RichHtmlField FieldName="SBWPageContent2" MinimumEditHeight="400px" runat="server"/>
			</PublishingWebControls:LayoutDivContainer>
		</PublishingWebControls:LayoutDivContainer>
	</div>
</asp:Content>
