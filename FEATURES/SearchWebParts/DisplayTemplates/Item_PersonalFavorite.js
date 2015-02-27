function ULSdl5(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_PersonalFavorite.js";return o;}
function DisplayTemplate_90848c38fdd24459ae1f2f0071b7c66c(ctx) {ULSdl5:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_90848c38fdd24459ae1f2f0071b7c66c.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_PersonalFavorite.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSdl5:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
); 
    if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl))
    {
        var id = ctx.ClientControl.get_nextUniqueId();
        var title = Srch.U.getHighlightedProperty(id, ctx.CurrentItem, "Title");
        if ($isEmptyString(title)) {title = $htmlEncode(ctx.CurrentItem.Title)}
		var itemId = id + Srch.U.Ids.item;
		$setResultItem(itemId, ctx.CurrentItem);
ms_outHtml.push(''
,'        <div id="', $htmlEncode(itemId) ,'" name="Item" data-displaytemplate="PersonalResultItem" class="ms-srch-item-personalResult">'
,'            <div>'
,'                <div class="ms-srch-item-title">'
,'					<h3 class="ms-srch-ellipsis">'
,'						<a clicktype="Result" id="', $htmlEncode(id + Srch.U.Ids.titleLink) ,'" href="', $urlHtmlEncode(ctx.CurrentItem.Url) ,'" title="', $htmlEncode(ctx.CurrentItem.Url) ,'">'
,'							', title ,''
,'						</a>'
,'					</h3>'
,'                </div>'
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
function RegisterTemplate_90848c38fdd24459ae1f2f0071b7c66c() {ULSdl5:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_PersonalFavorite", DisplayTemplate_90848c38fdd24459ae1f2f0071b7c66c);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_PersonalFavorite.js", DisplayTemplate_90848c38fdd24459ae1f2f0071b7c66c);
}

}
RegisterTemplate_90848c38fdd24459ae1f2f0071b7c66c();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_PersonalFavorite.js"), RegisterTemplate_90848c38fdd24459ae1f2f0071b7c66c);
}
