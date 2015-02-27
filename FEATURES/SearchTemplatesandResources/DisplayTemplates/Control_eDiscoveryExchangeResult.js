function ULSaGt(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Control_eDiscoveryExchangeResult.js";return o;}
function DisplayTemplate_a7dc12e3859042a3996274d358356fa3(ctx) {ULSaGt:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_a7dc12e3859042a3996274d358356fa3.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_eDiscoveryExchangeResult.js';
  ctx['DisplayTemplateData']['TemplateType']='Control';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

ms_outHtml.push('',''
,''
);
var totalRows = !$isNull(ctx.ListData) && !$isEmptyArray(ctx.ListData.ResultTables) && !$isNull(ctx.ListData.ResultTables[0].Properties.Discovery_TotalItemCount) ? 
    ctx.ListData.ResultTables[0].Properties.Discovery_TotalItemCount : 0;
var itemsPerPage = ctx.DataProvider.get_resultsPerPage();
var showPaging = totalRows > itemsPerPage;
if(ctx.ClientControl.get_showResultCount() && totalRows > 0) {
ms_outHtml.push(''
,'        <span class="ms-srch-resultscount" id="ResultCount">'
,'            ', String.format($htmlEncode($resource("rs_ApproximateResultCount")), $htmlEncode(totalRows.localeFormat("N0"))) ,''
,'        </span>'
); 
}
ctx.ListDataJSONGroupsKey = "ResultTables";
ms_outHtml.push(''
,'         <table id="DiscoveryResultsEX" class="edisc-SearchResultsTable">'
,'             <tr>'
,'                <th class="Subject">', $htmlEncode($resource("control_EDisc_Subject")) ,'</th>'
,'                <th class="People">', $htmlEncode($resource("control_EDisc_Recipients")) ,'</th>'
,'                <th class="People">', $htmlEncode($resource("control_EDisc_Sender")) ,'</th>'
,'                <th class="Date" title="', $htmlEncode($resource('control_EDisc_DateSentTooltip')) ,'">', $htmlEncode($resource("control_EDisc_DateSent")) ,'</th>'
,'            </tr>'
,'            ', ctx.RenderGroups(ctx) ,''
,'        </table>'
); 
if(ctx.ClientControl.get_shouldShowNoResultMessage())
{ 
ms_outHtml.push(''
,'        <div id="NoResult" class="ms-srch-result-noResults">'
,'            <div class="ms-textLarge ms-srch-result-noResultsTitle">', $htmlEncode($resource("rs_NoResultsTitle")) ,'</div>'
,'            <div>', $htmlEncode($resource("rs_NoResultsSuggestions")) ,'</div>'
,'            <ul>'
,'                <li>', $htmlEncode($resource("rs_NoResultsSpelling")) ,'</li>'
,'                <li>', $htmlEncode($resource("rs_NoResultsDifferentTerms")) ,'</li>'
,'                <li>', $htmlEncode($resource("rs_NoResultsGeneralTerms")) ,'</li>'
,'                <li>', $htmlEncode($resource("rs_NoResultsFewerTerms")) ,'</li>'
); 
    if(ctx.DataProvider.get_currentQueryState().r)
    { 
ms_outHtml.push(''
,'                <li><a href="javascript:{}" onclick="Discovery.Refiners.clearAllRefiners($getClientControl(this));">', $htmlEncode($resource("rs_NoResultsRefiners")) ,'</a></li>'
); 
    } 
ms_outHtml.push(''
,'            </ul>'
,'        </div>'
); 
}
if(showPaging)
{ 
ms_outHtml.push(''
,'        <div class="discovery-paging-container">'
);

    var currentStartIndex = Math.max(ctx.DataProvider.get_currentQueryState().s, 1);

    var hasPreviousPage = (currentStartIndex - itemsPerPage) > 0;
    var firstPage = !hasPreviousPage ? null :
    {
        title: $resource("rs_MoveToPrevPage"),
        startItem: currentStartIndex - itemsPerPage
    };
    var prevPageIconClass = Srch.U.isRTL() ? "ms-srch-pagingNext" : "ms-srch-pagingPrev";

    var hasNextPage = (currentStartIndex + itemsPerPage) <= totalRows;
    var lastPage = !hasNextPage ? null :
    {
        title: $resource("rs_MoveToNextPage"),
        startItem: (currentStartIndex + itemsPerPage)
    }
    var imagesUrl = GetThemedImageUrl("searchresultui.png");
    var nextPageIconClass = Srch.U.isRTL() ? "ms-srch-pagingPrev" : "ms-srch-pagingNext";

    var currentPageNumber = Math.floor(ctx.DataProvider.get_currentQueryState().s / itemsPerPage) + 1;
    var totalPages = Math.ceil(totalRows / itemsPerPage);
    var pagingInfoDisplay = String.format($resource("edisc_ControlPagingFormat"), currentPageNumber, totalPages);

    if (hasPreviousPage)
    { 
ms_outHtml.push(''
,'                <a id="PageLinkPrev" href="#" class="ms-commandLink ms-promlink-button ms-promlink-button-enabled ms-verticalAlignMiddle" title="', $htmlEncode(firstPage.title) ,'" onclick="$getClientControl(this).page(', $htmlEncode(firstPage.startItem) ,');return Srch.U.cancelEvent(event);">'
,'                    <span class="ms-promlink-button-image">'
,'                        <img src="', $urlHtmlEncode(imagesUrl) ,'" class="', $htmlEncode(prevPageIconClass) ,'" alt="', $htmlEncode(firstPage.title) ,'" />'
,'                    </span>'
,'                </a>'
,''
);
    }
ms_outHtml.push(''
,'                ', $htmlEncode(pagingInfoDisplay) ,''
);
    if (hasNextPage)
    {
ms_outHtml.push(''
,'                <a id="PageLinkNext" href="#" class="ms-commandLink ms-promlink-button ms-promlink-button-enabled ms-verticalAlignMiddle" title="', $htmlEncode(lastPage.title) ,'" onclick="$getClientControl(this).page(', $htmlEncode(lastPage.startItem) ,');return Srch.U.cancelEvent(event);">'
,'                    <span class="ms-promlink-button-image">'
,'                        <img src="', $urlHtmlEncode(imagesUrl) ,'" class="', $htmlEncode(nextPageIconClass) ,'" alt="', $htmlEncode(lastPage.title) ,'" />'
,'                    </span>'
,'                </a>'
);
    }
ms_outHtml.push(''
,'            </div>'
); 
} 
ms_outHtml.push(''
,''
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_a7dc12e3859042a3996274d358356fa3() {ULSaGt:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Control_eDiscoveryExchangeResult", DisplayTemplate_a7dc12e3859042a3996274d358356fa3);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_eDiscoveryExchangeResult.js", DisplayTemplate_a7dc12e3859042a3996274d358356fa3);
}

}
RegisterTemplate_a7dc12e3859042a3996274d358356fa3();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_eDiscoveryExchangeResult.js"), RegisterTemplate_a7dc12e3859042a3996274d358356fa3);
}
