function ULSzuT(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Site.js";return o;}
function DisplayTemplate_77fa611a684f4889b65d3f2f94776f6f(ctx) {ULSzuT:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_77fa611a684f4889b65d3f2f94776f6f.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Site.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Path':['Path'], 'SiteLogo':['SiteLogo'], 'SiteDescription':['SiteDescription'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'deeplinks':['deeplinks'], 'importance':['importance'], 'FileType':['FileType']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSzuT:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
); 
        if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl)){
            var id = ctx.ClientControl.get_nextUniqueId();
            var itemId = id + Srch.U.Ids.item;
            var hoverId = id + Srch.U.Ids.hover;
            var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_Site_HoverPanel.js";
            var deepLinksClassNoEncode = "ms-srch-item-deepLinks";
			$setResultItem(itemId, ctx.CurrentItem);
            ctx.currentItem_ShowHoverPanelCallback = Srch.U.getShowHoverPanelCallback(itemId, hoverId, hoverUrl);
            ctx.currentItem_HideHoverPanelCallback = Srch.U.getHideHoverPanelCallback();
ms_outHtml.push(''
,'            <div id="', $htmlEncode(itemId) ,'" name="Item" data-displaytemplate="SiteItem" class="ms-srch-item" onmouseover="', ctx.currentItem_ShowHoverPanelCallback ,'" onmouseout="', ctx.currentItem_HideHoverPanelCallback ,'">'
,''
); 
                if(!$isNull(ctx.CurrentItem.SiteLogo) && !Srch.U.isDefaultSiteLogo(ctx.CurrentItem.SiteLogo)){ 
					ctx.CurrentItem.csr_PathLength = Srch.U.pathTruncationLengthWithPreview;
					ctx.CurrentItem.csr_PreviewImage = ctx.CurrentItem.SiteLogo;
                    ctx.CurrentItem.csr_PreviewImageAltText = Srch.Res.hp_Alt_SiteLogo;
                } else {
                    deepLinksClassNoEncode += " ms-srch-item-deepLinks-noPreview";
                }
ms_outHtml.push('				'
,'				',ctx.RenderBody(ctx),'				'
);
				if(!Srch.U.e(ctx.CurrentItem.deeplinks) && !Srch.U.n(ctx.CurrentItem.importance)){ 
ms_outHtml.push(''
,'					<div class="', deepLinksClassNoEncode ,'" id="', $htmlEncode(id + Srch.U.Ids.deepLinks) ,'">'
,'						', Srch.U.getDeepLinks(ctx.CurrentItem.deeplinks, ctx.CurrentItem.importance) ,''
,'					</div>'
); 
				} 
ms_outHtml.push('			'
,'                <div id="', $htmlEncode(hoverId) ,'" class="ms-srch-hover-outerContainer"></div>'
,'            </div>'
); 
        } 
ms_outHtml.push(''
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_77fa611a684f4889b65d3f2f94776f6f() {ULSzuT:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Site", DisplayTemplate_77fa611a684f4889b65d3f2f94776f6f);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Site.js", DisplayTemplate_77fa611a684f4889b65d3f2f94776f6f);
}

}
RegisterTemplate_77fa611a684f4889b65d3f2f94776f6f();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Site.js"), RegisterTemplate_77fa611a684f4889b65d3f2f94776f6f);
}
