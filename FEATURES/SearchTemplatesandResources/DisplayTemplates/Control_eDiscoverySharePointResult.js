function ULSFT4(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Control_eDiscoverySharePointResult.js";return o;}
function DisplayTemplate_1a766de24b79411d983157242046fbc2(ctx) {ULSFT4:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_1a766de24b79411d983157242046fbc2.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_eDiscoverySharePointResult.js';
  ctx['DisplayTemplateData']['TemplateType']='Control';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

ms_outHtml.push('',''
); 
var totalRows = ctx.DataProvider.get_totalRows();
if(ctx.ClientControl.get_showResultCount() && totalRows > 0)
{
ms_outHtml.push(''
,'        <span class="ms-srch-resultscount" id="ResultCount">'
,'            ', String.format($htmlEncode(Srch.Res.rs_ApproximateResultCount), $htmlEncode(totalRows.localeFormat("N0"))) ,''
,'        </span>'
); 
}

var availableSorts = ctx.DataProvider.get_availableSorts();
if(!$isEmptyArray(availableSorts) && totalRows > 0)
{ 
ms_outHtml.push(''
,'        <div id="Sortby" class="edisc-sort">'
,'            <select title="', $htmlEncode(Srch.Res.rs_SortDescription) ,'" id="SortbySel" onchange="$getClientControl(this).sort(this.value);">'
);  
    for (var i = 0; i < availableSorts.length; i++) 
    {
        var cplxsort = availableSorts[i];
        if(!$isNull(cplxsort))
        {
            if(ctx.DataProvider.getSortName() == cplxsort.name)
            { 
ms_outHtml.push(''
,'                    <option selected="selected" value="', $htmlEncode(cplxsort.name) ,'">'
,'                        ', $htmlEncode(cplxsort.name) ,''
,'                    </option>'
); 
            } 
            else 
            { 
ms_outHtml.push(''
,'                    <option value="', $htmlEncode(cplxsort.name) ,'">'
,'                        ', $htmlEncode(cplxsort.name) ,''
,'                    </option>'
); 
            }
        }
    } 
ms_outHtml.push(''
,'            </select>'
,'        </div>'
);  
}

ctx.ListDataJSONGroupsKey = "ResultTables";
ms_outHtml.push(''
,''
,'         <table id="DiscoveryResultsSP" class="edisc-SearchResultsTable">'
,'            <tr>'
,'                <th class="Subject">', $htmlEncode($resource("control_EDisc_Title")) ,'</th>'
,'                <th class="People">', $htmlEncode($resource("control_EDisc_Author")) ,'</th>'
,'                <th class="Date">', $htmlEncode($resource("control_EDisc_DateCreated")) ,'</th>'
,'            </tr>'
,'            ', ctx.RenderGroups(ctx) ,''
,'        </table>'
,''
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
if(ctx.ClientControl.get_showPaging())
{
    var pagingInfo = ctx.ClientControl.get_pagingInfo();
    if(!$isEmptyArray(pagingInfo))
    {
        var currentPage = null;
        var totalPages = Math.ceil(totalRows / ctx.DataProvider.get_resultsPerPage());
        var firstPage = pagingInfo[0];
        var lastPage = pagingInfo[pagingInfo.length - 1];

        for (var i = 0; i< pagingInfo.length; i++)
        {
            var pl = pagingInfo[i];
            if (!$isNull(pl))
            {
                if (pl.startItem == -1)
                {
                    currentPage = pl;
                }
            }
        }
        if($isNull(currentPage)) currentPage = firstPage;
        var pagingInfoDisplay = String.format(Srch.Res.edisc_ControlPagingFormat, currentPage.pageNumber, totalPages);
        var hasPreviousPage = firstPage.pageNumber == -1;
        var hasNextPage = lastPage.pageNumber == -2;
        var imagesUrl = GetThemedImageUrl("searchresultui.png");
        var prevPageIconClass = Srch.U.isRTL() ? "ms-srch-pagingNext" : "ms-srch-pagingPrev";
        var nextPageIconClass = Srch.U.isRTL() ? "ms-srch-pagingPrev" : "ms-srch-pagingNext";
ms_outHtml.push(' '
,'                <div class="discovery-paging-container">'
);
        if (hasPreviousPage)
        { 
ms_outHtml.push(''
,'                    <a id="PageLinkPrev" href="#" class="ms-commandLink ms-promlink-button ms-promlink-button-enabled ms-verticalAlignMiddle" title="', $htmlEncode(firstPage.title) ,'" onclick="$getClientControl(this).page(', $htmlEncode(firstPage.startItem) ,');return Srch.U.cancelEvent(event);">'
,'                        <span class="ms-promlink-button-image">'
,'                            <img src="', $urlHtmlEncode(imagesUrl) ,'" class="', $htmlEncode(prevPageIconClass) ,'" alt="', $htmlEncode(firstPage.title) ,'" />'
,'                        </span>'
,'                    </a>'
);
        }
ms_outHtml.push(''
,'                ', $htmlEncode(pagingInfoDisplay) ,''
);
        if (hasNextPage)
        {
ms_outHtml.push(''
,'                    <a id="PageLinkNext" href="#" class="ms-commandLink ms-promlink-button ms-promlink-button-enabled ms-verticalAlignMiddle" title="', $htmlEncode(lastPage.title) ,'" onclick="$getClientControl(this).page(', $htmlEncode(lastPage.startItem) ,');return Srch.U.cancelEvent(event);">'
,'                        <span class="ms-promlink-button-image">'
,'                            <img src="', $urlHtmlEncode(imagesUrl) ,'" class="', $htmlEncode(nextPageIconClass) ,'" alt="', $htmlEncode(lastPage.title) ,'" />'
,'                        </span>'
,'                    </a>'
);
        }
ms_outHtml.push(''
,'                </div>'
);
    }
}
ms_outHtml.push(''
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_1a766de24b79411d983157242046fbc2() {ULSFT4:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Control_eDiscoverySharePointResult", DisplayTemplate_1a766de24b79411d983157242046fbc2);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_eDiscoverySharePointResult.js", DisplayTemplate_1a766de24b79411d983157242046fbc2);
}

}
RegisterTemplate_1a766de24b79411d983157242046fbc2();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_eDiscoverySharePointResult.js"), RegisterTemplate_1a766de24b79411d983157242046fbc2);
}
