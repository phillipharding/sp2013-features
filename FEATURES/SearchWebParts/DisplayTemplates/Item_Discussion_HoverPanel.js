function ULSLbL(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Discussion_HoverPanel.js";return o;}
function DisplayTemplate_8307386227a540ab83de96ed5012bb62(ctx) {ULSLbL:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_8307386227a540ab83de96ed5012bb62.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Discussion_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchHoverPanel'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'AuthorOWSUSER':['AuthorOWSUSER'], 'Path':['Path'], 'SiteLogo':['SiteLogo'], 'SiteDescription':['SiteDescription'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'deeplinks':['deeplinks'], 'importance':['importance'], 'FileType':['FileType'], 'ReplyCount':['ReplyCount'], 'LikesCount':['LikesCount'], 'BestAnswerId':['BestAnswerId'], 'DiscussionCategory':['DiscussionCategory'], 'DiscussionPost':['DiscussionPost'], 'Created':['Created'], 'DiscussionLikesCount':['DiscussionLikesCount']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSLbL:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        var maxRepliesToShow = 2;
        var postMaxLengthInChars = 200;
        var bestReplyMaxLengthInChars = 200;
        var recentReplyMaxLengthInChars = 120;

        var i = 0;
        var id = ctx.CurrentItem.id;
        if(!$isEmptyString(ctx.CurrentItem.DiscussionCategory))
        {
            ctx.CurrentItem.csr_FileType = String.format(Srch.Res.hp_DiscussionCategory, ctx.CurrentItem.DiscussionCategory);
        }
        else
        {
            ctx.CurrentItem.csr_FileType = Srch.Res.hp_Discussion;
        }

        var userPersonaId = id + "_peopleUserPersona";
        var authorUsername = Srch.U.getUsernameFromAuthorField(ctx.CurrentItem.AuthorOWSUSER);
        AddPostRenderCallback(ctx, function()
        {ULSLbL:;
            Srch.SSU.renderPersona(authorUsername, userPersonaId);
        });

ms_outHtml.push(''
,'        <div class="ms-srch-hover-innerContainer ms-srch-hover-standardSize" id="', $htmlEncode(id + HP.ids.inner) ,'">'
,'            <div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder) ,'"></div>'
,'            <div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow) ,'"></div>'
,'            <div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content) ,'" data-displaytemplate="DiscussionHoverPanel">'
,'                <div id="', $htmlEncode(id + HP.ids.header) ,'" class="ms-srch-hover-header">'
,'                    ', ctx.RenderHeader(ctx) ,''
,'                </div>'
,''
,'                <div id="', $htmlEncode(id + HP.ids.body) ,'" class="ms-srch-hover-body ms-srch-discussionHover-body">'
,'                    <div class="ms-srch-hover-post">'
,'                        <div id="', $htmlEncode(userPersonaId) ,'" class="ms-srch-hover-postPersona"></div>'
,'                        <div>'
,'                            <h3>'
);
                                var author = "";
                                if (!$isEmptyString(ctx.CurrentItem.AuthorOWSUSER))
                                {
                                    author = Srch.U.getDisplayNameFromAuthorField(ctx.CurrentItem.AuthorOWSUSER);
                                }
ms_outHtml.push(''
,'                                ', $htmlEncode(author) ,''
,'                            </h3>'
,''
,'                            <div class="ms-srch-hover-text ms-srch-hover-postText">'
,'                                ', $htmlEncode(Srch.U.truncateEnd(ctx.CurrentItem.DiscussionPost, postMaxLengthInChars)) ,''
,'                            </div>'
,'                            <div class="ms-metadata">'
,''
);
                            if(!$isNull(ctx.CurrentItem.Created))
                            {
                                var timeSincePostId = id + "_timeSincePost";
                                AddPostRenderCallback(ctx, function()
                                {ULSLbL:;
                                    Srch.U.renderFriendlyTimeIntervalString(ctx.CurrentItem.Created, timeSincePostId);
                                });
ms_outHtml.push(''
,'                                <span class="ms-srch-hover-dateMetadata" id="', $htmlEncode(timeSincePostId) ,'"></span>'
);
                            }
ms_outHtml.push(''
,'                                <span class="ms-srch-hover-popularityMetadata">'
); 
                                    var replyCount = 0;
                                    if (!$isNull(ctx.CurrentItem.ReplyCount))
                                    {
                                        replyCount = ctx.CurrentItem.ReplyCount;
                                    }

                                    var likesCount = 0;
                                    if (!$isNull(ctx.CurrentItem.DiscussionLikesCount))
                                    {
                                        likesCount = ctx.CurrentItem.DiscussionLikesCount;
                                    }
                                    else if (!$isNull(ctx.CurrentItem.LikesCount))
                                    {
                                        likesCount = ctx.CurrentItem.LikesCount;
                                    }

                                    var encodedPopularityMetadata = Srch.SSU.getEncodedSocialMetadataString(
                                        replyCount,
                                        likesCount);
ms_outHtml.push(''
,'                                    ', encodedPopularityMetadata ,''
,'                                </span>'
,'                            </div>'
,'                        </div>'
,'                    </div>'
,''
);
                if( !$isNull(ctx.CurrentItem.DiscussionBestAnswerID) &&
                    ctx.CurrentItem.DiscussionBestAnswerID >= 0 &&
                    !$isEmptyString(ctx.CurrentItem.ParentLink))
                {
                    var headerElementID = id + "_headerElement";
                    var bestReplyPersonaElementID = id + "_personaElement";
                    var bestReplyTextContainerID = id + "_textContainer";
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(headerElementID) ,'" class="ms-srch-hover-additionalRepliesHeader ms-srch-display-none">'
,'                        <span class="ms-srch-item-bestResponseIcon-span">'
,'                            <img class="ms-comm-bestResponseIcon" src="', $urlHtmlEncode(GetThemedImageUrl('spcommon.png')) ,'" />'
,'                        </span>'
,'                        <span class="ms-metadata">'
,'                            ', $htmlEncode(Srch.Res.item_BestReply) ,''
,'                        </span>'
,'                    </div>'
,'                    <div class="ms-srch-hover-post">'
,'                        <div id="', $htmlEncode(bestReplyPersonaElementID) ,'" class="ms-srch-hover-postPersona"></div>'
,'                        <div id="', $htmlEncode(bestReplyTextContainerID) ,'"></div>'
,'                    </div>'
);
                    AddPostRenderCallback(ctx, function()
                    {ULSLbL:;
                        var queryText = 'path:\"' + ctx.CurrentItem.ParentLink.replace('AllItems.aspx', 'DispForm.aspx?ID=') + ctx.CurrentItem.DiscussionBestAnswerID + '\"';

                        Srch.SSU.populatePostsByQuery(
                            ctx.ClientControl,
                            queryText,
                            headerElementID,
                            null,
                            [bestReplyPersonaElementID],
                            [bestReplyTextContainerID],
                            Srch.SSU.TextElementType.postElement,
                            bestReplyMaxLengthInChars);
                    });
                }
                else if(!$isNull(ctx.CurrentItem.ReplyCount) &&
                        ctx.CurrentItem.ReplyCount > 0 &&
                        !$isEmptyString(ctx.CurrentItem.Path))
                {
                    var headerElementID = id + "_headerElement";
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(headerElementID) ,'" class="ms-srch-hover-additionalRepliesHeader ms-srch-display-none">'
,'                        <span class="ms-metadata">'
,'                            ', $htmlEncode(Srch.Res.hp_RecentReplies) ,''
,'                        </span>'
,'                    </div>'
,''
);
                    var personaElementIDs = new Array();
                    var textContainerIDs = new Array();

                    for(j = 0; j < maxRepliesToShow && j < ctx.CurrentItem.ReplyCount; ++j)
                    {
                        var nextPersonaElementID = id + "_personaElement_" + j;
                        personaElementIDs.push(nextPersonaElementID);

                        var nextTextContainerID = id + "_textContainer_" + j;
                        textContainerIDs.push(nextTextContainerID);
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-post">'
,'                        <div id="', $htmlEncode(nextPersonaElementID) ,'" class="ms-srch-hover-postPersona"></div>'
,'                        <div id="', $htmlEncode(nextTextContainerID) ,'"></div>'
,'                    </div>'
);
                    }

                    AddPostRenderCallback(ctx, function()
                    {ULSLbL:;
                        var queryText = 'ParentLink:\"' + ctx.CurrentItem.Path + '\"';

                        var sort = new Srch.ResultSort(
                            "LastModifiedTime",
                            Microsoft.SharePoint.Client.Search.Query.SortDirection.descending);

                        Srch.SSU.populatePostsByQuery(
                            ctx.ClientControl,
                            queryText,
                            headerElementID,
                            [sort],
                            personaElementIDs,
                            textContainerIDs,
                            Srch.SSU.TextElementType.postElement,
                            recentReplyMaxLengthInChars);

                    });
                }
ms_outHtml.push(''
,''
,'                </div>'
,'                <div id="', $htmlEncode(id + HP.ids.actions) ,'" class="ms-srch-hover-actions">'
);
                if (!Srch.U.e(ctx.CurrentItem.Path))
                {
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-action">'
,'                        <a clicktype="ActionEdit" id="', $htmlEncode(id + HP.ids.openClient) ,'" class="ms-calloutLink ms-uppercase" href="', $urlHtmlEncode(ctx.CurrentItem.Path) ,'">'
,'                            ', $htmlEncode(Srch.Res.hp_ViewDiscussion) ,''
,'                        </a>'
,'                    </div>'
); 
                }
ms_outHtml.push(''
,'                </div>'
,'            </div> '
,'        </div>'
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_8307386227a540ab83de96ed5012bb62() {ULSLbL:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Discussion_HoverPanel", DisplayTemplate_8307386227a540ab83de96ed5012bb62);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Discussion_HoverPanel.js", DisplayTemplate_8307386227a540ab83de96ed5012bb62);
}

}
RegisterTemplate_8307386227a540ab83de96ed5012bb62();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Discussion_HoverPanel.js"), RegisterTemplate_8307386227a540ab83de96ed5012bb62);
}
