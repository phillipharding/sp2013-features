function ULS4d9(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_PDF_HoverPanel.js";return o;}
function DisplayTemplate_3850e821df7447f5868212d95bb6c19d(ctx) {ULS4d9:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_3850e821df7447f5868212d95bb6c19d.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_PDF_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchHoverPanel'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Path':['Path'], 'Description':['Description'], 'EditorOWSUSER':['EditorOWSUSER'], 'LastModifiedTime':['LastModifiedTime'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'ParentLink':['ParentLink'], 'FileType':['FileType'], 'IsContainer':['IsContainer'], 'SecondaryFileExtension':['SecondaryFileExtension'], 'DisplayAuthor':['DisplayAuthor'], 'ServerRedirectedURL':['ServerRedirectedURL']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULS4d9:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        var i = 0;
        var id = ctx.CurrentItem.csr_id;
        ctx.CurrentItem.csr_ShowFollowLink = true;
        ctx.CurrentItem.csr_ShowViewLibrary = true;
        ctx.currentItem_ShowChangedBySnippet = true;
ms_outHtml.push(''
,'        <div class="ms-srch-hover-innerContainer ms-srch-hover-standardSize" id="', $htmlEncode(id + HP.ids.inner) ,'">'
,'            <div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder) ,'"></div>'
,'            <div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow) ,'"></div>'
,'            <div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content) ,'" data-displaytemplate="PDFHoverPanel">'
,'                <div id="', $htmlEncode(id + HP.ids.header) ,'" class="ms-srch-hover-header">'
,'                    ', ctx.RenderHeader(ctx) ,''
,'                </div>'
,'                <div id="', $htmlEncode(id + HP.ids.body) ,'" class="ms-srch-hover-body">'
,'                    ', ctx.RenderBody(ctx) ,''
,'                </div>'
,'                <div id="', $htmlEncode(id + HP.ids.actions) ,'" class="ms-srch-hover-actions">'
,'                    ', ctx.RenderFooter(ctx) ,''
,'                </div>'
,'            </div>'
,'        </div>'
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_3850e821df7447f5868212d95bb6c19d() {ULS4d9:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_PDF_HoverPanel", DisplayTemplate_3850e821df7447f5868212d95bb6c19d);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_PDF_HoverPanel.js", DisplayTemplate_3850e821df7447f5868212d95bb6c19d);
}

}
RegisterTemplate_3850e821df7447f5868212d95bb6c19d();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_PDF_HoverPanel.js"), RegisterTemplate_3850e821df7447f5868212d95bb6c19d);
}
