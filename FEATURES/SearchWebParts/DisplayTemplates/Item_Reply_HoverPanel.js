function ULS8fd(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Reply_HoverPanel.js";return o;}
function DisplayTemplate_709b68c3479d463da1d9ed241d145290(ctx) {ULS8fd:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_709b68c3479d463da1d9ed241d145290.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Reply_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchHoverPanel'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'AuthorOWSUSER':['AuthorOWSUSER'], 'Path':['Path'], 'SiteLogo':['SiteLogo'], 'SiteDescription':['SiteDescription'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'deeplinks':['deeplinks'], 'importance':['importance'], 'FileType':['FileType'], 'ReplyCount':['ReplyCount'], 'LikesCount':['LikesCount'], 'BestAnswerId':['BestAnswerId'], 'DiscussionCategory':['DiscussionCategory'], 'DiscussionPost':['DiscussionPost'], 'Created':['Created'], 'DiscussionLikesCount':['DiscussionLikesCount']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULS8fd:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        var maxRepliesToShow = 2;
        var replyMaxLengthInChars = 200;
        var originalPostMaxLengthInChars = 120;

        var i = 0;
        var id = ctx.CurrentItem.id;
        if(!$isEmptyString(ctx.CurrentItem.DiscussionCategory))
        {
            ctx.CurrentItem.csr_FileType = String.format(Srch.Res.hp_ReplyCategory, ctx.CurrentItem.DiscussionCategory);
        }
        else
        {
            ctx.CurrentItem.csr_FileType = Srch.Res.hp_Reply;
        }

        ctx.CurrentItem.Title = ctx.CurrentItem.DiscussionPost;

        var userPersonaId = id + "_peopleUserPersona";
        var authorUsername = Srch.U.getUsernameFromAuthorField(ctx.CurrentItem.AuthorOWSUSER);
        AddPostRenderCallback(ctx, function()
        {ULS8fd:;
            Srch.SSU.renderPersona(authorUsername, userPersonaId);
        });
ms_outHtml.push(''
,'        <div class="ms-srch-hover-innerContainer ms-srch-hover-standardSize" id="', $htmlEncode(id + HP.ids.inner) ,'">'
,'            <div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder) ,'"></div>'
,'            <div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow) ,'"></div>'
,'            <div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content) ,'" data-displaytemplate="ReplyHoverPanel">'
,'                <div id="', $htmlEncode(id + HP.ids.header) ,'" class="ms-srch-hover-header">'
,'                    ', ctx.RenderHeader(ctx) ,''
,'                </div>'
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
,'                                ', $htmlEncode(Srch.U.truncateEnd(ctx.CurrentItem.DiscussionPost, replyMaxLengthInChars)) ,''
,'                            </div>'
,'                            <div class="ms-metadata">'
);
                            if(!$isNull(ctx.CurrentItem.Created))
                            {
                                var timeSincePostId = id + "_timeSincePost";
                                AddPostRenderCallback(ctx, function()
                                {ULS8fd:;
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
                if(!$isEmptyString(ctx.CurrentItem.ParentLink))
                {
                    var headerElementID = id + "_headerElement";
                    var originalPostPersonaElementID = id + "_personaElement";
                    var originalPostTextContainerID = id + "_textContainer";
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(headerElementID) ,'" class="ms-srch-hover-additionalRepliesHeader ms-srch-display-none">'
,'                        <span class="ms-metadata">'
,'                            ', $htmlEncode(Srch.Res.hp_OriginalPost) ,''
,'                        </span>'
,'                    </div>'
,'                    <div class="ms-srch-hover-post">'
,'                        <div id="', $htmlEncode(originalPostPersonaElementID) ,'" class="ms-srch-hover-postPersona"></div>'
,'                        <div id="', $htmlEncode(originalPostTextContainerID) ,'"></div>'
,'                    </div>'
);
                    AddPostRenderCallback(ctx, function()
                    {ULS8fd:;
                        var queryText = 'path:\"' + ctx.CurrentItem.ParentLink + '\"';

                        Srch.SSU.populatePostsByQuery(
                            ctx.ClientControl,
                            queryText,
                            headerElementID,
                            null,
                            [originalPostPersonaElementID],
                            [originalPostTextContainerID],
                            Srch.SSU.TextElementType.postElement,
                            originalPostMaxLengthInChars);
                    });
                }
ms_outHtml.push(''
,''
,'                </div>'
,'                <div id="', $htmlEncode(id + HP.ids.actions) ,'" class="ms-srch-hover-actions">'
);
                if (!Srch.U.e(ctx.CurrentItem.ParentLink))
                {
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-action">'
,'                        <a clicktype="ActionEdit" id="', $htmlEncode(id + HP.ids.openClient) ,'" class="ms-calloutLink ms-uppercase" href="', $urlHtmlEncode(ctx.CurrentItem.ParentLink) ,'">'
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
function RegisterTemplate_709b68c3479d463da1d9ed241d145290() {ULS8fd:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Reply_HoverPanel", DisplayTemplate_709b68c3479d463da1d9ed241d145290);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Reply_HoverPanel.js", DisplayTemplate_709b68c3479d463da1d9ed241d145290);
}

}
RegisterTemplate_709b68c3479d463da1d9ed241d145290();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Reply_HoverPanel.js"), RegisterTemplate_709b68c3479d463da1d9ed241d145290);
}
