function ULS44I(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Picture_HoverPanel.js";return o;}
function DisplayTemplate_19eb6e613aca4f5a98fe66dcdb70e129(ctx) {ULS44I:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_19eb6e613aca4f5a98fe66dcdb70e129.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Picture_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchHoverPanel'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Path':['Path'], 'Description':['Description'], 'EditorOWSUSER':['EditorOWSUSER'], 'LastModifiedTime':['LastModifiedTime'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'ParentLink':['ParentLink'], 'FileType':['FileType'], 'IsContainer':['IsContainer'], 'SecondaryFileExtension':['SecondaryFileExtension'], 'DisplayAuthor':['DisplayAuthor'], 'PictureHeight':['PictureHeight'], 'PictureWidth':['PictureWidth'], 'ImageDateCreated':['ImageDateCreated'], 'PictureThumbnailURL':['PictureThumbnailURL'], 'PictureURL':['PictureURL']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULS44I:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        var i = 0;
        var id = ctx.CurrentItem.csr_id;
        ctx.CurrentItem.csr_FileType = Srch.Res.cc_sts_listitem_picturelibrary;
        ctx.CurrentItem.csr_ShowViewLibrary = true;
        ctx.currentItem_ShowChangedBySnippet = true;
ms_outHtml.push(''
,'        <div class="ms-srch-hover-innerContainer ms-srch-hover-standardSize" id="', $htmlEncode(id + HP.ids.inner) ,'">'
,'            <div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder) ,'"></div>'
,'            <div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow) ,'"></div>'
,'            <div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content) ,'" data-displaytemplate="PictureHoverPanel">'
,'                <div id="', $htmlEncode(id + HP.ids.header) ,'" class="ms-srch-hover-header">'
,'                    ', ctx.RenderHeader(ctx) ,''
,'                </div>'
,'                <div id="', $htmlEncode(id + HP.ids.body) ,'" class="ms-srch-hover-body">'
);
                    if(!Srch.U.n(ctx.CurrentItem.PictureURL)){
                        ctx.CurrentItem.csr_DataShown = true;
ms_outHtml.push(''
,'                        <div class="ms-srch-hover-imageContainer">'
,'                            <img id="', $htmlEncode(id + HP.ids.preview) ,'" alt="', $htmlEncode(Srch.Res.hp_Alt_ImagePreview) ,'" src="', $urlHtmlEncode(ctx.CurrentItem.PictureURL) ,'" onload="this.style.display=\'block\';" />'
,'                        </div>'
);
                    }
                    if (!Srch.U.n(ctx.CurrentItem.PictureHeight) && !Srch.U.n(ctx.CurrentItem.PictureWidth)) {
                        ctx.CurrentItem.csr_DataShown = true;
ms_outHtml.push(''
,'                        <div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode(Srch.Res.hp_PictureDimensions) ,'</h3></div>'
,'                        <span class="ms-srch-hover-text" id="', $htmlEncode(id + HP.ids.dimensions) ,'">'
,'                            ', $htmlEncode(String.format(Srch.Res.hp_PictureHeightWidth, ctx.CurrentItem.PictureHeight, ctx.CurrentItem.PictureWidth)) ,''
,'                        </span>'
);
                    }
                    if (!Srch.U.n(ctx.CurrentItem.ImageDateCreated)) {
                        ctx.CurrentItem.csr_DataShown = true;
ms_outHtml.push(''
,'                        <div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode(Srch.Res.hp_DateTaken) ,'</h3></div>'
,'                        <span class="ms-srch-hover-text" id="', $htmlEncode(id + HP.ids.dateCreated) ,'">'
,'                            ', $htmlEncode(ctx.CurrentItem.ImageDateCreated.localeFormat(Sys.CultureInfo.CurrentCulture.dateTimeFormat.LongDatePattern)) ,''
,'                        </span>'
);
                    }
ms_outHtml.push(''
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
function RegisterTemplate_19eb6e613aca4f5a98fe66dcdb70e129() {ULS44I:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Picture_HoverPanel", DisplayTemplate_19eb6e613aca4f5a98fe66dcdb70e129);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Picture_HoverPanel.js", DisplayTemplate_19eb6e613aca4f5a98fe66dcdb70e129);
}

}
RegisterTemplate_19eb6e613aca4f5a98fe66dcdb70e129();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Picture_HoverPanel.js"), RegisterTemplate_19eb6e613aca4f5a98fe66dcdb70e129);
}
