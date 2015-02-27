function ULSEda(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Community.js";return o;}
function DisplayTemplate_eb86e64b46b1453397bd7844344ae6d1(ctx) {ULSEda:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_eb86e64b46b1453397bd7844344ae6d1.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Community.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Path':['Path'], 'SiteLogo':['SiteLogo'], 'SiteDescription':['SiteDescription'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'deeplinks':['deeplinks'], 'importance':['importance'], 'FileType':['FileType'], 'CommunityMembersCount':['CommunityMembersCount'], 'CommunityRepliesCount':['CommunityRepliesCount'], 'CommunityTopicsCount':['CommunityTopicsCount']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSEda:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl))
        {
            var maxBodyLengthInChars = 120;
            var maxMetadataValue = Srch.U.maximumSocialMetadataValue;

            var id = ctx.ClientControl.get_nextUniqueId();
            var itemId = id + Srch.U.Ids.item;
            var hoverId = id + Srch.U.Ids.hover;
            var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_Community_HoverPanel.js";
            $setResultItem(itemId, ctx.CurrentItem);

            var displayPath = Srch.U.getHighlightedProperty(id, ctx.CurrentItem, "Path");
            var title = Srch.U.getHighlightedProperty(id, ctx.CurrentItem, "Title");
            if ($isEmptyString(title))
            {
                title = $htmlEncode(ctx.CurrentItem.Title)
            }

            var showHoverPanelCallback = Srch.U.getShowHoverPanelCallbackWide(itemId, hoverId, hoverUrl);
            var hideHoverPanelCallback = Srch.U.getHideHoverPanelCallback();

            var hasMetadata = false;
            var bodyClass = "ms-srch-item-body";
            var pathClass = "ms-srch-item-path";
            var resultWithMetadataPathClass = "";
            var maxUrlLength = Srch.U.pathTruncationLength;
            var maxTitleLengthInChars = Srch.U.titleTruncationLength;
            var termsToUse = 2;
            if (!$isNull(ctx.CurrentItem.CommunityMembersCount) ||
                !$isNull(ctx.CurrentItem.CommunityRepliesCount) ||
                !$isNull(ctx.CurrentItem.CommunityTopicsCount))
            {
                hasMetadata = true;
                bodyClass += " ms-srch-communityItem-body";
                pathClass += " ms-srch-communityItem-path";
                resultWithMetadataPathClass = "ms-srch-communityItem-path";
                maxUrlLength = Srch.U.pathTruncationLengthWithMetadata;
                maxTitleLengthInChars = Srch.U.titleTruncationLengthWithMetadata;
                termsToUse = 1;
            }

            var truncatedUrl = Srch.U.truncateHighlightedUrl(displayPath, Srch.U.pathTruncationLengthWithPreview);
ms_outHtml.push(''
,'            <div id="', $htmlEncode(itemId) ,'" name="Item" data-displaytemplate="CommunityItem" class="ms-srch-item" onmouseover="', showHoverPanelCallback ,'" onmouseout="', hideHoverPanelCallback ,'">'
,''
,'                <div id="', $htmlEncode(id + Srch.U.Ids.body) ,'" class="', $htmlEncode(bodyClass) ,'" onclick="', showHoverPanelCallback ,'">'
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.title) ,'" class="ms-srch-item-title">'
,'                        <h3 class="ms-srch-ellipsis">'
,'                            <a clicktype="Result" id="', $htmlEncode(id + Srch.U.Ids.titleLink) ,'" href="', $urlHtmlEncode(ctx.CurrentItem.Path) ,'" class="ms-srch-item-link" title="', $htmlEncode(ctx.CurrentItem.Title) ,'" onfocus="', showHoverPanelCallback ,'">'
,'                                ', Srch.U.trimTitle(title, maxTitleLengthInChars, termsToUse) ,''
,'                            </a>'
,'                        </h3>'
,'                    </div>'
);
                var encodedHighlightedDescription = Srch.U.getHighlightedProperty(id, ctx.CurrentItem, "SiteDescription");
                if(!$isEmptyString(encodedHighlightedDescription))
                {
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.summary) ,'" class="ms-srch-communityItem-summary">'
,'                        ', encodedHighlightedDescription ,''
,'                    </div>'
);
                }
                else if (!$isEmptyString(ctx.CurrentItem.HitHighlightedSummary))
                {
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.summary) ,'" class="ms-srch-communityItem-summary">'
,'                        ', Srch.U.processHHXML(ctx.CurrentItem.HitHighlightedSummary) ,''
,'                    </div>'
);
                }
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.path) ,'" tabindex="0" class=" ', $htmlEncode(pathClass) ,' " title="', $htmlEncode(ctx.CurrentItem.Path) ,'" onblur="Srch.U.restorePath(this, \'', $scriptEncode(truncatedUrl) ,'\', \'', $scriptEncode(ctx.CurrentItem.Path) ,'\')" onclick="Srch.U.selectPath(\'', $scriptEncode(ctx.CurrentItem.Path) ,'\', this); Srch.U.ensureCSSClassNameExist(this, \'', $scriptEncode(resultWithMetadataPathClass) ,'\');" onkeydown="Srch.U.setPath(event, this, \'', $scriptEncode(ctx.CurrentItem.Path) ,'\', \'', $scriptEncode(truncatedUrl) ,'\')">'
,'                        ', truncatedUrl ,''
,'                    </div>'
,'                </div>'
);
            if(hasMetadata)
            {
ms_outHtml.push(''
,'                <div class="ms-srch-item-metadataContainer">'
,'                    <div class="ms-srch-item-metadataSeparator"></div>'
);
                if (!$isNull(ctx.CurrentItem.CommunityMembersCount))
                {
                    var members = "<span class='ms-srch-metadataText-emphasis'>" + $htmlEncode(ctx.CurrentItem.CommunityMembersCount) + "</span>";
                    if(ctx.CurrentItem.CommunityMembersCount > maxMetadataValue)
                    {
                        members = "<span class='ms-srch-metadataText-emphasis'>" + $htmlEncode(String.format(Srch.Res.item_MoreThan, maxMetadataValue)) + "</span>";
                    }

                    if(ctx.CurrentItem.CommunityMembersCount == 1)
                    {
                        members = String.format($htmlEncode(Srch.Res.item_Community_Member), members);
                    }
                    else
                    {
                        members = String.format($htmlEncode(Srch.Res.item_Community_Members), members);
                    }
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.members) ,'" class="ms-metadata ms-srch-item-metadataText ms-srch-ellipsis">'
,'                        ', members ,''
,'                    </div>'
);
                }
                if (!$isNull(ctx.CurrentItem.CommunityTopicsCount))
                {
                    var topics = "<span class='ms-srch-metadataText-emphasis'>" + $htmlEncode(ctx.CurrentItem.CommunityTopicsCount) + "</span>";
                    if(ctx.CurrentItem.CommunityTopicsCount > maxMetadataValue)
                    {
                        topics = "<span class='ms-srch-metadataText-emphasis'>" + $htmlEncode(String.format(Srch.Res.item_MoreThan, maxMetadataValue)) + "</span>";
                    }

                    if(ctx.CurrentItem.CommunityTopicsCount == 1)
                    {
                        topics = String.format($htmlEncode(Srch.Res.item_Community_Discussion), topics);
                    }
                    else
                    {
                        topics = String.format($htmlEncode(Srch.Res.item_Community_Discussions), topics);
                    }
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.discussions) ,'" class="ms-metadata ms-srch-item-metadataText ms-srch-ellipsis">'
,'                        ', topics ,''
,'                    </div>'
);
                }
                if (!$isNull(ctx.CurrentItem.CommunityRepliesCount))
                {
                    var replies = "<span class='ms-srch-metadataText-emphasis'>" + $htmlEncode(ctx.CurrentItem.CommunityRepliesCount) + "</span>";
                    if(ctx.CurrentItem.CommunityRepliesCount > maxMetadataValue)
                    {
                        replies = "<span class='ms-srch-metadataText-emphasis'>" + $htmlEncode(String.format(Srch.Res.item_MoreThan, maxMetadataValue)) + "</span>";
                    }

                    if(ctx.CurrentItem.CommunityRepliesCount == 1)
                    {
                        replies = String.format($htmlEncode(Srch.Res.item_Reply), replies);
                    }
                    else
                    {
                        replies = String.format($htmlEncode(Srch.Res.item_Replies), replies);
                    }
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.replies) ,'" class="ms-metadata ms-srch-item-metadataText ms-srch-metadataText-extraVerticalPadded ms-srch-ellipsis">'
,'                        ', replies ,''
,'                    </div>'
);
                }
ms_outHtml.push(''
,'                </div>'
);
            }
ms_outHtml.push(''
,'                <div id="', $htmlEncode(hoverId) ,'" class="ms-srch-hover-outerContainer"></div>'
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
function RegisterTemplate_eb86e64b46b1453397bd7844344ae6d1() {ULSEda:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Community", DisplayTemplate_eb86e64b46b1453397bd7844344ae6d1);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Community.js", DisplayTemplate_eb86e64b46b1453397bd7844344ae6d1);
}

}
RegisterTemplate_eb86e64b46b1453397bd7844344ae6d1();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Community.js"), RegisterTemplate_eb86e64b46b1453397bd7844344ae6d1);
}
