function ULSMeD(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_CatalogItemPicker_HoverPanel.js";return o;}
function DisplayTemplate_557e22cee09e423e956aed59f9eb3f29(ctx) {ULSMeD:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_557e22cee09e423e956aed59f9eb3f29.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogItemPicker_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Author':['Author'], 'Size':['Size'], 'Path':['Path'], 'owsqUSRUserEditor':['owsqUSRUserEditor'], 'LastModifiedTime':['LastModifiedTime'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'DocumentSummarySize':['DocumentSummarySize'], 'ParentLink':['ParentLink']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSMeD:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        var i, size, fileType, title, body, mailto;
        i = 0;
        var id = ctx.CurrentItem.csr_id;
        var moreResultsid = "more" + id;
        var managedProperties = Srch.CU.getManagedPropertiesForCatalogItem(ctx.ClientControl);
        var encodedId = $htmlEncode(id);
        var innerId = encodedId + "_innerHover";
        var hoverArrowBorderId = encodedId + "_hoverArrowBorder";
        var hoverArrowId = encodedId + "_hoverArrow";
        var hoverContentId = encodedId + "_hoverContent";
        var closeId = encodedId + "_hoverClose";
        var titleId = encodedId + "_hoverTitle";
        var fileTypeId = encodedId + "_hoverFileType";
        var sizeId = encodedId + "_hoverSize";
        var authorId = encodedId + "_author";
        var moreId = encodedId + "_more";
        fileType = HP.GetFriendlyNameForFileType(ctx.CurrentItem);

ms_outHtml.push(''
,'        <div class="ms-srch-hover-innerContainer ms-srch-hover-standardSize" id="', innerId ,'">'
,'            <div class="ms-srch-hover-arrowBorder" id="', hoverArrowBorderId ,'"></div>'
,'            <div class="ms-srch-hover-arrow" id="', hoverArrowId ,'"></div>'
,'            <div class="ms-srch-hover-content" id="', hoverContentId ,'" data-displaytemplate="Item_CatalogItemPicker_HoverPanel">'
,'                <div class="ms-srch-hover-header">'
,'                    <div class="ms-srch-hover-close">'
,'                        <a href="javascript:HP.Close()" id="', closeId ,'" title="', $htmlEncode(Srch.Res.hp_Tooltip_Close) ,'">'
,'                            <img src="', $urlHtmlEncode(SP.Utilities.VersionUtility.getImageUrl(Srch.SU.closeImage)) ,'" />'
,'                        </a>'
,'                    </div>'
,'                    <div class="ms-srch-hover-title">'
);                        
                        if (!Srch.U.e(ctx.CurrentItem.Title) && !Srch.U.e(ctx.CurrentItem.Path)) {
ms_outHtml.push('                        '
,'                            <a id="', titleId ,'" title="', $htmlEncode(ctx.CurrentItem.Title) ,'" href="', $urlHtmlEncode(ctx.CurrentItem.Path) ,'">'
,'                                ', $htmlEncode(ctx.CurrentItem.Title) ,''
,'                            </a>'
);                        
                        }
ms_outHtml.push(''
,'                    </div>'
,'                </div>'
,'                 <div class="ms-srch-hover-filedata ms-metadata">'
,'                    <div class="ms-srch-hover-filetype">'
,''
);
                        if (!Srch.U.e(fileType)) {
ms_outHtml.push('                        '
,'                            <span id="', fileTypeId ,'">'
,'                                ', $htmlEncode(fileType) + " " ,''
,'                            </span>'
);                            
                        }
ms_outHtml.push('                        '
,'                    </div>'
,'                </div>'
);
                if (!Srch.U.n(ctx.CurrentItem.LastModifiedTime))
                {
                    var encodedLastModifiedTimeId = $htmlEncode(id + HP.ids.modifiedDate);
                    AddPostRenderCallback(ctx, function()
                    {ULSMeD:;
                        Srch.U.renderFriendlyTimeIntervalString(ctx.CurrentItem.LastModifiedTime, encodedLastModifiedTimeId);
                    });
ms_outHtml.push(''
,'                    <div class="ms-textSmall ms-uppercase ms-srch-hover-subTitle">', $htmlEncode(Srch.Res.hp_LastModified) ,'</div>'
,'                    <span class="ms-srch-hover-text ms-srch-ellipsis" id="', encodedLastModifiedTimeId ,'"></span>'
);
                }

                var strEditors = ctx.CurrentItem.owsqUSRUserEditor;
                if(Srch.U.e(strEditors))
                {
                    strEditors = ctx.CurrentItem.Author;
                }
                if (!Srch.U.e(strEditors)) {
ms_outHtml.push(''
,'                    <div class="ms-textSmall ms-uppercase ms-srch-hover-subTitle">', $htmlEncode(Srch.Res.hp_RecentlyEdited) ,'</div>'
);
                    var authors = Srch.U.getArray(strEditors);
                    for (i = 0; i < authors.length; i += 1) {
ms_outHtml.push(''
,'                        <div class="ms-srch-hover-text ms-srch-ellipsis" id="', authorId + i ,'" title="', $htmlEncode(authors[i]) ,'">'
,'                            ', $htmlEncode(authors[i]) ,''
,'                        </div>'
);
                    }
                }
ms_outHtml.push(''
,'                <hr class="ms-srch-hover-separator" />'
,'                <div class="ms-srch-hover-action" id="MoreInfoDiv">'
,'                    <a id="', moreId ,'" class="ms-calloutLink" title="', $htmlEncode(Srch.Res.pkr_CatalogPickerMoreLinkToolTip) ,'" onclick="Srch.CU.executeCatalogPickerQuery(\'', $scriptEncode(ctx.CurrentItem.Path) ,'\', \'',  $scriptEncode(moreResultsid) ,'\', \'',  $scriptEncode(managedProperties) ,'\', this)" style="cursor:pointer">'
,'                      ', $htmlEncode(Srch.Res.pkr_CatalogPickerMoreLink) ,''
,'                    </a>'
,'                </div>'
,'                <div id="', moreResultsid ,'"></div>'
,'            </div>'
,'        </div>'
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_557e22cee09e423e956aed59f9eb3f29() {ULSMeD:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_CatalogItemPicker_HoverPanel", DisplayTemplate_557e22cee09e423e956aed59f9eb3f29);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogItemPicker_HoverPanel.js", DisplayTemplate_557e22cee09e423e956aed59f9eb3f29);
}

}
RegisterTemplate_557e22cee09e423e956aed59f9eb3f29();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogItemPicker_HoverPanel.js"), RegisterTemplate_557e22cee09e423e956aed59f9eb3f29);
}
