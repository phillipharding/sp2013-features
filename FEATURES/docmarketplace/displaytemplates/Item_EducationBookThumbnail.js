function DisplayTemplate_8c262e99298445438ee86b061e00e17a(ctx) {
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_8c262e99298445438ee86b061e00e17a.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_EducationBookThumbnail.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Image Url':['PictureThumbnailURL'], 'Line 1':['DMSDocTitle'], 'Line 1 Link Url':['Path'], 'Line 2':['DMSDocAuthor'], 'Line 2 Link Url':['url'], 'Line 3':['LastModifiedTime'], 'FileExtension':null, 'Description':null, 'owstaxidmetadataalltagsinfo':null, 'DMSDocAccessRight':null, 'DMSLeaseTerm':null};

ms_outHtml.push('',''
);
        if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl))
        {
            var id = ctx.ClientControl.get_nextUniqueId();
            $setResultItem(id, ctx.CurrentItem);
            var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_EducationBookThumbnail_HoverPanel.js";
            var hover_id = id + "_hover";
ms_outHtml.push(''
,'        <div id="', $htmlEncode(id) ,'" class="dms-cbs-item" name="Item" onmouseover="EnsureScriptParams(\'SearchUI.js\', \'HP.Init\', event, \'', $scriptEncode(id) ,'\', \'', $scriptEncode(hover_id) ,'\', \'', $scriptEncode(hoverUrl) ,'\');" onmouseout="EnsureScriptParams(\'SearchUI.js\', \'HP.Init\', event, \'', $scriptEncode(id) ,'\', \'', $scriptEncode(hover_id) ,'\', \'', $scriptEncode(hoverUrl) ,'\');">'
,'            <div id="', $htmlEncode(hover_id) ,'" data-displaytemplate="DMSCBSItem" class="ms-srch-hover-outerContainer"></div>'
,'            <div id="Main">'
,'            <div class="dms-cbs-icon-container">'
);
            var releaseDate = ctx.CurrentItem.LastModifiedTime;
            if (!$isNull(releaseDate))
            {
                releaseDateIntl = SP.DateTimeUtil.IntlDate.createFromJsLocalDate(releaseDate, _spRegionalSettings.calendarType);
                releaseDateFormattedString = releaseDateIntl.format('d', Sys.CultureInfo.CurrentCulture.name);
            }

            var imageURL = ctx.CurrentItem.PictureThumbnailURL;
            if (!$isNull(imageURL))
            {
ms_outHtml.push(''
,'                <a href="', $urlHtmlEncode(ctx.CurrentItem.Path) ,'">'
,'                <img class="dms-cbs-itemicon" alt="" src="', $urlHtmlEncode(imageURL) ,'" /></a>'
);
            }
            else
            {
ms_outHtml.push(''
,'                <img class="dms-cbs-itemicon" src="', $urlHtmlEncode(Srch.U.getIconUrl(ctx.CurrentItem)) ,'" />'
);
            }
ms_outHtml.push(''
,'            </div>'
,''
,'            <div class="dms-cbsDetail">'
,'                <div class="dms-textblock-clip">'
,'                    <a href="', $urlHtmlEncode(ctx.CurrentItem.Path) ,'" title="', $htmlEncode(ctx.CurrentItem.DMSDocTitle) ,'">', $htmlEncode(ctx.CurrentItem.DMSDocTitle) ,'</a>'
,'                </div>'
);

ms_outHtml.push(''
,'                <div class="dms-textblock-clip">'
,'                    ', $htmlEncode(dms.res.writtenBy_Label) ,' <span title="', $htmlEncode(ctx.CurrentItem.DMSDocAuthor) ,'">', $htmlEncode(ctx.CurrentItem.DMSDocAuthor) ,'</span>'
,'                </div>'
);

            if (!$isNull(releaseDate))
            {
ms_outHtml.push(''
,'                <div class="dms-textblock-clip">'
,'                    <span title="', $htmlEncode(releaseDateFormattedString) ,'">', $htmlEncode(releaseDateFormattedString) ,'</span>'
,'                </div>'
);
            }
ms_outHtml.push(''
,'            </div>'
,'            </div>'
,'        </div>'
);
    }
ms_outHtml.push(''
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_8c262e99298445438ee86b061e00e17a() {

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("DMSCBSItem", DisplayTemplate_8c262e99298445438ee86b061e00e17a);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_EducationBookThumbnail.js", DisplayTemplate_8c262e99298445438ee86b061e00e17a);
}

}
RegisterTemplate_8c262e99298445438ee86b061e00e17a();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_EducationBookThumbnail.js"), RegisterTemplate_8c262e99298445438ee86b061e00e17a);
}
