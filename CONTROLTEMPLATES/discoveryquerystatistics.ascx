<!-- _lcid="1033" _version="15.0.4631" _dal="1" -->
<!-- _LocalBinding -->
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Assembly Name="Microsoft.Office.Policy.Pages, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SearchWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Sharepoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint.ApplicationPages, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Discovery.WebControls.DiscoveryQueryStatistics" %>
<SharePoint:ScriptBlock runat="server">
	function DQSmarkEDiscoveryLoaded() {
		Discovery.DiscoveryQueryStatistics.registerOnSDP();
	}
	function DQSloadEDiscovery() {
		EnsureScript('EDiscovery.DiscoverySearchControls.js', 'undefined', null);
		ExecuteOrDelayUntilScriptLoaded(DQSmarkEDiscoveryLoaded, 'EDiscovery.DiscoverySearchControls.js');
	}
	var app = Sys.Application;
	app.add_load(DQSloadEDiscovery);
</SharePoint:ScriptBlock>
	<div style="display:none">
		 <SearchWC:DataProviderScriptWebPart
				QueryGroupName="Discovery_Sharepoint_Stats"
				id=SPStatsDataProvider
				ClientType="DiscoverySearch"
				ProcessBestBets="false"
				BypassResultTypes="true"
				AsynchronousResultRetrieval="true"
				UpdateAjaxNavigate="false"
				runat="server"
				FrameType="None" />
		<SearchWC:DataProviderScriptWebPart
				QueryGroupName="Discovery_Exchange_Stats"
				id=EXStatsDataProvider
				ClientType="DiscoverySearch"
				ProcessBestBets="false"
				BypassResultTypes="true"
				AsynchronousResultRetrieval="true"
				UpdateAjaxNavigate="false"
				runat="server"
				FrameType="None" />
		<SearchWC:SearchBoxScriptWebPart
				id="DiscoveryStatsSearchbox"
				runat="server"
				FrameType="None"
				SetFocusOnPageLoad="true"
				RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Search/Control_Blank.js"
				QueryGroupNamesJson="[&quot;Discovery_Sharepoint_Stats&quot;,&quot;Discovery_Exchange_Stats&quot;]"
				UpdatePageTitle="False"
				MaintainQueryState="True" />
	</div>
	<div style="max-height:200px; overflow:auto" >
		<table id="Discovery_Query_Statistics_Container" rules="rows">
			<caption id="discovery_query_statistics_header" style="padding-bottom:3px;" class="ms-hide ms-alignLeft">
				<h2 class="ms-bodyText"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcpolicy, ediscovery_statistics_title%>" EncodeMethod='HtmlEncode'/></h2>
			</caption>
		</table>
	</div>
	<div id="discovery_query_statistics_error" class="ms-hide">
		<span><SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcpolicy, ediscovery_statistics_too_many_sources_error%>" EncodeMethod='HtmlEncode'/></span>
	</div>
	<SharePoint:PageRenderMode runat="server" RenderModeType="Standard" />
