function ULS8Oe(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_BestBet.js";return o;}
function DisplayTemplate_a56aa09c529f4839890d2161349f3b26(ctx) {ULS8Oe:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_a56aa09c529f4839890d2161349f3b26.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_BestBet.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULS8Oe:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);  
    if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl))
    {
        var id = ctx.ClientControl.get_nextUniqueId();
		var itemId = id + Srch.U.Ids.item;
		$setResultItem(itemId, ctx.CurrentItem);
        var title = null;      
        if (!$isEmptyString(ctx.CurrentItem.Title)) title = $htmlEncode(Srch.U.truncateEnd(ctx.CurrentItem.Title, Srch.U.titleTruncationLength));

        var url = null;        
        if (!$isEmptyString(ctx.CurrentItem.Url)) url = $htmlEncode(Srch.U.truncateUrl(ctx.CurrentItem.Url, Srch.U.pathTruncationLength));

        var isVBB = ctx.CurrentItem.IsVisualBestBet;
ms_outHtml.push(''
,'        <div id="', $htmlEncode(itemId) ,'" name="Item" class="ms-srch-bestBetItem">'
,'            <div id="', $htmlEncode(id + Srch.U.Ids.body) ,'" class="ms-srch-item-body">'
); 
            if (isVBB) { 
                if (!$isNull(url)) {
ms_outHtml.push(''
,'                <iframe id="', $htmlEncode(id + Srch.U.Ids.visualBestBet) ,'" class="ms-srch-item-visualBestBet" title="', $htmlEncode(ctx.CurrentItem.Title) ,'" scrolling="no" frameborder="0px" src="', $urlHtmlEncode(ctx.CurrentItem.Url) ,'"></iframe>'
); 
                }            
            } else {                 
ms_outHtml.push(''
,'                <div class="ms-srch-bestBetItem-icon">'
,'                    <img id="', $htmlEncode(id + Srch.U.Ids.icon) ,'" src="', $urlHtmlEncode(GetThemedImageUrl('searchresultui.png')) ,'" />'
,'                </div>'
);
                if (!$isNull(title)) {
ms_outHtml.push('                '
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.title) ,'" class="ms-srch-item-title">'
,'                        <h3 class="ms-srch-ellipsis">'
);                 
                        if ($isNull(url)) {
ms_outHtml.push(''
,'                            ', title ,''
);                 
                        } else {
ms_outHtml.push(''
,'                            <a clicktype="Result" id="', $htmlEncode(id + Srch.U.Ids.titleLink) ,'" href="', $urlHtmlEncode(ctx.CurrentItem.Url) ,'" class="ms-srch-item-link" title="', $htmlEncode(ctx.CurrentItem.Title) ,'">', title ,'</a>'
);                 
                        }
ms_outHtml.push(''
,'                        </h3>'
,'                    </div>'
); 
                }
                if (!$isEmptyString(ctx.CurrentItem.Description)) {
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.summary) ,'" class="ms-srch-item-summary">', $htmlEncode(Srch.U.truncateEnd(ctx.CurrentItem.Description, Srch.U.summaryTruncationLength)) ,'</div>'
); 
                }
                if (!$isNull(url)) {
ms_outHtml.push(''
,'			        <div id="', $htmlEncode(id + Srch.U.Ids.path) ,'" tabindex="0" class="ms-srch-item-path" title="', $htmlEncode(ctx.CurrentItem.Url) ,'" onblur="Srch.U.restorePath(this, \'', $scriptEncode(url) ,'\', \'', $scriptEncode(ctx.CurrentItem.Url) ,'\')" onclick="Srch.U.selectPath(\'', $scriptEncode(ctx.CurrentItem.Url) ,'\', this)" onkeydown="Srch.U.setPath(event, this, \'', $scriptEncode(ctx.CurrentItem.Url) ,'\', \'', $scriptEncode(url) ,'\')">'
,'				        ', url ,''
,'			        </div>                    '
); 
                }
            } 
ms_outHtml.push(''
,'            </div>'
,'        </div>'
); 
    } 
ms_outHtml.push(''
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_a56aa09c529f4839890d2161349f3b26() {ULS8Oe:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_BestBet", DisplayTemplate_a56aa09c529f4839890d2161349f3b26);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_BestBet.js", DisplayTemplate_a56aa09c529f4839890d2161349f3b26);
}

}
RegisterTemplate_a56aa09c529f4839890d2161349f3b26();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_BestBet.js"), RegisterTemplate_a56aa09c529f4839890d2161349f3b26);
}
