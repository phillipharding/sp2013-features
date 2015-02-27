<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="VisioWebControls" Namespace="Microsoft.Office.Visio.Server.WebControls" Assembly="Microsoft.Office.Visio.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" 
            Inherits="Microsoft.Office.Visio.Server.WebControls.WorkflowStatus,Microsoft.Office.Visio.Server,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" 

            CompilationMode="Always" %>

<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>

<head>
<meta name="ProgId" content="SharePoint.WebPartPage.Document">
<meta name="WebPartPageExpansion" content="full">
</head>

<!-- begin Visio Web Access -->
<VisioWebControls:VisioWebAccess id="VisioWebAccess1" runat="server" 
        webpart="true" 
        height="400px">
	<WebPart 
	    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	    xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
	    xmlns="http://schemas.microsoft.com/WebPart/v2">
		    <Title>Workflow Visualization</Title>
		    <Description></Description>
		    <FrameType>Standard</FrameType>
	</WebPart>
    <input type="hidden" id="WFInstanceID" value="" runat="server" />
</VisioWebControls:VisioWebAccess>
<!-- end Visio Web Access -->

<script language="javascript">
Sys.Application.add_load(onApplicationLoadForWFS)

</script>
