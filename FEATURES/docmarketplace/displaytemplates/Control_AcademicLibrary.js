function DisplayTemplate_e6e83bb29c6541d18831a797b7526ee4(ctx) {
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_e6e83bb29c6541d18831a797b7526ee4.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fControl_AcademicLibrary.js';
  ctx['DisplayTemplateData']['TemplateType']='Control';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

ms_outHtml.push('',''
); 
        Srch.U.hideElement(ctx.ClientControl.get_element());
        ctx.OnPostRender = function(){ Srch.U.animateResults(ctx.ClientControl, ctx.DataProvider.get_userAction()); };
ms_outHtml.push(' '
,'        <div class="ms-srch-result dms-cbs-result" id="DMSCBSResult" name="Control">'
);
            if(!$isNull(ctx.ScriptApplicationManager) && !$isNull(ctx.DataProvider) && !$isNull(ctx.ClientControl))
            {
                if(ctx.DataProvider.get_rowCount() > 0)
                {
ms_outHtml.push(''
,'                    <div class="ms-metadata dms-cbs-result"><span>', $htmlEncode(dms.res.homePage_HeaderLabel) ,'</span></div>'
,'                    <div id="ResultHeader" class="ms-metadata dms-cbs-result">'
,'                        <div id="Stats">'
);
                            var start = ctx.DataProvider.get_currentQueryState().s;

                            if(start == 0)
                            {
                                start = 1;
                            }

                            var end = start + ctx.DataProvider.get_resultsPerPage() - 1;
                            if (end > ctx.DataProvider.get_totalRows()) 
                            {
                                end = ctx.DataProvider.get_totalRows();
                            }
ms_outHtml.push(''
,'                            <span id="ResultCount">'
,'                                ', String.format($htmlEncode(dms.res.results_Label), $htmlEncode(start + "-" + end), $htmlEncode(ctx.DataProvider.get_totalRows())) ,''
,'                            </span>'
,'                        </div>'
,'                        <ul id="Actions">'
);
                            var availableSorts = ctx.DataProvider.get_availableSorts();
                            if(!$isEmptyArray(availableSorts))
                            {
ms_outHtml.push(''
,'                                <li id="Sortby">'
,'                                    <span>', $htmlEncode(dms.res.sortBy_Label) ,':</span> '
,'                                    <select id="SortbySel" onchange="$getClientControl(this).sort(this.value);">'
);
                                    for (var i = 0; i < availableSorts.length; i++) 
                                    {
                                        var cplxsort = availableSorts[i];
                                        if(!$isNull(cplxsort))
                                        {
                                            if(ctx.DataProvider.getSortName() == cplxsort.name) 
                                            {
ms_outHtml.push(''
,'                                                <option selected="selected" value="', $htmlEncode(cplxsort.name) ,'">', $htmlEncode(cplxsort.name) ,'</option>'
);
                                            } 
                                            else
                                            {
ms_outHtml.push(''
,'                                                <option value="', $htmlEncode(cplxsort.name) ,'">', $htmlEncode(cplxsort.name) ,'</option>'
);
                                            }
                                        }
                                    }
ms_outHtml.push(''
,'                                    </select>'
,'                                </li>'
);
                            }
ms_outHtml.push(''
,'                        </ul>'
,'                    </div>'
);
                }
                ctx.ListDataJSONGroupsKey = "ResultTables"; 
ms_outHtml.push(''
,'                ', ctx.RenderGroups(ctx) ,''
); 
                if(ctx.ClientControl.get_shouldShowNoResultMessage()){ 
ms_outHtml.push(''
,'                    <div id="homePage_WelcomeLabel" class="ms-sectionheader">', $htmlEncode(dms.res.homePage_WelcomeLabel) ,'</div>'
,'                    <p id="homePage_EmptyLibaryLabel">', $htmlEncode(dms.res.homePage_EmptyLibaryLabel) ,'</p>'
); 
                } 

                var pagingInfo = ctx.ClientControl.get_pagingInfo();
                if(!$isEmptyArray(pagingInfo))
                {
ms_outHtml.push(''
,'                        <ul id="Paging" class="ms-srch-Paging dms-cbs-paging">'
); 
                        for (var i = 0; i < pagingInfo.length; i++) {
                            var pl = pagingInfo[i];
                            if(!$isNull(pl)) {
                                var imagesUrl = GetThemedImageUrl('searchresultui.png');
                                if(pl.startItem == -1) { 
                                    var selfLinkId = "SelfLink_" + pl.pageNumber;
ms_outHtml.push(''
,'                                    <li id="PagingSelf"><a id="', $htmlEncode(selfLinkId) ,'">', $htmlEncode(pl.pageNumber) ,'</a></li>'
); 
                                } else if(pl.pageNumber == -1) { 
                                    var iconClass = Srch.U.isRTL() ? "ms-srch-pagingNext" : "ms-srch-pagingPrev";                                    
ms_outHtml.push(''
,'                                    <li id="PagingImageLink"><a id="PageLinkPrev" href="#" class="ms-commandLink ms-promlink-button ms-promlink-button-enabled ms-verticalAlignMiddle" title="', $htmlEncode(pl.title) ,'" onclick="$getClientControl(this).page(', $htmlEncode(pl.startItem) ,');return Srch.U.cancelEvent(event);">'
,'                                        <span class="ms-promlink-button-image">'
,'                                            <img src="', $urlHtmlEncode(imagesUrl) ,'" class="', $htmlEncode(iconClass) ,'" alt="', $htmlEncode(pl.title) ,'" />'
,'                                        </span>'
,'                                    </a></li>'
); 
                                } else if(pl.pageNumber == -2) { 
                                    var iconClass = Srch.U.isRTL() ? "ms-srch-pagingPrev" : "ms-srch-pagingNext";
ms_outHtml.push(''
,'                                    <li id="PagingImageLink"><a id="PageLinkNext" href="#" class="ms-commandLink ms-promlink-button ms-promlink-button-enabled ms-verticalAlignMiddle" title="', $htmlEncode(pl.title) ,'" onclick="$getClientControl(this).page(', $htmlEncode(pl.startItem) ,');return Srch.U.cancelEvent(event);">'
,'                                        <span class="ms-promlink-button-image">'
,'                                            <img src="', $urlHtmlEncode(imagesUrl) ,'" class="', $htmlEncode(iconClass) ,'" alt="', $htmlEncode(pl.title) ,'" />'
,'                                        </span>'
,'                                    </a></li>'
); 
                                } else { 
                                    var pageLinkId = "PageLink_" + pl.pageNumber;
ms_outHtml.push(''
,'                                    <li id="PagingLink"><a id="', $htmlEncode(pageLinkId) ,'" href="#" title="', $htmlEncode(pl.title) ,'" onclick="$getClientControl(this).page(', $htmlEncode(pl.startItem) ,');return Srch.U.cancelEvent(event);">', $htmlEncode(pl.pageNumber) ,'</a></li>'
); 
                                }
                            }
                        } 
ms_outHtml.push(''
,'                        </ul>'
);
                }
ms_outHtml.push(''
);
            }
ms_outHtml.push(''
,'        </div>'
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_e6e83bb29c6541d18831a797b7526ee4() {

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("DMSCBSControl", DisplayTemplate_e6e83bb29c6541d18831a797b7526ee4);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fControl_AcademicLibrary.js", DisplayTemplate_e6e83bb29c6541d18831a797b7526ee4);
}

}
RegisterTemplate_e6e83bb29c6541d18831a797b7526ee4();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fControl_AcademicLibrary.js"), RegisterTemplate_e6e83bb29c6541d18831a797b7526ee4);
}
