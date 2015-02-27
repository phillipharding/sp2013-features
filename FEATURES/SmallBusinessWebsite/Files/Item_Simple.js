function DisplayTemplate_bb31a39af8954298a67127d56358609c(ctx) {
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_bb31a39af8954298a67127d56358609c.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Simple.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Path':['Path'], 'Description':['Description'], 'HitHighlightedSummary':['HitHighlightedSummary']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
); 
        if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl)){
            var id = ctx.ClientControl.get_nextUniqueId();
            var itemId = id + Srch.U.Ids.item;
            $setResultItem(itemId, ctx.CurrentItem);
            var listsText = $get("blogResultListsText");
            var postsText = $get("blogResultPostsText");
            var blogText = $get("blogResultBlogText");
            var postText = $get("blogResultPostText");
            if (listsText && postsText && blogText && postText) {
                var split = ctx.CurrentItem.Path.split('/' + listsText.value + '/' + postsText.value + '/ViewPost.aspx?ID=')
                if (split.length == 2) {
                    var site = split[0];
                    var id = split[1];
                    var furl = ctx.CurrentItem.Title.replace(new RegExp('&nbsp;', 'g'), ' ').replace(new RegExp('&#160;', 'g'), ' ').replace(new RegExp('[\"#%&*:<>?\\\\/{|}~. ]', 'g'), '-');
                    ctx.CurrentItem.Path = site +  '/' + blogText.value + '/' +  postText.value + '/' + id + '/' + furl;
                }
            }
ms_outHtml.push(''
,'            <div id="', $htmlEncode(itemId) ,'" name="Item" data-displaytemplate="DefaultItemSimple" class="ms-srch-item">'
,'                ',ctx.RenderBody(ctx),''
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
function RegisterTemplate_bb31a39af8954298a67127d56358609c() {

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Simple", DisplayTemplate_bb31a39af8954298a67127d56358609c);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Simple.js", DisplayTemplate_bb31a39af8954298a67127d56358609c);
}

}
RegisterTemplate_bb31a39af8954298a67127d56358609c();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Simple.js"), RegisterTemplate_bb31a39af8954298a67127d56358609c);
}
