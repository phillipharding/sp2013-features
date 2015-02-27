function ULSFrk(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Community_HoverPanel.js";return o;}
function DisplayTemplate_54f6657908c244689a0ef66569153759(ctx) {ULSFrk:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_54f6657908c244689a0ef66569153759.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Community_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchHoverPanel'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Path':['Path'], 'SiteLogo':['SiteLogo'], 'SiteDescription':['SiteDescription'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'deeplinks':['deeplinks'], 'importance':['importance'], 'FileType':['FileType'], 'CommunityMembersCount':['CommunityMembersCount'], 'CommunityRepliesCount':['CommunityRepliesCount'], 'CommunityTopicsCount':['CommunityTopicsCount']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSFrk:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        var maxDiscussionsToShow  = 2;
        var maxBodyLengthInChars = 120;
        var maxMetadataValue = Srch.U.maximumSocialMetadataValue;
        var maxMetadataLabelLengthInChars = 75;

        var i = 0;
        var id = ctx.CurrentItem.id;
        ctx.CurrentItem.csr_ShowFollowLink = !Srch.U.isSPFSKU();
        ctx.CurrentItem.csr_IsSite = true;
        ctx.CurrentItem.csr_FileType = Srch.Res.hp_Community;

        if (!Srch.U.n(ctx.CurrentItem.Size) && HP.IsNumeric(ctx.CurrentItem.Size))
        {
            ctx.CurrentItem.Size = -1;
        }
ms_outHtml.push(''
,'        <div class="ms-srch-hover-innerContainer ms-srch-hover-standardSize" id="', $htmlEncode(id + HP.ids.inner) ,'">'
,'            <div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder) ,'"></div>'
,'            <div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow) ,'"></div>'
,'            <div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content) ,'" data-displaytemplate="CommunityHoverPanel">'
,''
,'                <div id="', $htmlEncode(id + HP.ids.header) ,'" class="ms-srch-hover-header">'
,'                    ', ctx.RenderHeader(ctx) ,''
,'                </div>'
,''
,'                <div id="', $htmlEncode(id + HP.ids.body) ,'" class="ms-srch-hover-body ms-srch-communityHover-body">'
);
                if(!Srch.U.n(ctx.CurrentItem.SiteLogo))
                {
                    ctx.CurrentItem.csr_DataShown = true;
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-communityLogoContainer">'
,'                        <img id="', $htmlEncode(id + HP.ids.siteLogo) ,'" alt="', $htmlEncode(Srch.Res.hp_Alt_SiteLogo) ,'" src="', $urlHtmlEncode(ctx.CurrentItem.SiteLogo) ,'" onload="this.style.display=\'block\';" />'
,'                    </div>'
);
                }

                if (!Srch.U.e(ctx.CurrentItem.SiteDescription))
                {
                    ctx.CurrentItem.csr_DataShown = true;
ms_outHtml.push(''
,''
,'                    <div class="ms-srch-hover-subTitle ms-srch-hover-subTitle-communityDescription">'
,'                        <h3 class="ms-soften">'
,'                            ', $htmlEncode(Srch.Res.hp_SiteDescription) ,''
,'                        </h3>'
,'                    </div>'
,''
,'                    <div class="ms-srch-hover-text" id="', $htmlEncode(id + HP.ids.siteDescription) ,'" title="', $htmlEncode(ctx.CurrentItem.SiteDescription) ,'">'
,'                        ', $htmlEncode(Srch.U.truncateEnd(ctx.CurrentItem.SiteDescription, 150)) ,''
,'                    </div>'
);
                }

                if (!$isNull(ctx.CurrentItem.CommunityMembersCount))
                {
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-communityMetadataContainer ms-srch-hover-subTitle">'
);
                        ctx.CurrentItem.csr_DataShown = true;

                        var memberCount = ctx.CurrentItem.CommunityMembersCount;
                        if(memberCount > maxMetadataValue)
                        {
                            memberCount = String.format(Srch.Res.item_MoreThan, maxMetadataValue);
                        }

                        var memberLabel = Srch.Res.item_Community_MembersLabel;
                        if(ctx.CurrentItem.CommunityMembersCount == 1)
                        {
                            memberLabel = Srch.Res.item_Community_MemberLabel;
                        }
ms_outHtml.push(''
,'                        <div id="', $htmlEncode(id + Srch.U.Ids.members) ,'" class="ms-metadata ms-srch-hover-communityMetadata">'
,'                            <div class="ms-textXLarge ms-srch-hover-communityMetadataNumbers" title="',$htmlEncode(memberLabel),'">'
,'                                ', $htmlEncode(memberCount) ,''
,'                            </div>'
,'                            <div class="ms-srch-ellipsis" title="',$htmlEncode(memberLabel),'">'
,'                                ', $htmlEncode(memberLabel) ,''
,'                            </div>'
,'                        </div>'
,'                    </div>'
);
                }

                if(!$isNull(ctx.CurrentItem.CommunityTopicsCount) && ctx.CurrentItem.CommunityTopicsCount > 0)
                {
                    var headerElementID = id + "_headerElement";
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(headerElementID) ,'" class="ms-srch-hover-subTitle ms-srch-hover-subTitle-popularDiscussions ms-srch-display-none">'
,'                        <h3 class="ms-soften">'
,'                            ', $htmlEncode(Srch.Res.hp_PopularDiscussions) ,''
,'                        </h3>'
,'                    </div>'
);
                    var personaElementIDs = new Array();
                    var textContainerIDs = new Array();

                    for(j = 0; j < maxDiscussionsToShow && j < ctx.CurrentItem.CommunityTopicsCount; ++j)
                    {
                        var nextPersonaElementID =id + "_personaElement_" + j;
                        personaElementIDs.push(nextPersonaElementID);

                        var nextTextContainerID = id + "_textContainer_" + j;
                        textContainerIDs.push(nextTextContainerID);
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-discussion">'
,'                        <div id="', $htmlEncode(nextPersonaElementID) ,'" class="ms-srch-hover-postPersona"></div>'
,'                        <div id="', $htmlEncode(nextTextContainerID) ,'"></div>'
,'                    </div>'
);
                    }

                    AddPostRenderCallback(ctx, function()
                    {ULSFrk:;
                        var queryText = 'ContentTypeId:\"0x012002*\" AND ParentLink:\"' + Srch.U.concatUrl(ctx.CurrentItem.Path, "/Lists/Community Discussion/AllItems.aspx") + '\"';

                        var sort = new Srch.ResultSort(
                            "ViewsLifetime",
                            Microsoft.SharePoint.Client.Search.Query.SortDirection.descending);

                        Srch.SSU.populatePostsByQuery(
                            ctx.ClientControl,
                            queryText,
                            headerElementID,
                            [sort],
                            personaElementIDs,
                            textContainerIDs,
                            Srch.SSU.TextElementType.discussionElement,
                            maxBodyLengthInChars)
                    });
                }
