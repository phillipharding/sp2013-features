function ULSP0k(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Control_TopReport.js";return o;}
function DisplayTemplate_9d5ee0b320f8449393e492d4969e6225(ctx) {ULSP0k:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_9d5ee0b320f8449393e492d4969e6225.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_TopReport.js';
  ctx['DisplayTemplateData']['TemplateType']='Control';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

ms_outHtml.push('',''
);
    if (!$isNull(ctx.ClientControl) &&
        !$isNull(ctx.ClientControl.shouldRenderControl) &&
        !ctx.ClientControl.shouldRenderControl())
    {
        return "";
    }
    ctx.ListDataJSONGroupsKey = "ResultTables";

	window["TRChangeProperty"] = function (object){ULSP0k:;
		var selected = object.options[object.selectedIndex];
		trSelectedPropertyRecent = selected.getAttribute("trrecentvalue");
		trSelectedPropertyLifetime = selected.getAttribute("trlifetimevalue");
		var recent = document.getElementById("topreportrecent");
		var lifetime = document.getElementById("topreportlifetime");
		recent.setAttribute("trqueryname", trSelectedPropertyRecent);
		lifetime.setAttribute("trqueryname", trSelectedPropertyLifetime);
		if(document.getElementById("tprprt-sort").parentNode == recent.parentNode)
		{
			$getClientControl(document.getElementById("topreportrecent")).sort(trSelectedPropertyRecent);
		}
		else
		{
			$getClientControl(document.getElementById("topreportlifetime")).sort(trSelectedPropertyLifetime);
		}
	};

	var trCurrentPropertyRecent = (typeof trSelectedPropertyRecent != "undefined") ? trSelectedPropertyRecent : "ViewsRecent";
	var trCurrentPropertyLifetime = (typeof trSelectedPropertyLifetime != "undefined") ? trSelectedPropertyLifetime : "ViewsLifeTime";

ms_outHtml.push('        <div class="ms-srch-result" id="CBSResult" name="Control">'
,'                <table class="tprprt-noborders"><thead><tr><th class="ms-headerCellStyleNormal ms-vh tprprt-descriptionHeader"></th>'
,'				<th class="ms-itmhover ms-headerCellStyleNormal ms-vh tprprt-number-header"><a id="topreportrecent" trqueryname="', trCurrentPropertyRecent ,'" onClick="$getClientControl(this).sort(this.getAttribute(\'trqueryname\'));" href="javascript:;">', $htmlEncode(Srch.Res.tprprt_Recent) ,'</a>'
);
	if(ctx.DataProvider.getSortName() == trCurrentPropertyRecent || $isEmptyString(ctx.DataProvider.getSortName())){
ms_outHtml.push(''
,'					<img id="tprprt-sort" src="/_layouts/images/rsort.gif" border="0" />'
);
	} else {
ms_outHtml.push(''
,'					<img id="tprprt-nosort" src="/_layouts/images/blank16.gif" border="0" />'
);
	}
ms_outHtml.push(''
,'				</th><th class="ms-itmhover ms-headerCellStyleNormal ms-vh tprprt-number-header"><a id="topreportlifetime" trqueryname="', trCurrentPropertyLifetime ,'" onClick="$getClientControl(this).sort(this.getAttribute(\'trqueryname\'));" href="javascript:;">', $htmlEncode(Srch.Res.tprprt_Lifetime) ,'</a>'
);
	if(ctx.DataProvider.getSortName() == trCurrentPropertyLifetime){
ms_outHtml.push(''
,'					<img id="tprprt-sort" src="/_layouts/images/rsort.gif" border="0" />'
);
	} else {
ms_outHtml.push(''
,'					<img id="tprprt-nosort" src="/_layouts/images/blank16.gif" border="0" />'
);
	}
ms_outHtml.push(''
,'				</th></tr></thead><tbody>'
,''
,'                ', ctx.RenderGroups(ctx) ,''
,'                </tbody></table>'
); 
    if (ctx.ClientControl.get_shouldShowNoResultMessage())
    {
        if (Srch.U.isPageInEditMode())
        {
ms_outHtml.push(''
,'            This query returned no results. Items must be in the search index to appear. New items might take several minutes to get into the '
,''
,'search index. You can change the query by editing this Web Part.'
); 
        }
        else
        {
ms_outHtml.push(''
,'            ', $htmlEncode(Srch.Res.control_NoResultsDisplayMode) ,''
);
        }
    }
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
                } 
ms_outHtml.push(''
,'        </div>'
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_9d5ee0b320f8449393e492d4969e6225() {ULSP0k:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Control_TopReport", DisplayTemplate_9d5ee0b320f8449393e492d4969e6225);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_TopReport.js", DisplayTemplate_9d5ee0b320f8449393e492d4969e6225);
}

}
RegisterTemplate_9d5ee0b320f8449393e492d4969e6225();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_TopReport.js"), RegisterTemplate_9d5ee0b320f8449393e492d4969e6225);
}
