function ULSm1k(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_MicroBlog.js";return o;}
function DisplayTemplate_45b48623b4ba40c5aab7b6625e493072(ctx) {ULSm1k:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_45b48623b4ba40c5aab7b6625e493072.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_MicroBlog.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Author':['FullPostAuthor'], 'Path':['Path'], 'Description':['Description'], 'LastModifiedTime':['LastModifiedTime'], 'CollapsingStatus':['CollapsingStatus'], 'Created':['Created'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'ParentLink':['ParentLink'], 'AttachmentDescription':['AttachmentDescription'], 'AttachmentType':['AttachmentType'], 'AttachmentURI':['AttachmentURI'], 'RootPostID':['RootPostID'], 'ReplyCount':['ReplyCount'], 'LikesCount':['LikesCount'], 'FullPostBody':['FullPostBody']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSm1k:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl))
        {
            var maxBodyLengthInChars = 120;
            var maxTitleLengthInChars = 60;
            var maxMetadataValue = Srch.U.maximumSocialMetadataValue;

            if (ctx.CurrentItem.Title.toLowerCase() === "dispform.aspx")
            {
                ctx.CurrentItem.Title = Srch.Res.item_DefaultTitle;
            }

            var id = ctx.ClientControl.get_nextUniqueId();
            var itemId = id + Srch.U.Ids.item;
            var hoverId = id + Srch.U.Ids.hover;
            var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_MicroBlog_HoverPanel.js";
            $setResultItem(itemId, ctx.CurrentItem);

            var title = ctx.CurrentItem.Title;

            var showHoverPanelCallback = Srch.U.getShowHoverPanelCallbackWide(itemId, hoverId, hoverUrl);
            var hideHoverPanelCallback = Srch.U.getHideHoverPanelCallback();

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

            var hasMetadata = false;
            var bodyClass = "ms-srch-item-body";

            if (!$isNull(ctx.CurrentItem.Created) ||
                !$isNull(ctx.CurrentItem.ReplyCount) ||
                !$isNull(ctx.CurrentItem.LikesCount))
            {
                hasMetadata = true;
                bodyClass += " ms-srch-communityItem-body";
                maxTitleLengthInChars -= 15;
            }

            var userPersonaId = id + "_peopleUserPersona";
            var titleLinkId = id + "_titleLink";
            var bodyElementId = id + Srch.U.Ids.body;

            AddPostRenderCallback(ctx, function()
            {ULSm1k:;
                var personaControlElement = document.getElementById(userPersonaId);
                if($isNull(personaControlElement))
                {
                    return;
                }

                Srch.U.ensureCSSClassNameExist(personaControlElement, "ms-srch-display-none");

                EnsureScriptFunc("SP.runtime.js", "SP.ClientRuntimeContext", function()
                {ULSm1k:;
                    EnsureScriptFunc("SP.UI.MySiteCommon.js", "SP.UI.People.MySitePeopleUtilities", function()
                    {ULSm1k:;
                        EnsureScriptFunc("clienttemplates.js", "RenderUserFieldWorker", function()
                        {ULSm1k:;
                            var ctxCurrent = Srch.ScriptApplicationManager.get_clientRuntimeContext();

                            var peopleManager = SP.UserProfiles.PeopleManager.newObject(ctxCurrent);
                            var authorprops = peopleManager.getPropertiesFor(authorUsername);
                            var propertiesToInclude = [ "DisplayName", "AccountName", "PictureUrl", "Email" ];
                            ctxCurrent.load(authorprops, propertiesToInclude);

                            var personaSuccess = function()
                            {ULSm1k:;
                                var authorName = "";
                                if(authorprops.isPropertyAvailable("DisplayName"))
                                {
                                    authorName = authorprops.get_displayName();
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
                                else
                                {
                                    var bodyElement = document.getElementById(bodyElementId);
                                    if(!$isNull(bodyElement))
                                    {
                                        if(hasMetadata)
                                        {
                                            Srch.U.ensureCSSClassNameNotExist(bodyElement, "ms-srch-communityItem-body");
                                            Srch.U.ensureCSSClassNameExist(bodyElement, "ms-srch-microblogCommunityItem-body");
                                        }
                                        else
                                        {
                                            Srch.U.ensureCSSClassNameExist(bodyElement, "ms-srch-microblogItem-body");
                                        }
                                    }
                                }
                            };

                            var personaFailure = function ()
                            {ULSm1k:;
                                Srch.U.trace(null, "Item_MicroBlog", String.format(
                                    "Failed to retrieve information for user '{0}'",
                                    authorUsername));
                            };

                            ctxCurrent.executeQueryAsync(personaSuccess, personaFailure);
                        });
                    });
                });
            });
ms_outHtml.push(''
,'        <div id="', $htmlEncode(itemId) ,'" name="Item" data-displaytemplate="MicroblogItem" class="ms-srch-item" onmouseover="', showHoverPanelCallback ,'" onmouseout="', hideHoverPanelCallback ,'">'
,''
,'            <div id="', $htmlEncode(userPersonaId) ,'" class="ms-srch-hover-postPersona"></div>'
,''
,'            <div>'
,'                <div id="', $htmlEncode(bodyElementId) ,'" class="', $htmlEncode(bodyClass) ,'" onclick="', showHoverPanelCallback ,'">'
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.title) ,'" class="ms-srch-item-title">'
,'                        <h3 class="ms-srch-ellipsis">'
,'                            <a clicktype="Result" id="', $htmlEncode(titleLinkId) ,'" href="', $urlHtmlEncode(threadLink) ,'" class="ms-srch-item-link" title="', $htmlEncode(ctx.CurrentItem.Title) ,'" onfocus="', showHoverPanelCallback ,'">'
,'                                ', $htmlEncode(Srch.U.truncateEnd(title, maxTitleLengthInChars)) ,''
,'                            </a>'
,'                        </h3>'
,'                    </div>'
);
                if (!$isEmptyString(ctx.CurrentItem.HitHighlightedSummary) ||
                    !$isEmptyString(ctx.CurrentItem.FullPostBody) ||
                    !Srch.U.e(ctx.CurrentItem.AttachmentURI))
                {
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.summary) ,'" class="ms-srch-communityItem-summary">'
,'                        <span class="ms-srchnav-quotationopenglyph-span">'
,'                            <img class="ms-srchnav-quotationopenglyph" src="', $urlHtmlEncode(GetThemedImageUrl('searchresultui.png')) ,'" />'
,'                        </span>'
);
                    if (!$isEmptyString(ctx.CurrentItem.HitHighlightedSummary))
                    {
ms_outHtml.push(''
,'                        ', Srch.U.processHHXML(ctx.CurrentItem.HitHighlightedSummary) ,''
);
                    }
                    else if(!$isEmptyString(ctx.CurrentItem.FullPostBody))
                    {
ms_outHtml.push(''
,'                        ', $htmlEncode(Srch.U.truncateEnd(ctx.CurrentItem.FullPostBody, maxBodyLengthInChars)) ,''
);
                    }

                    if(!Srch.U.e(ctx.CurrentItem.AttachmentURI))
                    {
                        var pictureIconUrl = SP.Utilities.VersionUtility.getImageUrl("AddImageCamera.11x11x32.png");
ms_outHtml.push(''
,'                        <a clicktype="Result" href="', $urlHtmlEncode(ctx.CurrentItem.AttachmentURI) ,'">'
,'                            <img src="', $urlHtmlEncode(pictureIconUrl) ,'" />'
,'                        </a>'
);
                    }
ms_outHtml.push(''
,'                        <span class="ms-srchnav-quotationcloseglyph-span">'
,'                            <img class="ms-srchnav-quotationcloseglyph" src="', $urlHtmlEncode(GetThemedImageUrl('searchresultui.png')) ,'" />'
,'                        </span>'
,'                    </div>'
);
                }
ms_outHtml.push(''
,'                </div>'
);
            if(hasMetadata)
            {
ms_outHtml.push(''
,'                <div class="ms-srch-item-metadataContainer">'
,'                    <div class="ms-srch-item-metadataSeparator"></div>'
);
                if (!$isNull(ctx.CurrentItem.Created))
                {
                    var created = ctx.CurrentItem.Created;
                    var encodedTimeSincePostId = $htmlEncode(id + "_timeSincePost");
                    AddPostRenderCallback(ctx, function()
                    {ULSm1k:;
                        Srch.U.renderFriendlyTimeIntervalString(created, encodedTimeSincePostId);
                    });
ms_outHtml.push(''
,'                    <div id="', encodedTimeSincePostId ,'" class="ms-metadata ms-srch-item-metadataText"></div>'
);
                }

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
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.likes) ,'" class="ms-metadata  ms-srch-item-metadataText ms-srch-metadataText-extraVerticalPadded">'
,'                        ', encodedLikes ,''
,'                    </div>'
,'                </div>'
);
            }
ms_outHtml.push(''
,'            </div>'
,''
,'            <div id="', $htmlEncode(hoverId) ,'" class="ms-srch-hover-outerContainer"></div>'
,'        </div>'
);
        }
ms_outHtml.push(''
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_45b48623b4ba40c5aab7b6625e493072() {ULSm1k:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_MicroBlog", DisplayTemplate_45b48623b4ba40c5aab7b6625e493072);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_MicroBlog.js", DisplayTemplate_45b48623b4ba40c5aab7b6625e493072);
}

}
RegisterTemplate_45b48623b4ba40c5aab7b6625e493072();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_MicroBlog.js"), RegisterTemplate_45b48623b4ba40c5aab7b6625e493072);
}