ms_outHtml.push(''
,'                </div>'
,'                <div id="', $htmlEncode(id + HP.ids.actions) ,'" class="ms-srch-hover-actions">'
);
                if (!Srch.U.e(ctx.CurrentItem.Path))
                {
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-action">'
,'                        <a clicktype="ActionEdit" id="', $htmlEncode(id + HP.ids.openClient) ,'" class="ms-calloutLink ms-uppercase" href="', $urlHtmlEncode(ctx.CurrentItem.Path) ,'">'
,'                            ', $htmlEncode(Srch.Res.hp_VisitCommunity) ,''
,'                        </a>'
,'                    </div>'
); 
                    if (ctx.CurrentItem.csr_ShowFollowLink)
                    {
                        var isDoc = true;
                        if(!$isNull(ctx.CurrentItem.csr_IsSite) && ctx.CurrentItem.csr_IsSite == true)
                        {
                            isDoc = false;
                        }
ms_outHtml.push(''
,'                        <div class="ms-srch-hover-action">'
,'                            <a id="', $htmlEncode(id + HP.ids.follow) ,'" class="ms-calloutLink ms-uppercase" href="javascript:HP.Follow(\'', $scriptEncode(ctx.CurrentItem.Path) ,'\', true, ', isDoc ,')" title="', $htmlEncode(Srch.Res.hp_Tooltip_Follow) ,'">'
,'                                ', $htmlEncode(Srch.Res.hp_Follow) ,''
,'                            </a>'
,'                        </div>'
);
                    }
                }
ms_outHtml.push(''
,'                </div>'
,'            </div>'
,'        </div>'
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_54f6657908c244689a0ef66569153759() {ULSFrk:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Community_HoverPanel", DisplayTemplate_54f6657908c244689a0ef66569153759);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Community_HoverPanel.js", DisplayTemplate_54f6657908c244689a0ef66569153759);
}

}
RegisterTemplate_54f6657908c244689a0ef66569153759();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Community_HoverPanel.js"), RegisterTemplate_54f6657908c244689a0ef66569153759);
}
