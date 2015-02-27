function ULSaAe(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_CommunityPortal.js";return o;}
function DisplayTemplate_c648569fdc584d10878ea98ef6dc45b1(ctx) {ULSaAe:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_c648569fdc584d10878ea98ef6dc45b1.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CommunityPortal.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'SiteLogo':null, 'Path':null, 'Title':null, 'Description':null, 'CommunityMembersCount':null, 'CommunityTopicsCount':null, 'CommunityRepliesCount':null, 'Created':null, 'SecondaryFileExtension':null, 'ContentTypeId':null};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSaAe:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
,''
);
var unencodedId = ctx.ClientControl.get_nextUniqueId() + "_communityPortal_";
var encodedId = $htmlEncode(unencodedId);
var itemId = encodedId + Srch.U.Ids.item;
var unencodedHoverId = unencodedId + Srch.U.Ids.hover;
var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_Community_HoverPanel.js";
var showHoverPanelCallback = Srch.U.getShowHoverPanelCallbackWide(itemId, unencodedHoverId, hoverUrl);
var ellipsisURL = SP.Utilities.VersionUtility.getImageUrl("ellipsis.16x16x32.png");

$setResultItem(itemId, ctx.CurrentItem);

var line1 = $getItemValue(ctx, "Title");
var line2 = $getItemValue(ctx, "Description");
var createdDate = $getItemValue(ctx, "Created");
var linkURL = $getItemValue(ctx, "Path");
linkURL.overrideValueRenderer($urlHtmlEncode);

var membersCount = $getItemValue(ctx, "CommunityMembersCount");
membersCount.value = !$isNull(membersCount.value) ? membersCount.value : 0;
var topicsCount = $getItemValue(ctx, "CommunityTopicsCount");
topicsCount.value = !$isNull(topicsCount.value) ? topicsCount.value : 0;
var repliesCount = $getItemValue(ctx, "CommunityRepliesCount");
repliesCount.value = !$isNull(repliesCount.value) ? repliesCount.value : 0;

var pictureURL = $getItemValue(ctx, "SiteLogo");
if(pictureURL.isEmpty)
{
    pictureURL = $urlHtmlEncode(SP.Utilities.VersionUtility.getImageUrl("siteicon.png"));
}

var pictureLinkId = encodedId + "pictureLink";
var pictureContainerId = encodedId + "pictureContainer";
var dataContainerId = encodedId + "dataContainer";
var line1LinkId = encodedId + "line1Link";
var line1Id = encodedId + "line1";
var line2Id = encodedId + "line2";
var line3Id = encodedId + "line3";
var line4Id = encodedId + "line4";

var dataDisplayTemplateTitle = "ItemCommunityPortal";

