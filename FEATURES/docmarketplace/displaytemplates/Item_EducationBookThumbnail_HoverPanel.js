function DisplayTemplate_06ae4fafeaba42d99175f61f73eb3681(ctx) {
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_06ae4fafeaba42d99175f61f73eb3681.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_EducationBookThumbnail_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Image Url':['PictureThumbnailURL'], 'Line 1':['DMSDocTitle'], 'Line 1 Link Url':['Path'], 'Line 2':['DMSDocAuthor'], 'Line 2 Link Url':['url'], 'Line 3':['LastModifiedTime'], 'FileExtension':null, 'Description':null, 'owstaxidmetadataalltagsinfo':null, 'DMSDocAccessRight':null, 'DMSLeaseTerm':null};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        var id = ctx.CurrentItem.id;
        var closeId = $htmlEncode(id + HP.ids.close);
    ms_outHtml.push(''
,'        <div class="ms-srch-hover-innerContainer ms-srch-hover-standardSize" id="', $htmlEncode(id + HP.ids.inner) ,'">'
,'            <div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder) ,'"></div>'
,'            <div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow) ,'"></div>'
,'            <div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content) ,'" data-displaytemplate="DMSCBSItemHoverpanel">'
,'                <div class="ms-srch-hover-header">'
,'                    <div class="ms-srch-hover-close">'
,'                        <a href="javascript:HP.Close()" id="', closeId ,'" title="', $htmlEncode(Srch.Res.hp_Tooltip_Close) ,'">'
,'                            <img src="', $urlHtmlEncode(SP.Utilities.VersionUtility.getImageUrl(Srch.SU.closeImage)) ,'" />'
,'                        </a>'
,'                    </div>'
,'                    <div class="ms-srch-hover-title ms-dlg-heading ms-srch-ellipsis">'
);
                    if (!Srch.U.e(ctx.CurrentItem.DMSDocTitle) && !Srch.U.e(ctx.CurrentItem.Path)) 
                    {
    ms_outHtml.push(''
,'                        <span id="title">', $htmlEncode(ctx.CurrentItem.DMSDocTitle) ,'</span>'
);
                    }
    ms_outHtml.push(''
,'                    </div>'
,'                </div>'
,''
,'                <div class="ms-srch-hover-body" id="', $htmlEncode(id + HP.ids.body) ,'">'
);
                if (!Srch.U.e(ctx.CurrentItem.owstaxidmetadataalltagsinfo))
                {
                    var category = ($getItemValue(ctx, "owstaxidmetadataalltagsinfo").value)[0].entityLabel;
    ms_outHtml.push(''
,'                    <div class="dms-home-callout-textblock-clip">'
,'                            ', $htmlEncode(dms.res.category_Label) ,' <span title="', $htmlEncode(category) ,'">', $htmlEncode(category) ,'</span>'
,'                    </div>'
);
                }
    ms_outHtml.push(''
,''
);
                if (!Srch.U.e(ctx.CurrentItem.Description))
                {
                    var description = ctx.CurrentItem.Description;
                    if (description.length > 200)
                    {
                        description = description.substring(0, 200).concat(dms.res.dotDotDot);
                    }
    ms_outHtml.push(''
,'                    <div class="dms-calloutMultiLineBlock">'
,'                        <p class="dms-calloutMultiLineParagraph">', $htmlEncode(description) ,'</p>'
,'                    </div>'
);
                }
    ms_outHtml.push(''
,'                    </div>'
,'            </div>'
,'        </div>'
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_06ae4fafeaba42d99175f61f73eb3681() {

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("DMSCBSItemHoverpanel", DisplayTemplate_06ae4fafeaba42d99175f61f73eb3681);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_EducationBookThumbnail_HoverPanel.js", DisplayTemplate_06ae4fafeaba42d99175f61f73eb3681);
}

}
RegisterTemplate_06ae4fafeaba42d99175f61f73eb3681();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_EducationBookThumbnail_HoverPanel.js"), RegisterTemplate_06ae4fafeaba42d99175f61f73eb3681);
}
