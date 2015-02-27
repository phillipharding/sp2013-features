function ULSqYr(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_CommonItem_Body.js";return o;}
function DisplayTemplate_9f691180b93e41bd89399ac2795d833b(ctx) {ULSqYr:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_9f691180b93e41bd89399ac2795d833b.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_CommonItem_Body.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Path':['Path'], 'Description':['Description'], 'EditorOWSUSER':['EditorOWSUSER'], 'LastModifiedTime':['LastModifiedTime'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'ParentLink':['ParentLink'], 'FileType':['FileType'], 'IsContainer':['IsContainer'], 'SecondaryFileExtension':['SecondaryFileExtension'], 'DisplayAuthor':['DisplayAuthor']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSqYr:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        var id = ctx.CurrentItem.csr_id;
        var title = Srch.U.getHighlightedProperty(id, ctx.CurrentItem, "Title");
        if ($isEmptyString(title)) {title = $htmlEncode(ctx.CurrentItem.Title)}

        var useWACUrl = !$isEmptyString(ctx.CurrentItem.ServerRedirectedURL);
        if(ctx.ScriptApplicationManager && ctx.ScriptApplicationManager.states){
            useWACUrl = (useWACUrl && !ctx.ScriptApplicationManager.states.openDocumentsInClient);
        }

        var appAttribs = "";
        if(!useWACUrl)
        {
            if (!$isEmptyString(ctx.CurrentItem.csr_OpenApp)) { appAttribs += "openApp=\"" + $htmlEncode(ctx.CurrentItem.csr_OpenApp) + "\"" }; 
            if (!$isEmptyString(ctx.CurrentItem.csr_OpenControl)) { appAttribs += " openControl=\"" + $htmlEncode(ctx.CurrentItem.csr_OpenControl) + "\"" };
        }

        var showHoverPanelCallback = ctx.currentItem_ShowHoverPanelCallback;
        if (Srch.U.n(showHoverPanelCallback)) {
            var itemId = id + Srch.U.Ids.item;
            var hoverId = id + Srch.U.Ids.hover;
            var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_Default_HoverPanel.js";
            showHoverPanelCallback = Srch.U.getShowHoverPanelCallback(itemId, hoverId, hoverUrl);
        }
        var displayPath = Srch.U.getHighlightedProperty(id, ctx.CurrentItem, "Path");
        if ($isEmptyString(displayPath)) {displayPath = $htmlEncode(ctx.CurrentItem.Path)} 
        var url = ctx.CurrentItem.csr_Path;
        if($isEmptyString(url)){
            if(useWACUrl)
            {
                url = ctx.CurrentItem.ServerRedirectedURL;
            } else {
                url = ctx.CurrentItem.Path;
            }        
        }
        ctx.CurrentItem.csr_Path = url;
        var pathLength = ctx.CurrentItem.csr_PathLength;
        if(!pathLength) {pathLength = Srch.U.pathTruncationLength}

        var maxTitleLengthInChars = Srch.U.titleTruncationLength;
        var termsToUse = 2;
        if(ctx.CurrentItem.csr_PreviewImage != null)
        {
            maxTitleLengthInChars = Srch.U.titleTruncationLengthWithPreview;
            termsToUse = 1;
        }

        var clickType = ctx.CurrentItem.csr_ClickType;
        if(!clickType) {clickType = "Result"}        
ms_outHtml.push('				'
,'        <div id="', $htmlEncode(id + Srch.U.Ids.body) ,'" class="ms-srch-item-body" onclick="', showHoverPanelCallback ,'">'
);
            if (!$isEmptyString(ctx.CurrentItem.csr_Icon)) {
ms_outHtml.push(''
,'                <div class="ms-srch-item-icon">	'
,'                    <img id="', $htmlEncode(id + Srch.U.Ids.icon) ,'" onload="this.style.display=\'inline\'" src="', $urlHtmlEncode(ctx.CurrentItem.csr_Icon) ,'" />'
,'                </div>'
);
            }
            var titleHtml = String.format('<a clicktype="{0}" id="{1}" href="{2}" class="ms-srch-item-link" title="{3}" onfocus="{4}" {5}>{6}</a>',
                                          $htmlEncode(clickType), $htmlEncode(id + Srch.U.Ids.titleLink), $urlHtmlEncode(url), $htmlEncode(ctx.CurrentItem.Title), 
                                          showHoverPanelCallback, appAttribs, Srch.U.trimTitle(title, maxTitleLengthInChars, termsToUse));
ms_outHtml.push('       '
,'            <div id="', $htmlEncode(id + Srch.U.Ids.title) ,'" class="ms-srch-item-title"> '
,'                <h3 class="ms-srch-ellipsis">'
,'                    ', titleHtml ,''
,'                </h3>'
,'            </div>'
); 
            if (!$isEmptyString(ctx.CurrentItem.HitHighlightedSummary)) { 
ms_outHtml.push(''
,'                <div id="', $htmlEncode(id + Srch.U.Ids.summary) ,'" class="ms-srch-item-summary">', Srch.U.processHHXML(ctx.CurrentItem.HitHighlightedSummary) ,'</div>'
); 
            }
            var truncatedUrl = Srch.U.truncateHighlightedUrl(displayPath, pathLength);
ms_outHtml.push(''
,'            <div id="', $htmlEncode(id + Srch.U.Ids.path) ,'" tabindex="0" class="ms-srch-item-path" title="', $htmlEncode(ctx.CurrentItem.Path) ,'" onblur="Srch.U.restorePath(this, \'', $scriptEncode(truncatedUrl) ,'\', \'', $scriptEncode(ctx.CurrentItem.Path) ,'\')" onclick="Srch.U.selectPath(\'', $scriptEncode(ctx.CurrentItem.Path) ,'\', this)" onkeydown="Srch.U.setPath(event, this, \'', $scriptEncode(ctx.CurrentItem.Path) ,'\', \'', $scriptEncode(truncatedUrl) ,'\')">'
,'                ', truncatedUrl ,''
,'            </div>'
,'        </div>'
);
        if (!$isEmptyString(ctx.CurrentItem.csr_PreviewImage)) 
        {
            var altText = Srch.Res.item_Alt_Preview;
            if(!$isEmptyString(ctx.CurrentItem.csr_PreviewImageAltText)){
                altText = ctx.CurrentItem.csr_PreviewImageAltText;
            }

            var onloadJS = "var container = $get('" + $scriptEncode(id + Srch.U.Ids.preview) + "'); if(container){container.style.display = 'inline-block';}" +
                           "var path = $get('" + $scriptEncode(id + Srch.U.Ids.path) + "'); if (path) { Srch.U.ensureCSSClassNameExist(path, 'ms-srch-item-preview-path');}" +
                           "var body = $get('" + $scriptEncode(id + Srch.U.Ids.body) + "'); if (body) { Srch.U.ensureCSSClassNameExist(body, 'ms-srch-item-summaryPreview');}";

            var previewHtml = String.format('<a clicktype="{0}" href="{1}" class="ms-srch-item-previewLink" {2}><img class="ms-srch-item-preview" src="{3}" alt="{4}" onload="{5}"/></a>', 
                                            $htmlEncode(clickType), $urlHtmlEncode(url), appAttribs, $urlHtmlEncode(ctx.CurrentItem.csr_PreviewImage), $htmlEncode(altText), onloadJS);
ms_outHtml.push('       '
,'            <div id="', $htmlEncode(id + Srch.U.Ids.preview) ,'" class="ms-srch-item-previewContainer"> '
,'                ', previewHtml ,''
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
function RegisterTemplate_9f691180b93e41bd89399ac2795d833b() {ULSqYr:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_CommonItem_Body", DisplayTemplate_9f691180b93e41bd89399ac2795d833b);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_CommonItem_Body.js", DisplayTemplate_9f691180b93e41bd89399ac2795d833b);
}

}
RegisterTemplate_9f691180b93e41bd89399ac2795d833b();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_CommonItem_Body.js"), RegisterTemplate_9f691180b93e41bd89399ac2795d833b);
}
