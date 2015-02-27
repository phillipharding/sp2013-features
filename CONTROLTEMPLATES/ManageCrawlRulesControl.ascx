<%@ Assembly Name="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Search.Internal.UI.WebControls.ManageCrawlRulesControl"    compilationMode="Always" %>

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
                <SPSWC:LabelLoc runat="server" TextLocId="ManageCrawlRules_PageHelp_Text" class="ms-descriptiontext"
                    AssociatedControlId="testTextBox" />
                </td>
            </tr>
            <tr>
                <td valign="bottom" class="ms-descriptiontext" style="padding-bottom: 10px">
                <SPSWC:LabelLoc runat="server" TextLocId="ManageCrawlRules_Test_Label" style="color:black;"/>
                  <br/>
                  <br/>
                <SPSWC:TextBoxLoc runat="server" 
                    width="75%"
                    id="testTextBox"
                    onkeydown="return OnKeyDownTestBox();"
                    cssClass="ms-long"
                    alt="<%$Resources:Microsoft.Office.Server.Search, ManageCrawlRules_ListURLColHeader_Label%>"
                    MaxLength = 1000 />
                  <br/>
                  <br/>
                <SPSWC:ButtonLoc runat="server"
                    id="testButton"
                    textLocId="ManageCrawlRules_TestButton_Label"
                    onClick="OnClickTest"
                    cssClass="ms-bbutton"/>
                </td>
            </tr>
            <asp:Literal runat="server" id="testResponseLabel"/>
        </table>  

        <wssuc:ToolBar id="toolBar" runat="server">
            <Template_Buttons>
                <wssuc:ToolBarButton runat="server"
                    id="createToolbarButton"
                    imageUrl="/_layouts/15/images/newitem.gif?rev=23"
                    accessKey="<%$Resources:Microsoft.Office.Server.Search, ManageCrawlRules_AddCrawlRule_AccessKey%>"/>
            </Template_Buttons>
        </wssuc:ToolBar>

        <wssawc:SPGridView runat="server" 
            id="mappingGrid" 
            autoGenerateColumns="False" 
            enableViewState="false"
            allowPaging="false"
            allowSorting="true"
            pageSize="3">
            <Columns>
                <asp:BoundField 
                    dataField="TestMatch"
                    itemStyle-Font-Bold="true"
                    itemStyle-ForeColor="red"/>
                <wssawc:SPMenuField 
                    headerText="<%$Resources:Microsoft.Office.Server.Search, ManageCrawlRules_ListUrlColHeader_Label%>"
                    menuTemplateId="SRPMenu" 
                    textFields="RulePath" 
                    navigateUrlFields="EditRule"
                    tokenNameAndValueFields="EDITRULE=EditRule,DELETERULESCRIPT=DeleteRule"></wssawc:SPMenuField>
                <asp:BoundField 
                    headerText="<%$Resources:Microsoft.Office.Server.Search, ManageCrawlRules_ListTypeColHeader_Label%>"
                    dataField="Type"/>
                <asp:BoundField 
                    headerText="<%$Resources:Microsoft.Office.Server.Search, ManageCrawlRules_ListAccountColHeader_Label%>"
                    dataField="Authentication"/>
                <asp:TemplateField>
                    <HeaderTemplate><asp:literal runat="server" text="<%$Resources:Microsoft.Office.Server.Search, ManageCrawlRules_ListOrderColHeader_Label%>"/></HeaderTemplate>  
                    <ItemTemplate>
                        <%# DataBinder.Eval(Container.DataItem, "ListItem") %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </wssawc:SPGridView>

        <wssawc:MenuTemplate runat="server" id="SRPMenu">
            <wssawc:MenuItemTemplate runat="server" 
                id="editMenuItemTemplate" 
                clientOnClickNavigateUrl="%EDITRULE%"/>
            <wssawc:MenuItemTemplate runat="server" 
                id="deleteMenuItemTemplate" 
                clientOnClickScript="%DELETERULESCRIPT%"/>
        </wssawc:MenuTemplate>                   

    </td></tr>
    </table>
