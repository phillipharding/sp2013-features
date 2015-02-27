<%@ Assembly Name="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Search.Internal.UI.WebControls.ManageResultSourcesControl"    compilationMode="Always" %>

<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<SharePoint:ScriptBlock runat="server">
var g_editSourceUrl = "";

function EditTestSourceOnOk(dialogResult, returnValue)
{
	if (dialogResult == 1)
    {
        var editSourceUrl = g_editSourceUrl + (returnValue ? returnValue : "");
		STSNavigate(editSourceUrl);
    }
}
function OpenTestSourceDialog(url, editSourceUrl)
{    
    g_editSourceUrl = editSourceUrl;

	var dlgOptions = {
		url: url,
		dialogReturnValueCallback : EditTestSourceOnOk
	};
	EnsureScriptParams("SP.UI.Dialog.js", "SP.UI.ModalDialog.showModalDialog", dlgOptions);
}    
</SharePoint:ScriptBlock>  

    <wssuc:ToolBar id="toolBar" runat="server">
        <Template_Buttons>
            <wssuc:ToolBarButton runat="server"
                id="newSourceToolbarButton"
                imageUrl="/_layouts/15/images/newitem.gif?rev=23"
                Text="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_NewSource_Label%>"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_NewSource_Label%>"
                accessKey="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_NewSource_AccessKey%>"/>

            <wssuc:ToolBarButton runat="server"
                id="searchScopesToolbarButton"
                navigateUrl="viewscopes.aspx"
                Text="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_SearchScopes_Label%>"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_SearchScopes_Label%>"
                accessKey="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_SearchScopes_AccessKey%>"/>
        </Template_Buttons>
        <Template_RightButtons> 
            <SharePoint:SPGridViewPager runat="server"
                id="Pager" 
                GridViewId=ResultSources /> 
        </Template_RightButtons> 
    </wssuc:ToolBar>

        <wssawc:SPGridView runat="server" 
            id="ResultSources" 
            autoGenerateColumns="false" 
            enableViewState="false"
            allowPaging="false"
            allowSorting="false"
            allowGrouping="true"
            allowGroupCollapse="false"
            GroupField="GroupOrder"
            GroupDisplayTextField="GroupName"
            DisplayGroupFieldName="false"
            GroupColumnHeaderCssClass="ms-metadata"
            EmptyDataText="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_EmptyDataText%>"
            pageSize="3">
            <Columns>
                <wssawc:SPMenuField 
                    headerText="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_SourceDisplayName_Label%>"
                    menuTemplateId="sourceMenu"
                    hiddenMenuItemIdsFields="HiddenMenuItemIdsFields"
                    textFields="SourceDisplayName" 
                    navigateUrlFields="Url"
                    tokenNameAndValueFields="SOURCEID=SourceId,EDIT=EditSource,VIEW=ViewSource,COPY=CopySource,NAME=SourceDisplayName,TEST=TestSource">

                </wssawc:SPMenuField>

                <asp:BoundField 
                    headerText="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_CreationDate_Label%>"
                    dataField="CreationDate"/>
                <asp:ImageField
                    headerText="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_IsDefault_Label%>"
                    dataImageUrlField="IsDefaultImagePath"
                    readOnly="true"/>
                <asp:BoundField 
                    headerText="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_Status_Label%>"
                    dataField="Status"/>
            </Columns>
        </wssawc:SPGridView>

        <wssawc:MenuTemplate runat="server" id="sourceMenu">
            <wssawc:MenuItemTemplate runat="server" 
                id="editMenuItemTemplate" 
                ImageUrl="/_layouts/15/images/edititem.gif?rev=23"
                Text="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_EditSource_Menu%>"
                Title="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_EditSource_Menu%>"
                clientOnClickNavigateUrl="%EDIT%"/>
            <wssawc:MenuItemTemplate runat="server" 
                id="viewMenuItemTemplate" 
                ImageUrl="/_layouts/15/images/blank.gif?rev=23"
                Text="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_ViewSource_Menu%>"
                Title="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_ViewSource_Menu%>"
                clientOnClickNavigateUrl="%VIEW%"/>
            <wssawc:MenuItemTemplate runat="server" 
                id="copyMenuItemTemplate" 
                ImageUrl="/_layouts/15/images/copy16.gif?rev=23"
                Text="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_CopySource_Menu%>"
                Title="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_CopySource_Menu%>"
                clientOnClickNavigateUrl="%COPY%"/>
            <wssawc:MenuItemTemplate runat="server" 
                id="deleteMenuItemTemplate" 
                ImageUrl="/_layouts/15/images/delete.gif?rev=23"
                Text="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_DeleteSource_Menu%>"
                Title="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_DeleteSource_Menu%>"
                clientOnClickNavigateUrl="javascript:ConfirmDelete('DeleteSource;%SOURCEID%')"
                />

            <wssawc:MenuItemTemplate runat="server" 
                id="activateMenuItemTemplate" 
                ImageUrl="/_layouts/15/images/blank.gif?rev=23"
                Text="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_ActivateSource_Menu%>"
                Title="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_ActivateSource_Menu%>"
                clientOnClickNavigateUrl="javascript:ActivateDeactivate('ActivateSource;%SOURCEID%')"/>
            <wssawc:MenuItemTemplate runat="server" 
                id="deactivateMenuItemTemplate" 
                ImageUrl="/_layouts/15/images/blank.gif?rev=23"
                Text="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_DeactivateSource_Menu%>"
                Title="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_DeactivateSource_Menu%>"
                clientOnClickNavigateUrl="javascript:ActivateDeactivate('DeactivateSource;%SOURCEID%')"/>
            <wssawc:MenuItemTemplate runat="server" 
                id="makeDefaultMenuItemTemplate" 
                ImageUrl="/_layouts/15/images/blank.gif?rev=23"
                Text="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_MakeDefault_Menu%>"
                Title="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_MakeDefault_Menu%>"
                clientOnClickNavigateUrl="javascript:MakeDefault('MakeDefault;%SOURCEID%')"/>
            <wssawc:MenuItemTemplate runat="server" 
                id="testMenuItemTemplate" 
                ImageUrl="/_layouts/15/images/blank.gif?rev=23"
                Text="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_TestSource_Menu%>"
                Title="<%$Resources:Microsoft.Office.Server.Search, ManageResultSources_TestSource_Menu%>"
                clientOnClickNavigateUrl="javascript:OpenTestSourceDialog('%TEST%', '%EDIT%')"/>
        </wssawc:MenuTemplate>                   
