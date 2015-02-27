﻿<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="CMS" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" Inherits="Microsoft.SharePoint.Publishing.Internal.CodeBehind.RegionalSettingsPushdown,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"   compilationMode="Always" %>
<!-- Begin Regional Settings Extensions (Push Down) -->
	<wssuc:InputFormSection Title="<%$Resources:cms,RegionalSettingsExtensions_Pushdown_Title%>"
			Description="<%$Resources:cms,RegionalSettingsExtensions_Pushdown_Description%>"
			runat="server">
	   <Template_InputFormControls>
				 <Template_Control>
				   <asp:CheckBox id="chkRegionalSettingsPushdown" Text="<%$Resources:cms,RegionalSettingsExtensions_Pushdown_Label%>" AccessKey="<%$Resources:cms,RegionalSettingsExtensions_Pushdown_AccessKey%>" OnClick="ChangeEnabledState()" runat="server" />
				 </Template_Control>
	   </Template_InputFormControls>
	</wssuc:InputFormSection>
<!-- End Regional Settings Extensions (Push Down) -->
