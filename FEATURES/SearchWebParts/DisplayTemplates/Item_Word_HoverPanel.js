function ULS4hR(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Word_HoverPanel.js";return o;}
function DisplayTemplate_8c5ab9f227834285a417a6782cdf5e39(ctx) {ULS4hR:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_8c5ab9f227834285a417a6782cdf5e39.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Word_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchHoverPanel'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Path':['Path'], 'Description':['Description'], 'EditorOWSUSER':['EditorOWSUSER'], 'LastModifiedTime':['LastModifiedTime'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'ParentLink':['ParentLink'], 'FileType':['FileType'], 'IsContainer':['IsContainer'], 'SecondaryFileExtension':['SecondaryFileExtension'], 'DisplayAuthor':['DisplayAuthor'], 'ServerRedirectedURL':['ServerRedirectedURL'], 'SectionNames':['SectionNames'], 'SectionIndexes':['SectionIndexes'], 'ServerRedirectedEmbedURL':['ServerRedirectedEmbedURL'], 'ServerRedirectedPreviewURL':['ServerRedirectedPreviewURL']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULS4hR:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        var i = 0;
        var wacurlExist = !Srch.U.e(ctx.CurrentItem.ServerRedirectedURL) && !Srch.U.e(ctx.CurrentItem.ServerRedirectedEmbedURL);
        var id = ctx.CurrentItem.csr_id;
        ctx.CurrentItem.csr_FileType = Srch.Res.file_Word;
        ctx.CurrentItem.csr_ShowFollowLink = true;
        ctx.CurrentItem.csr_ShowViewLibrary = true;
        ctx.currentItem_IsOfficeDocument = true;
ms_outHtml.push(''
,'        <div class="ms-srch-hover-innerContainer ms-srch-hover-wacSize" id="', $htmlEncode(id + HP.ids.inner) ,'">'
,'            <div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder) ,'"></div>'
,'            <div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow) ,'"></div>'
,'            <div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content) ,'" data-displaytemplate="WordHoverPanel">'
,'                <div id="', $htmlEncode(id + HP.ids.header) ,'" class="ms-srch-hover-header">'
,'                    ', ctx.RenderHeader(ctx) ,''
,'                </div>'
,'                <div id="', $htmlEncode(id + HP.ids.body) ,'" class="ms-srch-hover-body">'
);
                    if(!Srch.U.n(ctx.CurrentItem.ServerRedirectedEmbedURL))
                    {
                        ctx.CurrentItem.csr_DataShown = true;
                        ctx.currentItem_ShowChangedBySnippet = true;
ms_outHtml.push(''
,'                        <div class="ms-srch-hover-viewerContainer">'
,'                            <iframe id="', $htmlEncode(id + HP.ids.viewer) ,'" src="', $urlHtmlEncode(ctx.CurrentItem.ServerRedirectedEmbedURL) ,'" scrolling="no" frameborder="0px" class="ms-srch-hover-viewer"></iframe>'
,'                        </div>'
,'                        <div class="ms-srch-hover-wacImageContainer">'
,'                            <img id="', $htmlEncode(id + HP.ids.preview) ,'" alt="', $htmlEncode(Srch.Res.item_Alt_Preview) ,'" onload="this.parentNode.style.display=\'block\';" />'
,'                        </div>'
);
                    }
                    else
                    {
                        ctx.CurrentItem.csr_ShowLastModifiedTime = true;
                        ctx.CurrentItem.csr_ShowAuthors = true; 
                    }

                    if(!Srch.U.e(ctx.CurrentItem.SectionNames))
                    {
                        ctx.CurrentItem.csr_DataShown = true;
ms_outHtml.push(''
,'                        <div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode(Srch.Res.hp_SectionHeadings) ,'</h3></div>'
);
                        var sectionNames = Srch.U.getArray(ctx.CurrentItem.SectionNames);

                        var sectionIndexes = Srch.U.getArray(ctx.CurrentItem.SectionIndexes);
                        if(!Srch.U.n(sectionIndexes) && sectionIndexes.length != sectionNames.length)
                        {
                            sectionIndexes = null;
                        }

                        var hitHighlightedSectionNames = Srch.U.getHighlightedProperty(id, ctx.CurrentItem, "sectionnames");
                        if(!Srch.U.n(hitHighlightedSectionNames) && hitHighlightedSectionNames.length != sectionNames.length)
                        {
                            hitHighlightedSectionNames = null;
                        }

                        var numberOfSectionsToDisplay = Math.min(Srch.SU.maxLinesForMultiValuedProperty, sectionNames.length);
                        var sectionsToDisplay = new Array();

                        var usingHitHighlightedSectionNames = Srch.SU.getSectionsForDisplay(
                            hitHighlightedSectionNames,
                            numberOfSectionsToDisplay,
                            sectionsToDisplay);

                        for(i = 0; i < sectionsToDisplay.length; ++i)
                        {
                            var index = sectionsToDisplay[i];
                            if(Srch.U.n(index))
                            {
                                continue;
                            }

                            var tooltipEncoded = $htmlEncode(sectionNames[index]);

                            var htmlEncodedSectionName = "";
                            if(usingHitHighlightedSectionNames)
                            {
                                htmlEncodedSectionName = hitHighlightedSectionNames[index];
                            }
                            else
                            {
                                htmlEncodedSectionName = tooltipEncoded;
                            }
ms_outHtml.push(''
,'                            <div class="ms-srch-hover-text ms-srch-ellipsis" id="', $htmlEncode(id + HP.ids.sectionName + i) ,'" title="', tooltipEncoded ,'">'
);
                                if(!Srch.U.n(sectionIndexes) && sectionIndexes.length >= i && !Srch.U.e(sectionIndexes[index]) && wacurlExist)
                                {
                                    var encodedSectionIndex = "&wdparaid=" + $urlKeyValueEncode(sectionIndexes[index]);
ms_outHtml.push(''
,'                                    <a clicktype="HoverSection" linkIndex="', $htmlEncode(i) ,'" href="', $urlHtmlEncode(ctx.CurrentItem.ServerRedirectedURL + encodedSectionIndex) ,'" target="_blank">'
,'                                        ', htmlEncodedSectionName ,''
,'                                    </a>'
);
                                }
                                else
                                {
ms_outHtml.push(''
,'                                    ', htmlEncodedSectionName ,''
);
                                }
ms_outHtml.push(''
,'                            </div>'
);
                        }
                    }
ms_outHtml.push(''
,'                    ', ctx.RenderBody(ctx) ,''
,'                </div>'
,'                <div id="', $htmlEncode(id + HP.ids.actions) ,'" class="ms-srch-hover-actions">'
,'                    ', ctx.RenderFooter(ctx) ,''
,'                </div>'
,'            </div>'
);
            if(!Srch.U.n(ctx.CurrentItem.ServerRedirectedEmbedURL)){
                AddPostRenderCallback(ctx, function(){ULS4hR:;
                    HP.loadViewer(ctx.CurrentItem.id, ctx.CurrentItem.id + HP.ids.inner, ctx.CurrentItem.id + HP.ids.viewer, ctx.CurrentItem.id + HP.ids.preview, ctx.CurrentItem.ServerRedirectedEmbedURL, ctx.CurrentItem.ServerRedirectedPreviewURL);
                });
            }
ms_outHtml.push(''
,'        </div>'
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_8c5ab9f227834285a417a6782cdf5e39() {ULS4hR:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Word_HoverPanel", DisplayTemplate_8c5ab9f227834285a417a6782cdf5e39);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Word_HoverPanel.js", DisplayTemplate_8c5ab9f227834285a417a6782cdf5e39);
}

}
RegisterTemplate_8c5ab9f227834285a417a6782cdf5e39();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Word_HoverPanel.js"), RegisterTemplate_8c5ab9f227834285a417a6782cdf5e39);
}
