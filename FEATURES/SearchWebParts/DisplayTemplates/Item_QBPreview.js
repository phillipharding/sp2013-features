function ULSVYP(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_QBPreview.js";return o;}
function DisplayTemplate_d198c05184564ed5b920064ea146bb75(ctx) {ULSVYP:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_d198c05184564ed5b920064ea146bb75.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_QBPreview.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Author':['Author'], 'Size':['Size'], 'Path':['Path'], 'Description':['Description'], 'LastModifiedTime':['LastModifiedTime'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'ParentLink':['ParentLink']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSVYP:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
); 
        if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl)){
            var id = ctx.ClientControl.get_nextUniqueId();
			var urlChars = 52; 
			var titleChars = 57;
ms_outHtml.push(''
,'            <div id="', $htmlEncode(id) ,'" name="Item">'
); 
                var title = '';
                var url = '';
                if(ctx.CurrentItem.Title)
                {
                    title = ctx.CurrentItem.Title;
                }
                else
                {
                    title = Srch.Res.qb_FallbackResultTitle;
                }

                if(ctx.CurrentItem.Path)
                {
                    url = ctx.CurrentItem.Path; 
                }
                else if (ctx.CurrentItem.Url)
                {
                    url = ctx.CurrentItem.Url; 
                }
                else 
                {
                    url = ""; 
                }
ms_outHtml.push(''
,'                <h3 class="qb-resultTitle ms-textSmall ms-accentText">'
,'                    ', $htmlEncode(Srch.U.getTrimmedString(title, titleChars)) ,''
,'                </h3>'
,''
,'                <div id="Footer">'
,'                    <div class="qb-resultPath ms-textSmall" title="', $htmlEncode(url) ,'">'
,'                        ', $htmlEncode(Srch.U.truncateUrl(url, urlChars)) ,''
,'                    </div>'
,'                </div>'
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
function RegisterTemplate_d198c05184564ed5b920064ea146bb75() {ULSVYP:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_QueryBuilderPreview", DisplayTemplate_d198c05184564ed5b920064ea146bb75);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_QueryBuilderPreview.js", DisplayTemplate_d198c05184564ed5b920064ea146bb75);
}

}
RegisterTemplate_d198c05184564ed5b920064ea146bb75();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_QueryBuilderPreview.js"), RegisterTemplate_d198c05184564ed5b920064ea146bb75);
}