AddPostRenderCallback(ctx, function() {ULSaAe:;
    EnsureScriptFunc("strings.js", "Strings", function() {ULSaAe:; EnsureScriptFunc("sp.datetimeutil.js", "GetLocalizedCountValue", function() {ULSaAe:;
        var detailsElement = document.getElementById(line3Id);

        var membersString = GetLocalizedCountValue($resource("item_CommunityPortal_DetailsMembers"), $resource("item_CommunityPortal_DetailsIntervals"), membersCount.value);
        var topicsString = GetLocalizedCountValue($resource("item_CommunityPortal_DetailsDiscussions"), $resource("item_CommunityPortal_DetailsIntervals"), topicsCount.value);
        var repliesString = GetLocalizedCountValue($resource("item_CommunityPortal_DetailsReplies"), $resource("item_CommunityPortal_DetailsIntervals"), repliesCount.value);
        var membersHTML = String.format($htmlEncode(membersString), "<span class='ms-communityPortalEmphasisText'>" + $htmlEncode(membersCount.value) + "</span>");
        var topicsHTML = String.format($htmlEncode(topicsString), "<span class='ms-communityPortalEmphasisText'>" + $htmlEncode(topicsCount.value) + "</span>");
        var repliesHTML = String.format($htmlEncode(repliesString), "<span class='ms-communityPortalEmphasisText'>" + $htmlEncode(repliesCount.value) + "</span>");
        var line3HTML = membersHTML + "<span class='ms-communityPortalDetailsTopics'>" + topicsHTML + "</span>" + repliesHTML;
        var line3Title = 
            String.format(membersString, $htmlEncode(membersCount.value)) + "  " + 
            String.format(topicsString, $htmlEncode(topicsCount.value)) + "  " + 
            String.format(repliesString, $htmlEncode(repliesCount.value));

        detailsElement.innerHTML = line3HTML;
        detailsElement.title = line3Title;

        if(!$isNull(createdDate))
        {
            var createDateElement = document.getElementById(line4Id);
            var now = new Date();
            var dateString = SP.DateTimeUtil.SPRelativeDateTime.getRelativeDateTimeString(createdDate.value, false, SP.DateTimeUtil.SPCalendarType.none, true);
            var createdDateString = String.format($resource("item_CommunityPortal_Date"), dateString);
            createDateElement.innerHTML = $htmlEncode(createdDateString);
            createDateElement.title = createdDateString;
        }
    });});
});

 ms_outHtml.push(''
,'        <div class="ms-displayInlineBlock ms-communityPortalContainer ms-communityPortalSizing" id="', itemId ,'" data-displaytemplate="', $htmlEncode(dataDisplayTemplateTitle) ,'">'
,'            <div class="ms-communityPortalImageContainer" id="', pictureContainerId ,'">'
);
if(!linkURL.isEmpty)
{
ms_outHtml.push(''
,''
,'                <a class="cbs-pictureImgLink" tabIndex="-1" href="', linkURL ,'" title="', line1 ,'" id="', pictureLinkId ,'">'
);
}
ms_outHtml.push(''
,'<img class="ms-communityPortalImage" alt="', line1 ,'" src=" ', pictureURL ,'" />'
);
if(!linkURL.isEmpty)
{
ms_outHtml.push(''
,'                </a>'
);
}
ms_outHtml.push(''
,'            </div>'
,'            <div class="ms-communityPortalTextContainer" id="', dataContainerId ,'">'
,''
,'                <a href="', linkURL ,'" title="', line1 ,'" id="', line1LinkId ,'">'
,'                    <h2 class="ms-textXLarge ms-noWrap ms-communityPortalTextSpacing" id="', line1Id ,'"> ', line1 ,'</h2>'
,'                </a>'
,'                <span class="ms-communityPortalCalloutIcon"><img src="', $urlHtmlEncode(ellipsisURL) ,'" onclick="', showHoverPanelCallback ,'" /></span>'
);
if(!line2.isEmpty)
{
ms_outHtml.push(''
,'                <div class="ms-noWrap ms-communityPortalTextSpacing ms-communityPortalTextBeforeCallout" title="', line2 ,'" id="', line2Id ,'"> ', line2 ,'</div>'
,'                <div class="ms-metadata ms-noWrap ms-communityPortalTextSpacing" id="', line3Id ,'"></div>'
,'                <div class="ms-metadata ms-noWrap ms-communityPortalLine4Spacing" id="', line4Id ,'"></div>'
);
}
else
{
ms_outHtml.push(''
,'                <div class="ms-metadata ms-noWrap ms-communityPortalTextSpacing ms-communityPortalTextBeforeCallout" id="', line3Id ,'"></div>'
,'                <div class="ms-metadata ms-noWrap ms-communityPortalLine4Spacing" id="', line4Id ,'"></div>'
,'                <div class="ms-noWrap ms-communityPortalTextSpacing">&#160;</div>'
);
}
ms_outHtml.push(''
,'            </div>'
,'            <div class="ms-communityPortalSizing">'
,'              <hr class="ms-communityPortalSizing" />'
,'            </div>'
,'        <div id="', $htmlEncode(unencodedHoverId) ,'" class="ms-srch-hover-outerContainer"></div>'
,'        </div>'
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_c648569fdc584d10878ea98ef6dc45b1() {ULSaAe:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_CommunityPortal", DisplayTemplate_c648569fdc584d10878ea98ef6dc45b1);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CommunityPortal.js", DisplayTemplate_c648569fdc584d10878ea98ef6dc45b1);
}

        $includeLanguageScript("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CommunityPortal.js", "~sitecollection/_catalogs/masterpage/Display Templates/Language Files/{Locale}/CustomStrings.js");

}
RegisterTemplate_c648569fdc584d10878ea98ef6dc45b1();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CommunityPortal.js"), RegisterTemplate_c648569fdc584d10878ea98ef6dc45b1);
}
