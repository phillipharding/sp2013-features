function ULSCla(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_MicroBlog_HoverPanel.js";return o;}
function DisplayTemplate_66a6387e42ea4163ba81b41c47d54427(ctx) {ULSCla:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_66a6387e42ea4163ba81b41c47d54427.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_MicroBlog_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchHoverPanel'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Author':['FullPostAuthor'], 'Path':['Path'], 'Description':['Description'], 'LastModifiedTime':['LastModifiedTime'], 'CollapsingStatus':['CollapsingStatus'], 'Created':['Created'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'ParentLink':['ParentLink'], 'AttachmentDescription':['AttachmentDescription'], 'AttachmentType':['AttachmentType'], 'AttachmentURI':['AttachmentURI'], 'RootPostID':['RootPostID'], 'ReplyCount':['ReplyCount'], 'LikesCount':['LikesCount'], 'FullPostBody':['FullPostBody']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSCla:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        var maxRepliesToShow = 2;
        var maxBodyLengthInChars = 120;

        var i = 0;
        var id = ctx.CurrentItem.id;
        ctx.CurrentItem.csr_FileType = Srch.Res.hp_MicroBlog;

        var microBlogPostType = -1;
        if(!$isNull(ctx.CurrentItem.MicroBlogType))
        {
            microBlogPostType = ctx.CurrentItem.MicroBlogType;
        }

        var path = "";
        var threadLink = "";            
        if(!$isNull(ctx.CurrentItem.Path))
        {
            path = ctx.CurrentItem.Path;
            var idx = path.lastIndexOf("/Lists/PublishedFeed");
            if(idx > -1)
            {
                threadLink = path.substr(0, idx) + "/newsfeed.aspx?ThreadID=" + $urlKeyValueEncode(path);
            }
        }

        var authorUsername = "";
        if(!$isNull(ctx.CurrentItem.PostAuthor))
        {
            authorUsername = ctx.CurrentItem.PostAuthor;
        }

        var authorElementId = id + "_author";
        var viewConversationLinkId = id + "_viewConversation";
        var userPersonaId = id + "_peopleUserPersona";

        AddPostRenderCallback(ctx, function()
        {ULSCla:;
            var personaControlElement = document.getElementById(userPersonaId);
            if($isNull(personaControlElement))
            {
                return;
            }

            Srch.U.ensureCSSClassNameExist(personaControlElement, "ms-srch-display-none");

            EnsureScriptFunc("SP.runtime.js", "SP.ClientRuntimeContext", function()
            {ULSCla:;
                var ctxCurrent = Srch.ScriptApplicationManager.get_clientRuntimeContext();

                var peopleManager = SP.UserProfiles.PeopleManager.newObject(ctxCurrent);
                var authorprops = peopleManager.getPropertiesFor(authorUsername);
                var propertiesToInclude = [ "DisplayName", "AccountName", "PictureUrl", "Email" ];
                ctxCurrent.load(authorprops, propertiesToInclude);

                var rootPostSuccess = function()
                {ULSCla:;
                    var authorName = "";
                    if(authorprops.isPropertyAvailable("DisplayName"))
                    {
                        authorName = authorprops.get_displayName();
                        var authorElement = document.getElementById(authorElementId);
                        if(!$isNull(authorElement))
                        {
                            authorElement.innerHTML = $htmlEncode(authorName);
                        }
                    }

                    var authorEmail = "";
                    if(authorprops.isPropertyAvailable("Email"))
                    {
                        authorEmail = authorprops.get_email();
                    }

                    var authorPicUrl = "";
                    if(authorprops.isPropertyAvailable("PictureUrl"))
                    {
                        authorPicUrl = authorprops.get_pictureUrl();
                    }

                    var renderCtx = new ContextInfo();
                    renderCtx.Templates = {};
                    renderCtx.Templates["Fields"] = {};
                    var fieldSchemaData = { "PictureOnly":"1", "PictureSize": "Size_48px"};
                    var listSchema = {"EffectivePresenceEnabled": "1", "PresenceAlt": "No presence information"};
                    var userData = {"title": authorName, "email": authorEmail, "picture": authorPicUrl};

                    personaControlElement.innerHTML = RenderUserFieldWorker(renderCtx, fieldSchemaData, userData, listSchema);

                    Srch.U.ensureCSSClassNameNotExist(personaControlElement, "ms-srch-display-none");
                    if (personaControlElement.offsetWidth < Srch.U.personaControlRenderedThreshold)
                    {
                        Srch.U.ensureCSSClassNameExist(personaControlElement, "ms-srch-display-none");
                    }

                };
                var rootPostFailure = function()
                {ULSCla:;
                    Srch.U.trace(null, "Item_MicroBlog_HoverPanel", "Failed to retrieve user information.");
                };

                ctxCurrent.executeQueryAsync(rootPostSuccess, rootPostFailure);
            });
        });
ms_outHtml.push(''
,'        <div class="ms-srch-hover-innerContainer ms-srch-hover-standardSize" id="', $htmlEncode(id + HP.ids.inner) ,'">'
,'            <div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder) ,'"></div>'
,'            <div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow) ,'"></div>'
,'            <div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content) ,'" data-displaytemplate="MicroBlogHoverPanel">'
,'                <div id="', $htmlEncode(id + HP.ids.header) ,'" class="ms-srch-hover-header">'
,'                    ', ctx.RenderHeader(ctx) ,''
,'                </div>'
,''
,'                <div id="', $htmlEncode(id + HP.ids.body) ,'" class="ms-srch-hover-body ms-srch-discussionHover-body">'
,'                    <div class="ms-srch-hover-post">'
,'                        <div id="', $htmlEncode(userPersonaId) ,'" class="ms-srch-hover-postPersona"></div>'
,'                        <div>'
,'                            <h3 id="', $htmlEncode(authorElementId) ,'"></h3>'
,''
,'                            <div class="ms-srch-hover-text ms-srch-hover-postText">'
,'                                ', $htmlEncode(Srch.U.truncateEnd(ctx.CurrentItem.FullPostBody, maxBodyLengthInChars)) ,''
,''
);
                            if( !$isNull(ctx.CurrentItem.AttachmentType) &&
                                (ctx.CurrentItem.AttachmentType === 1) &&
                                !Srch.U.e(ctx.CurrentItem.AttachmentURI))
                            {
ms_outHtml.push(''
,'                                <div class="ms-srch-hover-microBlogImageContainer">'
,'                                    <img id="PostCalloutPicture" src="', $urlHtmlEncode(ctx.CurrentItem.AttachmentURI) ,'" alt="', $htmlEncode(ctx.CurrentItem.AttachmentDescription) ,'" />'
,'                                </div>'
);
                            }
ms_outHtml.push(''
,'                            </div>'
,'                            <div class="ms-metadata">'
,''
);
                            if(!$isNull(ctx.CurrentItem.Created))
                            {
                                var timeSincePostId = id + "_timeSincePost";
                                AddPostRenderCallback(ctx, function()
                                {ULSCla:;
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
                if( microBlogPostType === SP.Microfeed.MicroBlogType.replyPost &&
                    !$isNull(ctx.CurrentItem.OriginalPath) &&
                    !$isNull(ctx.CurrentItem.RootPostID) )
                {
                    var headerElementID = id + "_headerElement";
                    var rootPostPersonaElementID = id + "_personaElement";
                    var rootPostTextContainerID = id + "_textContainer";
                    var rootPostTitleElementID = rootPostPersonaElementID + Srch.SSU.microBlogTitleIdSuffix;
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(headerElementID) ,'" class="ms-srch-hover-additionalRepliesHeader ms-srch-display-none">'
,'                        <span class="ms-metadata">'
,'                            ', $htmlEncode(Srch.Res.hp_OriginalPost) ,''
,'                        </span>'
,'                    </div>'
,'                    <div class="ms-srch-hover-post">'
,'                        <div id="', $htmlEncode(rootPostPersonaElementID) ,'" class="ms-srch-hover-postPersona"></div>'
,'                        <div id="', $htmlEncode(rootPostTextContainerID) ,'">'
,'                            <h3 id="', $htmlEncode(rootPostTitleElementID) ,'"></h3>'
,'                        </div>'
,'                    </div>'
);
                    AddPostRenderCallback(ctx, function()
                    {ULSCla:;
                        var commonUrlEndIndex = ctx.CurrentItem.OriginalPath.indexOf("DispForm.aspx?ID=");
                        var commonUrlPrefix = ctx.CurrentItem.OriginalPath.substring(0, commonUrlEndIndex) + "*";

                        var queryText = 'listitemid:\"' + ctx.CurrentItem.RootPostID + '\" AND path:\"' + commonUrlPrefix + '\"';

                        Srch.SSU.populatePostsByQuery(
                            ctx.ClientControl,
                            queryText,
                            headerElementID,
                            null,
                            [rootPostPersonaElementID],
                            [rootPostTextContainerID],
                            Srch.SSU.TextElementType.microblogElement,
                            maxBodyLengthInChars);
                    });
                }
                else if((microBlogPostType === SP.Microfeed.MicroBlogType.rootPost || microBlogPostType === SP.Microfeed.MicroBlogType.activityEventRootPost) &&
                        !$isNull(ctx.CurrentItem.ReplyCount) &&
                        ctx.CurrentItem.ReplyCount > 0 &&
                        !$isNull(ctx.CurrentItem.OriginalPath) &&
                        !$isNull(ctx.CurrentItem.ListItemID))
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

                        var nextTitleElementID = nextPersonaElementID + Srch.SSU.microBlogTitleIdSuffix;
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-post">'
,'                        <div id="', $htmlEncode(nextPersonaElementID) ,'" class="ms-srch-hover-postPersona"></div>'
,'                        <div id="', $htmlEncode(nextTextContainerID) ,'">'
,'                            <h3 id="', $htmlEncode(nextTitleElementID) ,'"></h3>'
,'                        </div>'
,'                    </div>'
);
                    }

                    AddPostRenderCallback(ctx, function()
                    {ULSCla:;
                        var commonUrlEndIndex = ctx.CurrentItem.OriginalPath.indexOf("DispForm.aspx?ID=");
                        var commonUrlPrefix = ctx.CurrentItem.OriginalPath.substring(0, commonUrlEndIndex) + "*";

                        var queryText = 'rootpostid:\"' + ctx.CurrentItem.ListItemID + '\" AND path:\"' + commonUrlPrefix + '\"';

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
                            Srch.SSU.TextElementType.microblogElement,
                            maxBodyLengthInChars);
                    });
                }
ms_outHtml.push(''
,''
,'                </div>'
,'                <div id="', $htmlEncode(id + HP.ids.actions) ,'" class="ms-srch-hover-actions">'
);
                if (!Srch.U.e(threadLink))
                {
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-action">'
,'                        <a clicktype="ActionEdit" id="', $htmlEncode(viewConversationLinkId) ,'" class="ms-calloutLink ms-uppercase" href="', $urlHtmlEncode(threadLink) ,'">'
,'                            ', $htmlEncode(Srch.Res.hp_ViewConversation) ,''
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
function RegisterTemplate_66a6387e42ea4163ba81b41c47d54427() {ULSCla:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_MicroBlog_HoverPanel", DisplayTemplate_66a6387e42ea4163ba81b41c47d54427);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_MicroBlog_HoverPanel.js", DisplayTemplate_66a6387e42ea4163ba81b41c47d54427);
}

}
RegisterTemplate_66a6387e42ea4163ba81b41c47d54427();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_MicroBlog_HoverPanel.js"), RegisterTemplate_66a6387e42ea4163ba81b41c47d54427);
}
