<%@ Control className="ProjectSearchBrowseUserControl" Language="C#" Inherits="Microsoft.SharePoint.Portal.WebControls.ProjectSearchBrowseUserControl&#44;Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint.Portal.Project" %>
<%@ Register Tagprefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="OSRVUPWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server.UserProfiles, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="MSSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>

<%@ Register Tagprefix="SearchWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="MSSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<SharePoint:CssRegistration name="Themable/portal.css" runat="server"/>

<div id="<%= this.ClientID %>_projectSearchBrowseUserControl" class="MySiteRecs">

    <SharePoint:ScriptBlock runat="server">
        <%= this.SetVariablesScript %>
    </SharePoint:ScriptBlock>

    <div class="ms-recs-titleAndRefreshDiv">
        <div id="<%= this.ClientID %>_titleDiv" class="ms-floatLeft ms-fullWidth ms-recs-titleDivOuter ms-recs-underline">
            <div class="ms-noWrap ms-webpart-titleText ms-recs-titleDivInner"><%= Title %></div>
        </div>

        <a id="<%= this.ClientID %>_refreshDiv" class='ms-floatRight ms-recs-RefreshDiv' onclick='javascript:MyRecs.Refresh();' href='javascript:MyRecs.Refresh();' title='<%= RefreshText %>' alt="<%= RefreshText %>">
            <img title="<%= RefreshText %>" alt="<%= RefreshText %>" src="_layouts/15/images/CoAuth_PlaceholderNeedRefresh.16x16x32.png">
        </a>
    </div>

    <div id="<%= this.ClientID %>_cachedBlobDiv" class="ms-hide"><%= CachedBlobString %></div>

    <asp:UpdatePanel runat="server" class="ms-clear" UpdateMode="Conditional" ChildrenAsTriggers="False">
        <ContentTemplate>

            <div id="<%= this.ClientID %>_emptyStateDiv" class="ms-hide ms-attractMode-Background ms-alignCenter ms-recs-emptyStateOuterDiv">
                <div class="ms-recs-emptyStateInnerDiv">
                    <span class="ms-emptyMode">
                        <SPSWC:StringValue LocId="ProjectDiscovery_EmptyState_Text" runat="server" />
                    </span>
                </div>
            </div>

            <div id="<%= this.ClientID %>_noItemsDiv" class="ms-hide ms-soften">
                <SPSWC:StringValue LocId="ProjectDiscovery_Default_NoResults_Text" runat="server" />
            </div>

            <div id="<%= this.ClientID %>_processingDiv" class="ms-hide ms-recs-processingDiv ms-floatRight" role="alert" style="left: 0px;">
                <img src="/_layouts/15/1033/images/progress16.gif">
                <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WorkingOnIt%>" EncodeMethod='HtmlEncode'/>
            </div>

            <div id="<%= this.ClientID %>_resultDiv" ms-fullWidth"></div>

        </ContentTemplate>
    </asp:UpdatePanel>

    <div>

        <a id="<%= this.ClientID %>_seeAllLink" class='ms-noWrap ms-hide ms-floatLeft ms-commandLink'  href="<%= AllRecommendationsUrl %>">
            <SPSWC:StringValue LocId="ProjectDiscovery_SeeAllRecommendations_Text" runat="server" />
        </a>
        <a id="<%= this.ClientID %>_showMoreLink" class='ms-noWrap ms-hide ms-floatLeft ms-commandLink' onClick="MyRecs.ShowMoreItems(); return false;" href="#">
            <SPSWC:StringValue LocId="ProjectDiscovery_SeeMoreRecommendations_Text" runat="server" />
        </a>

        <span id="<%= this.ClientID %>_betweenShowMoreAndShowLessSpan" class='ms-noWrap ms-floatLeft ms-hide ms-commandLink'>&nbsp|&nbsp</span>

        <a id="<%= this.ClientID %>_showLessLink" class='ms-noWrap ms-hide ms-floatLeft ms-commandLink' onClick="MyRecs.ShowLessItems(); return false;" href="#">
            <SPSWC:StringValue LocId="ProjectDiscovery_SeeFewerRecommendations_Text" runat="server" />
        </a>

    </div>

    <%-- Do not remove: QueryDiv is on the page for testing purposes, it is used by the MySiteRecommendations BVT --%>
    <div id="<%= this.ClientID %>_queryDiv" class="ms-hide"></div>

    <div id="<%= this.ClientID %>_queryInfoDiv" class="ms-hide"></div>

    <div id="<%= this.ClientID %>_urlLengthDiv" class="ms-hide">
        <%= UrlLength %>
    </div>

</div>
