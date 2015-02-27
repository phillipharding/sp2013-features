<%@ Assembly Name="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Search.Internal.UI.WebControls.ListContentSourcesControl"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<wssawc:HtcMenuClientFiles runat="server"/> 
<script src="/_layouts/<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID%>/ie55up.js" type="text/JavaScript" language="JavaScript"></script>

<table border="0" cellspacing="0" cellpadding="0" class="ms-propertysheet" width="100%">
<tr><td>
    <table width="100%" cellpadding="2" cellspacing="0" border="0">
        <tr>
            <td valign="top" class="ms-descriptiontext" style="padding-bottom: 10px">
            <asp:Label Text="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_PageHelp_Text%>" runat="server" /> 
        </tr>
    </table>

    <wssuc:ToolBar id="toolBar" runat="server">
        <Template_Buttons>
            <wssuc:ToolBarButton runat="server"
                id="createToolbarButton"
                imageUrl="/_layouts/15/images/newitem.gif?rev=23"
                accessKey="<%$Resources:Microsoft.Office.Server.Search, ContentSourceList_AddContentSource_AccessKey%>"/>
            <wssuc:ToolBarButton runat="server"
                id="createCustomToolbarButton"
                imageUrl="/_layouts/15/images/newitem.gif?rev=23"
                accessKey="<%$Resources:Microsoft.Office.Server.Search, ContentSourceList_AddCustomContentSource_AccessKey%>"/>
            <wssuc:ToolBarButton runat="server"
                id="refreshToolbarButton"
                imageUrl="/_layouts/15/images/refresh.gif?rev=23"
                accessKey="<%$Resources:Microsoft.Office.Server.Search, ContentSourceList_Refresh_AccessKey%>"/>
            <wssuc:ToolBarButton runat="server"
                id="startAllCrawlsToolbarButton"
                imageUrl="/_layouts/15/images/NextRecordHS.png?rev=23"
                Text="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_StartAllCrawls_Label%>"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_StartAllCrawls_Label%>"
                Visible="false"
                />
            <wssuc:ToolBarButton runat="server"
                id="stopAllCrawlsToolbarButton"
                imageUrl="/_layouts/15/images/StopHS.png?rev=23"
                Text="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_StopAllCrawls_Label%>"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_StopAllCrawls_Label%>"
                Visible="false"
                />
            <wssuc:ToolBarButton runat="server"
                id="pauseAllCrawlsToolbarButton"
                imageUrl="/_layouts/15/images/PauseHS.png?rev=23"
                Text="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_PauseAllCrawls_Label%>"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_PauseAllCrawls_Label%>"
                Visible="false"
                />
            <wssuc:ToolBarButton runat="server"
                id="resumeAllCrawlsToolbarButton"
                imageUrl="/_layouts/15/images/ResumeAllCrawlsHS.png?rev=23"
                Text="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_ResumeAllCrawls_Label%>"
                ToolTip="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_ResumeAllCrawls_Label%>"
                Visible="false"
                />
        </Template_Buttons>
    </wssuc:ToolBar>

    <wssawc:SPGridView runat="server" 
        id="gridView" 
        autoGenerateColumns="False" 
        enableViewState="false"
        allowPaging="false"
        allowSorting="true"
        pageSize="3">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate><asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_ListTypeColHeader_Label%>"/></HeaderTemplate>
                <ItemTemplate>
                    <%# DataBinder.Eval(Container.DataItem, "Icon") %>
                </ItemTemplate>
            </asp:TemplateField>
            <wssawc:SPMenuField 
                headerText="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_ListNameColHeader_Label%>"
                menuTemplateId="ListMenu" 
                textFields="Name" 
                navigateUrlFields="EditLink"
                tokenNameAndValueFields="EDIT=EditLink,VIEWLOG=LogLink,STARTFULL=StartFullScript,STARTINC=StartIncScript,RESUME=ResumeScript,PAUSE=PauseScript,STOP=StopScript,DISABLECONTINUOUS=DisableContinuousScript,DELETESCRIPT=DeleteScript"
                disabledMenuItemIdsFields="DisabledMenuItems"
                HiddenMenuItemIdsFields="HiddenMenuItems" />
            <asp:BoundField 
                headerText="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_ListStatusColHeader_Label%>"
                dataField="Status"/>
            <asp:BoundField 
                headerText="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_CurrentCrawlDurationHeader_Label%>"
                dataField = "CurrentCrawlDuration"/>
            <asp:BoundField 
                headerText="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_LastCrawlDurationHeader_Label%>"
                dataField = "LastCrawlDuration"/>
            <asp:BoundField 
                headerText="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_LastCrawlCompletedHeader_Label%>"
                dataField = "LastCrawlCompleted"/>               
            <asp:BoundField                 
                headerText="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_ListNextFullColHeader_Label%>"
                dataField="FullCrawl"/>
            <asp:BoundField 
                headerText="<%$Resources:Microsoft.Office.Server.Search, ListContentSources_ListNextIncColHeader_Label%>"
                dataField="IncCrawl"/>
            <asp:BoundField 
                headerText="<%$Resources:Microsoft.Office.Server.Search, AddContentSource_PriorityLabel_Text%>"
                dataField="Priority" 
                HtmlEncode="true"/>
            <asp:TemplateField>
                <HeaderStyle width="1"/>
                <ItemTemplate>
                    <%# DataBinder.Eval(Container.DataItem, "StatusId") %>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </wssawc:SPGridView>

    <wssawc:MenuTemplate runat="server" id="ListMenu">
        <wssawc:MenuItemTemplate runat="server" 
            id="editMenuItemTemplate" 
            clientOnClickNavigateUrl="%EDIT%"/>
        <wssawc:MenuItemTemplate runat="server" 
            id="viewLogMenuItemTemplate" 
            clientOnClickNavigateUrl="%VIEWLOG%"/>
        <wssawc:MenuSeparatorTemplate runat="server"/>
        <wssawc:MenuItemTemplate runat="server" 
            id="startFullMenuItemTemplate" 
            clientOnClickScript="%STARTFULL%"/>
        <wssawc:MenuItemTemplate runat="server" 
            id="startIncMenuItemTemplate" 
            clientOnClickScript="%STARTINC%"/>
        <wssawc:MenuItemTemplate runat="server" 
            id="resumeMenuItemTemplate" 
            clientOnClickScript="%RESUME%"/>
        <wssawc:MenuSeparatorTemplate runat="server"/>
        <wssawc:MenuItemTemplate runat="server" 
            id="pauseMenuItemTemplate" 
            clientOnClickScript="%PAUSE%"/>
        <wssawc:MenuItemTemplate runat="server" 
            id="stopMenuItemTemplate" 
            clientOnClickScript="%STOP%"/>
        <wssawc:MenuItemTemplate runat="server" 
            id="disableContinuousMenuItemTemplate" 
            clientOnClickScript="%DISABLECONTINUOUS%"/>
        <wssawc:MenuSeparatorTemplate runat="server"/>
        <wssawc:MenuItemTemplate runat="server" 
            id="deleteMenuItemTemplate" 
            clientOnClickScript="%DELETESCRIPT%"/>
    </wssawc:MenuTemplate>                   

</td></tr>
</table>
