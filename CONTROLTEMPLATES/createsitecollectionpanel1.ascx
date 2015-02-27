<%@ Control Language="C#" Inherits="Microsoft.SharePoint.Portal.ServerAdmin.CreateSiteCollectionPanel1,Microsoft.SharePoint.Portal,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"   compilationMode="Always" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>

<wssuc:InputFormSection Visible="false" id="SiteCategoryInputFormSection" Title="<%$Resources:sps, SiteCategoryPanel_section_title%>" runat="server"> 
    <Template_Description>
        <SharePoint:EncodedLiteral runat="server" text="<%$Resources:sps, SiteCategoryPanel_section_desc%>" EncodeMethod='HtmlEncode'/>
    </Template_Description>

	<Template_InputFormControls>
	    <wssawc:InputFormCheckBox ID="SiteDirEnforceNewListing" Runat="server" LabelText="<%$Resources:sps, SiteCategoryPanel_CbEnforce_Label%>" />
	    <tr>
	      <td class="ms-authoringcontrols" id="CaptureViewControlsContainer" colspan="2">
			<asp:PlaceHolder id="CaptureViewControls" runat="server" />
		  </td>
		</tr>
    </Template_InputFormControls>
</wssuc:InputFormSection>
