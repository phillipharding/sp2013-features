<%@ Assembly Name="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Search.Internal.UI.WebControls.ManageQueryClientTypesControl"    compilationMode="Always" %>

<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<div class = "ms-descriptiontext" style="padding-bottom: 10px;max-width:100%">
    <asp:Literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search, ManageQueryClientTypes_Description_Label%>"/><br/>
    <br/>
    <asp:Label runat="server" id="queryThrottlingStatus" font-bold="true"/><br/>
    <br/>
</div>

<wssuc:ToolBar runat="server" id="clientTypesToolBar">
    <Template_Buttons>
        <wssuc:ToolBarButton runat="server"
            id="clientTypeNewButton"
            imageUrl="/_layouts/15/images/newitem.gif?rev=23"
            text="<%$Resources:Microsoft.Office.Server.Search, ManageQueryClientTypes_NewQueryClientType_Label%>"
            toolTip="<%$Resources:Microsoft.Office.Server.Search, ManageQueryClientTypes_NewQueryClientType_Label%>"
            accessKey="<%$Resources:Microsoft.Office.Server.Search, ManageQueryClientTypes_NewQueryClientType_AccessKey%>"/>
    </Template_Buttons>
    <Template_RightButtons> 
        <SharePoint:SPGridViewPager runat="server" id="pager" gridViewId=clientTypesGridView/>
    </Template_RightButtons>
</wssuc:ToolBar>

<wssawc:SPGridView runat="server"
    id="clientTypesGridView"
    allowGrouping="true"
    allowGroupCollapse="true"
    groupField="clientTypeGroupOrder"
    groupDisplayTextField="clientTypeGroupName"
    displayGroupFieldName="false"
    autoGenerateColumns="false"
    enableViewState="false"
    allowSorting="false"
    pageSize="100"
    allowPaging="false"
    emptyDataText="<%$Resources:Microsoft.Office.Server.Search, ManageQueryClientTypes_EmptyDataText%>">
    <Columns>
        <wssawc:SPMenuField
            menuTemplateId="clientTypesMenu"
            hiddenMenuItemIdsFields="clientTypeHiddenMenu"
            textFields="clientTypeName"
            navigateUrlFields="clientTypeEditUrl"
            headerText="<%$Resources:Microsoft.Office.Server.Search, ManageQueryClientTypes_Type_Label%>"
            tokenNameAndValueFields="TYPEID=clientTypeId,NAME=clientTypeName,EDIT=clientTypeEditUrl"/>
        <asp:BoundField dataField="clientTypeThrottlingTier" headerText="<%$Resources:Microsoft.Office.Server.Search, ManageQueryClientTypes_Tier_Label%>"/>
    </Columns>
</wssawc:SPGridView>

<wssawc:MenuTemplate runat="server" id="clientTypesMenu">
    <wssawc:MenuItemTemplate runat="server"
        id="editMenuItemTemplate"
        imageUrl="/_layouts/15/images/edititem.gif?rev=23"
        text="<%$Resources:Microsoft.Office.Server.Search, ManageQueryClientTypes_EditType_Menu%>"
        clientOnClickNavigateUrl="%EDIT%"/>
    <wssawc:MenuItemTemplate runat="server"
        id="deleteMenuItemTemplate"
        imageUrl="/_layouts/15/images/delete.gif?rev=23"
        text="<%$Resources:Microsoft.Office.Server.Search, ManageQueryClientTypes_DeleteType_Menu%>"
        clientOnClickNavigateUrl="javascript:ConfirmDelete('DeleteClientType;%TYPEID%')"/>
</wssawc:MenuTemplate>
