<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Register TagPrefix="spswc" TagName="AnalysisServicesKpiNewFormControl" src="/_layouts/AnalysisServicesKpiNewFormControl.ascx" %>
<%@ Register TagPrefix="spswc" TagName="AnalysisServicesKpiEditFormControl" src="/_layouts/AnalysisServicesKpiEditFormControl.ascx" %>
<%@ Register TagPrefix="spswc" TagName="AnalysisServicesKpiDisplayFormControl" src="/_layouts/AnalysisServicesKpiDisplayFormControl.ascx" %>
<%@ Register TagPrefix="spswc" TagName="ExcelKpiNewFormControl" src="/_layouts/ExcelKpiNewFormControl.ascx" %>
<%@ Register TagPrefix="spswc" TagName="ExcelKpiEditFormControl" src="/_layouts/ExcelKpiEditFormControl.ascx" %>
<%@ Register TagPrefix="spswc" TagName="ExcelKpiDisplayFormControl" src="/_layouts/ExcelKpiDisplayFormControl.ascx" %>
<%@ Register TagPrefix="spswc" TagName="SharePointKpiNewFormControl" src="/_layouts/SharePointKpiNewFormControl.ascx" %>
<%@ Register TagPrefix="spswc" TagName="SharePointKpiEditFormControl" src="/_layouts/SharePointKpiEditFormControl.ascx" %>
<%@ Register TagPrefix="spswc" TagName="SharePointKpiDisplayFormControl" src="/_layouts/SharePointKpiDisplayFormControl.ascx" %>
<%@ Register TagPrefix="spswc" TagName="SimpleKpiNewFormControl" src="/_layouts/SimpleKpiNewFormControl.ascx" %>
<%@ Register TagPrefix="spswc" TagName="SimpleKpiEditFormControl" src="/_layouts/SimpleKpiEditFormControl.ascx" %>
<%@ Register TagPrefix="spswc" TagName="SimpleKpiDisplayFormControl" src="/_layouts/SimpleKpiDisplayFormControl.ascx" %>

<SharePoint:RenderingTemplate ID="AnalysisServicesKpiNewForm" runat="server">
    <Template>
        <spswc:AnalysisServicesKpiNewFormControl runat="server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate ID="AnalysisServicesKpiEditForm" runat="server">
    <Template>
	    <wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" runat="server">
			<Template_Buttons>
				<SharePoint:DeleteItemButton runat="server" Text="<%$Resources:sps,DeleteIndicator%>" />
			</Template_Buttons>
		</wssuc:ToolBar>
        <spswc:AnalysisServicesKpiEditFormControl runat="server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate ID="AnalysisServicesKpiDisplayForm" runat="server">
    <Template>
        <wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" runat="server">
			<Template_Buttons>
				<SharePoint:EditItemButton runat="server" Text="<%$Resources:sps,EditIndicator%>" />
				<SharePoint:DeleteItemButton runat="server" Text="<%$Resources:sps,DeleteIndicator%>" />
				<SharePoint:ManagePermissionsButton runat="server" />
			</Template_Buttons>
        </wssuc:ToolBar>
        <spswc:AnalysisServicesKpiDisplayFormControl runat="server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate ID="ExcelKpiNewForm" runat="server">
    <Template>
        <spswc:ExcelKpiNewFormControl runat="server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate ID="ExcelKpiEditForm" runat="server">
    <Template>
	    <wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" runat="server">
			<Template_Buttons>
				<SharePoint:DeleteItemButton runat="server" Text="<%$Resources:sps,DeleteIndicator%>" />
			</Template_Buttons>
		</wssuc:ToolBar>
        <spswc:ExcelKpiEditFormControl runat="server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate ID="ExcelKpiDisplayForm" runat="server">
    <Template>
        <wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" runat="server">
			<Template_Buttons>
				<SharePoint:EditItemButton runat="server" Text="<%$Resources:sps,EditIndicator%>" />
				<SharePoint:DeleteItemButton runat="server" Text="<%$Resources:sps,DeleteIndicator%>" />
				<SharePoint:ManagePermissionsButton runat="server" />
			</Template_Buttons>
        </wssuc:ToolBar>
        <spswc:ExcelKpiDisplayFormControl runat="server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate ID="SharePointKpiNewForm" runat="server">
    <Template>
        <spswc:SharePointKpiNewFormControl runat="server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate ID="SharePointKpiEditForm" runat="server">
    <Template>
	    <wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" runat="server">
			<Template_Buttons>
				<SharePoint:DeleteItemButton runat="server" Text="<%$Resources:sps,DeleteIndicator%>" />
			</Template_Buttons>
		</wssuc:ToolBar>
        <spswc:SharePointKpiEditFormControl runat="server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate ID="SharePointKpiDisplayForm" runat="server">
    <Template>
        <wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" runat="server">
			<Template_Buttons>
				<SharePoint:EditItemButton runat="server" Text="<%$Resources:sps,EditIndicator%>" />
				<SharePoint:DeleteItemButton runat="server" Text="<%$Resources:sps,DeleteIndicator%>" />
				<SharePoint:ManagePermissionsButton runat="server" />
			</Template_Buttons>
        </wssuc:ToolBar>
        <spswc:SharePointKpiDisplayFormControl runat="server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate ID="SimpleKpiNewForm" runat="server">
    <Template>
        <spswc:SimpleKpiNewFormControl runat="server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate ID="SimpleKpiEditForm" runat="server">
    <Template>
	    <wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" runat="server">
			<Template_Buttons>
				<SharePoint:DeleteItemButton runat="server" Text="<%$Resources:sps,DeleteIndicator%>" />
			</Template_Buttons>
		</wssuc:ToolBar>
        <spswc:SimpleKpiEditFormControl runat="server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate ID="SimpleKpiDisplayForm" runat="server">
    <Template>
        <wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" runat="server">
			<Template_Buttons>
				<SharePoint:EditItemButton runat="server" Text="<%$Resources:sps,EditIndicator%>" />
				<SharePoint:DeleteItemButton runat="server" Text="<%$Resources:sps,DeleteIndicator%>" />
				<SharePoint:ManagePermissionsButton runat="server" />
			</Template_Buttons>
        </wssuc:ToolBar>
        <spswc:SimpleKpiDisplayFormControl runat="server" />
    </Template>
</SharePoint:RenderingTemplate>
