function ULS8TP(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Control_TagFeed.js";return o;}
function DisplayTemplate_c68380d4c3674e61a6976a5181194b84(ctx) {ULS8TP:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_c68380d4c3674e61a6976a5181194b84.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_TagFeed.js';
  ctx['DisplayTemplateData']['TemplateType']='Control';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

ms_outHtml.push('',''
,'	<div class="ms-srch-result">'
,'    <div id="Control_List">'
,''
); 
if (!$isNull(ctx.ClientControl) &&
    !$isNull(ctx.ClientControl.shouldRenderControl) &&
    !ctx.ClientControl.shouldRenderControl())
{
    return "";
}
ctx.ListDataJSONGroupsKey = "ResultTables";
var $noResults = Srch.ContentBySearch.getControlTemplateEncodedNoResultsMessage(ctx.ClientControl);

var noResultsClassName = "ms-srch-result-noResults";

var ListRenderRenderWrapper = function(itemRenderResult, inCtx, tpl)
{ULS8TP:;
    var iStr = [];
    iStr.push('<li>');
    iStr.push(itemRenderResult);
    iStr.push('</li>');
    return iStr.join('');
}
ctx['ItemRenderWrapper'] = ListRenderRenderWrapper;
ms_outHtml.push(''
,'    <ul class="cbs-List">'
,''
,'            ', ctx.RenderGroups(ctx) ,''
,'        </ul>'
);
if (ctx.ClientControl.get_shouldShowNoResultMessage())
{
ms_outHtml.push(''
,'        <div class="', noResultsClassName ,'">', $noResults ,'</div>'
);
}
ms_outHtml.push(''
,''
,'    </div>'
); 
                if(ctx.ClientControl.get_showPaging()){
                    var pagingInfo = ctx.ClientControl.get_pagingInfo();
                    if(!$isEmptyArray(pagingInfo)){ 
ms_outHtml.push(''
,'                        <ul id="Paging" class="ms-srch-Paging">'
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
,'                                    <li id="PagingImageLink"><a id="PageLinkPrev" href="#" class="', $htmlEncode(iconClass) ,'" title="', $htmlEncode(pl.title) ,'" onclick="$getClientControl(this).page(', $htmlEncode(pl.startItem) ,');return Srch.U.cancelEvent(event);">'
,'										<img src="', $urlHtmlEncode(imagesUrl) ,'" class="ms-srch-pagingImg" alt="', $htmlEncode(pl.title) ,'" /></a></li>'
); 
                                } else if(pl.pageNumber == -2) { 
                                    var iconClass = Srch.U.isRTL() ? "ms-srch-pagingPrev" : "ms-srch-pagingNext";
ms_outHtml.push(''
,'                                    <li id="PagingImageLink"><a id="PageLinkNext" href="#" class="', $htmlEncode(iconClass) ,'" title="', $htmlEncode(pl.title) ,'" onclick="$getClientControl(this).page(', $htmlEncode(pl.startItem) ,');return Srch.U.cancelEvent(event);">'
,'										<img src="', $urlHtmlEncode(imagesUrl) ,'" class="ms-srch-pagingImg" alt="', $htmlEncode(pl.title) ,'" /></a></li>'
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
                } 
ms_outHtml.push(''
,'        </div>'
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_c68380d4c3674e61a6976a5181194b84() {ULS8TP:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Control_BlankWithPaging", DisplayTemplate_c68380d4c3674e61a6976a5181194b84);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_TagFeed.js", DisplayTemplate_c68380d4c3674e61a6976a5181194b84);
}

        $includeLanguageScript("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_TagFeed.js", "~sitecollection/_catalogs/masterpage/Display Templates/Language Files/{Locale}/CustomStrings.js");

}
RegisterTemplate_c68380d4c3674e61a6976a5181194b84();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_TagFeed.js"), RegisterTemplate_c68380d4c3674e61a6976a5181194b84);
}
