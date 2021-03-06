function ULSup9(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Reply.js";return o;}
function DisplayTemplate_33f83a07be0c43e089c6db0d801c4314(ctx) {ULSup9:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_33f83a07be0c43e089c6db0d801c4314.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Reply.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'AuthorOWSUSER':['AuthorOWSUSER'], 'Path':['Path'], 'SiteLogo':['SiteLogo'], 'SiteDescription':['SiteDescription'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'deeplinks':['deeplinks'], 'FileType':['FileType'], 'ReplyCount':['ReplyCount'], 'LikesCount':['LikesCount'], 'BestAnswerId':['BestAnswerId'], 'DiscussionCategory':['DiscussionCategory'], 'DiscussionPost':['DiscussionPost'], 'Created':['Created']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSup9:;
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
            var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_Reply_HoverPanel.js";
            $setResultItem(itemId, ctx.CurrentItem);

            var hasMetadata = false;
            var bodyClass = "ms-srch-item-body";
            var pathClass = "ms-srch-item-path";
            var resultWithMetadataPathClass = "";
            var maxUrlLength = Srch.U.pathTruncationLength;
            var maxTitleLengthInChars = Srch.U.titleTruncationLength;
            if (!$isNull(ctx.CurrentItem.ReplyCount) ||
                !$isNull(ctx.CurrentItem.LikesCount) ||
                !$isNull(ctx.CurrentItem.DiscussionLikesCount) ||
                !$isNull(ctx.CurrentItem.DiscussionBestAnswerID))
            {
                hasMetadata = true;
                bodyClass += " ms-srch-communityItem-body";
                pathClass += " ms-srch-communityItem-path";
                resultWithMetadataPathClass = "ms-srch-communityItem-path";
                maxUrlLength = Srch.U.pathTruncationLengthWithMetadata;
                maxTitleLengthInChars = Srch.U.titleTruncationLengthWithMetadata;
            }

            var title = "";
            if(!$isEmptyString(ctx.CurrentItem.DiscussionPost))
            {
                title = ctx.CurrentItem.DiscussionPost;
            }

            if ($isEmptyString(title))
            {
                title = ctx.CurrentItem.Title;
            }

            var displayPath = Srch.U.getHighlightedProperty(id, ctx.CurrentItem, "Path");
            var truncatedUrl = Srch.U.truncateHighlightedUrl(displayPath, maxUrlLength);

            var showHoverPanelCallback = Srch.U.getShowHoverPanelCallbackWide(itemId, hoverId, hoverUrl);
            var hideHoverPanelCallback = Srch.U.getHideHoverPanelCallback();
ms_outHtml.push(''
,'            <div id="', $htmlEncode(itemId) ,'" name="Item" data-displaytemplate="ReplyItem" class="ms-srch-item" onmouseover="', showHoverPanelCallback ,'" onmouseout="', hideHoverPanelCallback ,'">'
,''
,'                <div id="', $htmlEncode(id + Srch.U.Ids.body) ,'" class=" ', $htmlEncode(bodyClass) ,' " onclick="', showHoverPanelCallback ,'">'
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.title) ,'" class="ms-srch-item-title">'
,'                        <h3 class="ms-srch-ellipsis">'
,'                            <span class="ms-srchnav-quotationopenglyph-span">'
,'                                <img class="ms-srchnav-quotationopenglyph" src="', $urlHtmlEncode(GetThemedImageUrl('searchresultui.png')) ,'" />'
,'                            </span>'
,'                            <a clicktype="Result" id="', $htmlEncode(id + Srch.U.Ids.titleLink) ,'" href="', $urlHtmlEncode(ctx.CurrentItem.Path) ,'" class="ms-srch-item-link" title="', $htmlEncode(title) ,'" onfocus="', showHoverPanelCallback ,'">'
,'                                ', $htmlEncode(Srch.U.truncateEnd(title, maxTitleLengthInChars)) ,''
,'                            </a>'
,'                            <span class="ms-srchnav-quotationcloseglyph-span">'
,'                                <img class="ms-srchnav-quotationcloseglyph" src="', $urlHtmlEncode(GetThemedImageUrl('searchresultui.png')) ,'" />'
,'                            </span>'
,'                        </h3>'
,'                    </div>'
,''
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.postInfo) ,'" class="ms-metadata">'
);
                        var postInfoElementId = id + "_postInfoElement";
                        var nullableCreatedDate = ctx.CurrentItem.Created;
                        var author = "";
                        if (!$isEmptyString(ctx.CurrentItem.AuthorOWSUSER))
                        {
                            author = Srch.U.getDisplayNameFromAuthorField(ctx.CurrentItem.AuthorOWSUSER);
                        }

                        AddPostRenderCallback(ctx, function()
                        {ULSup9:;
                            EnsureScriptFunc("sp.datetimeutil.js", "SP.DateTimeUtil.SPRelativeDateTime", function()
                            {ULSup9:;
                                var dateString = "";
                                if(!$isNull(nullableCreatedDate))
                                {
                                    dateString = Srch.U.getFriendlyTimeInterval(nullableCreatedDate, Srch.U.getCalendarType());
                                }

                                var encodedPostInfo = "";
                                if(!$isEmptyString(author))
                                {
                                    var encodedAuthor = "<span class='ms-srch-metadataText-emphasis'>" + $htmlEncode(author) + "</span>";
                                    if(!$isEmptyString(dateString))
                                    {
                                        encodedPostInfo = String.format($htmlEncode(Srch.Res.item_replyAuthorDate),
                                            encodedAuthor,
                                            $htmlEncode(dateString));
                                    }
                                    else
                                    {
                                        encodedPostInfo = String.format($htmlEncode(Srch.Res.item_replyAuthor),
                                            encodedAuthor);
                                    }
                                }
                                else if(!$isEmptyString(dateString))
                                {
                                    encodedPostInfo = String.format($htmlEncode(Srch.Res.item_replyDate),
                                        $htmlEncode(dateString));
                                }

                                var targetElement = document.getElementById(postInfoElementId);
                                targetElement.innerHTML = encodedPostInfo;
                            });
                        });
ms_outHtml.push(''
,'                        <span id="', $htmlEncode(postInfoElementId) ,'"></span>'
,'                    </div>'
);
                if(!$isEmptyString(ctx.CurrentItem.DiscussionPost))
                {
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.summary) ,'" class="ms-srch-communityItem-summary">'
,'                        ', $htmlEncode(Srch.U.truncateEnd(ctx.CurrentItem.DiscussionPost, maxBodyLengthInChars)) ,''
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
                    var replyCount = 0;
                    if (!$isNull(ctx.CurrentItem.ReplyCount))
                    {
                        replyCount = ctx.CurrentItem.ReplyCount;
                    }

                    var replies = replyCount.toString();
                    if(replyCount > maxMetadataValue)
                    {
                        replies = String.format(Srch.Res.item_MoreThan, maxMetadataValue);
                    }

                    var encodedReplies = "<span class='ms-srch-metadataText-emphasis'>" + $htmlEncode(replies) + "</span>";
                    if(replyCount == 1)
                    {
                        encodedReplies = String.format($htmlEncode(Srch.Res.item_Reply), encodedReplies);
                    }
                    else if(replyCount > 1)
                    {
                        encodedReplies = String.format($htmlEncode(Srch.Res.item_Replies), encodedReplies);
                    }
                    else
                    {
                        encodedReplies = String.format($htmlEncode(Srch.Res.item_NoReplies), encodedReplies);
                    }
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.replies) ,'" class="ms-metadata ms-srch-item-metadataText">'
,'                        ', encodedReplies ,''
,'                    </div>'
);
                    var likesCount = 0;
                    if (!$isNull(ctx.CurrentItem.DiscussionLikesCount))
                    {
                        likesCount = ctx.CurrentItem.DiscussionLikesCount;
                    }
                    else if (!$isNull(ctx.CurrentItem.LikesCount))
                    {
                        likesCount = ctx.CurrentItem.LikesCount;
                    }

                    var likes = likesCount.toString();
                    if(likesCount > maxMetadataValue)
                    {
                        likes = String.format(Srch.Res.item_MoreThan, maxMetadataValue);
                    }

                    var encodedLikes = "<span class='ms-srch-metadataText-emphasis'>" + $htmlEncode(likes) + "</span>";
                    if(likesCount == 1)
                    {
                        encodedLikes = String.format($htmlEncode(Srch.Res.item_Like), encodedLikes);
                    }
                    else if(likesCount > 1)
                    {
                        encodedLikes = String.format($htmlEncode(Srch.Res.item_Likes), encodedLikes);
                    }
                    else
                    {
                        encodedLikes = String.format($htmlEncode(Srch.Res.item_NoLikes), encodedLikes);
                    }
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.likes) ,'" class="ms-metadata ms-srch-item-metadataText">'
,'                        ', encodedLikes ,''
,'                    </div>'
);
                if (!$isNull(ctx.CurrentItem.DiscussionBestAnswerID))
                {
ms_outHtml.push(''
,'                    <div class="ms-srch-item-metadataText">'
,'                        <span class="ms-srch-item-bestResponseIcon-span">'
,'                            <img class="ms-comm-bestResponseIcon" src="', $urlHtmlEncode(GetThemedImageUrl('spcommon.png')) ,'" />'
,'                        </span>'
,'                        <span class="ms-metadata">'
,'                            ', $htmlEncode(Srch.Res.item_BestReply) ,''
,'                        </span>'
,'                    </div>'
);
                }
ms_outHtml.push(''
,'                </div>'
);
            }

            if(!Srch.U.e(ctx.CurrentItem.deeplinks) && !$isNull(ctx.CurrentItem.importance))
            {
ms_outHtml.push(''
,'                <div class="ms-srch-item-deepLinks" id="', $htmlEncode(id + Srch.U.Ids.deepLinks) ,'">'
,'                    ', Srch.U.getDeepLinks(ctx.CurrentItem.deeplinks, ctx.CurrentItem.importance) ,''
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
function RegisterTemplate_33f83a07be0c43e089c6db0d801c4314() {ULSup9:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Reply", DisplayTemplate_33f83a07be0c43e089c6db0d801c4314);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Reply.js", DisplayTemplate_33f83a07be0c43e089c6db0d801c4314);
}

}
RegisterTemplate_33f83a07be0c43e089c6db0d801c4314();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Reply.js"), RegisterTemplate_33f83a07be0c43e089c6db0d801c4314);
}
