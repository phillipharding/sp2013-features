function ULSRRf(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_RecommendationsClickLogging.js";return o;}
function DisplayTemplate_38e5ff79f7374d1e83c59bdfdc16afa7(ctx) {ULSRRf:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_38e5ff79f7374d1e83c59bdfdc16afa7.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_RecommendationsClickLogging.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Picture URL':['PublishingImage', 'PictureURL', 'PictureThumbnailURL'], 'Link URL':['Path'], 'Original Path':['OriginalPath'], 'SiteID':['SiteID'], 'Line 1':['Title'], 'Line 2':['Description'], 'Line 3':[], 'SecondaryFileExtension':null, 'ContentTypeId':null};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSRRf:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
,''
);

window.LogRecsViewToEventStore = function(url, site, fillIn)
{ULSRRf:;
    if(fillIn == false)
    {
        SP.SOD.executeFunc("sp.js", "SP.ClientContext", function()
        {ULSRRf:;
            var spClientContext = SP.ClientContext.get_current();
            if(!$isNull(spClientContext))
            {
                if($isEmptyString(site))
                {
                    SP.Analytics.AnalyticsUsageEntry.logAnalyticsEvent(spClientContext, SP.Analytics.EventTypeId.recommendationView, url);
                    spClientContext.executeQueryAsync(null, null)
                }
                else
                {
                    var spWeb = spClientContext.get_web();
                    var spUser = spWeb.get_currentUser();
                    var spScope = "{00000000-0000-0000-0000-000000000000}";
                    SP.Analytics.AnalyticsUsageEntry.logAnalyticsEvent2(spClientContext, SP.Analytics.EventTypeId.recommendationView, url, spScope, site, spUser);
                    spClientContext.executeQueryAsync(null, null)
                }
            }
        });
    }
};

window.LogRecsClickToEventStore = function(url, site, redirectURL, fillIn)
{ULSRRf:;
    if(fillIn == "false")
    {
        var spClientContext = SP.ClientContext.get_current();
        if(!$isNull(spClientContext))
        {
            if($isEmptyString(site))
            {
                SP.Analytics.AnalyticsUsageEntry.logAnalyticsEvent(spClientContext, SP.Analytics.EventTypeId.recommendationClick, url);
                spClientContext.executeQueryAsync(function() {ULSRRf:; window.location = redirectURL; }, function() {ULSRRf:; window.location = redirectURL; })
            }
            else
            {
                var spWeb = spClientContext.get_web();
                var spUser = spWeb.get_currentUser();
                var spScope = "{00000000-0000-0000-0000-000000000000}";
                SP.Analytics.AnalyticsUsageEntry.logAnalyticsEvent2(spClientContext, SP.Analytics.EventTypeId.recommendationClick, url, spScope, site, spUser);
                spClientContext.executeQueryAsync(function() {ULSRRf:; window.location = redirectURL; }, function() {ULSRRf:; window.location = redirectURL; })
            }
        }
    }
    else
    {
        window.location = redirectURL;
    }
};

var isFillIn = function()
{ULSRRf:;
    if (!$isNull(ctx.CurrentGroup.Properties.QueryModification) && !$isNull(ctx.CurrentItem.QueryRuleId))
    {
        var queryModification = ctx.CurrentGroup.Properties.QueryModification;
        var queryRuleId = ctx.CurrentItem.QueryRuleId;
        if (queryModification.toLowerCase().indexOf("recommendedfor") == -1 && queryRuleId == "00000000-0000-0000-0000-000000000000")
        {
           return true;
        }
    }
    return false;
};

var encodedId = $htmlEncode(ctx.ClientControl.get_nextUniqueId() + "_picture3Lines_");

var linkURL = $getItemValue(ctx, "Link URL");
linkURL.overrideValueRenderer($urlHtmlEncode);

var line1 = $getItemValue(ctx, "Line 1");
var line2 = $getItemValue(ctx, "Line 2");
var line3 = $getItemValue(ctx, "Line 3");

var pictureURL = $getItemValue(ctx, "Picture URL");
var pictureId = encodedId + "picture";
var pictureMarkup = Srch.ContentBySearch.getPictureMarkup(pictureURL, 100, 100, ctx.CurrentItem, "cbs-picture3LinesImg", line1, pictureId);

line1.overrideValueRenderer($contentLineText);
line2.overrideValueRenderer($contentLineText);
line3.overrideValueRenderer($contentLineText);

var containerId = encodedId + "container";
var pictureLinkId = encodedId + "pictureLink";
var pictureContainerId = encodedId + "pictureContainer";
var dataContainerId = encodedId + "dataContainer";
var line1LinkId = encodedId + "line1Link";
var line1Id = encodedId + "line1";
var line2Id = encodedId + "line2";
var line3Id = encodedId + "line3";

var clickLoggingId = ctx.ClientControl.get_nextUniqueId() + "_ItemRecommendationsClickLogging_";

var originalPathId = clickLoggingId + "originalPath";
var originalSiteId = clickLoggingId + "originalSite";
var linkURLId = clickLoggingId + "linkURL";
var fillInId = clickLoggingId + "fillIn";

var originalPath = $getItemValue(ctx, "Original Path");
var originalSite = $getItemValue(ctx, "SiteID");

var fillIn = isFillIn();

LogRecsViewToEventStore(originalPath.value, originalSite.value, fillIn);

var dataDisplayTemplateTitle = "ItemRecommendationsClickLogging";

 ms_outHtml.push(''
,'        <div class="cbs-picture3LinesContainer" id="', containerId ,'" data-displaytemplate="', $htmlEncode(dataDisplayTemplateTitle) ,'">'
,'            <div class="cbs-picture3LinesImageContainer" id="', pictureContainerId ,'">'
);
if(!linkURL.isEmpty)
{
ms_outHtml.push(''
,''
,'                <span id="', $htmlEncode(originalPathId) ,'" class="ms-hide">', originalPath ,'</span>'
,'                <span id="', $htmlEncode(originalSiteId) ,'" class="ms-hide">', originalSite ,'</span>'
,'                <span id="', $htmlEncode(linkURLId) ,'" class="ms-hide">', linkURL ,'</span>'
,'                <span id="', $htmlEncode(fillInId) ,'" class="ms-hide">', String(fillIn) ,'</span>'
,''
,'                <a class="cbs-pictureImgLink" href="', linkURL ,'" title="', $htmlEncode(line1.defaultValueRenderer(line1)) ,'" id="', pictureLinkId ,'" onclick="var logPath = document.getElementById(\'', $scriptEncode(originalPathId) ,'\').innerHTML; var logSite = document.getElementById(\'', $scriptEncode(originalSiteId) ,'\').innerHTML; var logLinkURL = document.getElementById(\'', $scriptEncode(linkURLId) ,'\').innerHTML; var logFillIn = document.getElementById(\'', $scriptEncode(fillInId) ,'\').innerHTML; LogRecsClickToEventStore(logPath, logSite, logLinkURL, logFillIn); return false">'
);
}
ms_outHtml.push(''
,'                    ', pictureMarkup ,''
);
if(!linkURL.isEmpty)
{
ms_outHtml.push(''
,'                </a>'
);
}
ms_outHtml.push(''
,'            </div>'
,'            <div class="cbs-picture3LinesDataContainer" id="', dataContainerId ,'">'
,''
,'                <span id="', $htmlEncode(originalPathId) ,'" class="ms-hide">', originalPath ,'</span>'
,'                <span id="', $htmlEncode(originalSiteId) ,'" class="ms-hide">', originalSite ,'</span>'
,'                <span id="', $htmlEncode(linkURLId) ,'" class="ms-hide">', linkURL ,'</span>'
,'                <span id="', $htmlEncode(fillInId) ,'" class="ms-hide">', String(fillIn) ,'</span>'
,''
,'                <a class="cbs-picture3LinesLine1Link" href="', linkURL ,'" title="', $htmlEncode(line1.defaultValueRenderer(line1)) ,'" id="', line1LinkId ,'" onclick="var logPath = document.getElementById(\'', $scriptEncode(originalPathId) ,'\').innerHTML; var logSite = document.getElementById(\'', $scriptEncode(originalSiteId) ,'\').innerHTML; var logLinkURL = document.getElementById(\'', $scriptEncode(linkURLId) ,'\').innerHTML; var logFillIn = document.getElementById(\'', $scriptEncode(fillInId) ,'\').innerHTML; LogRecsClickToEventStore(logPath, logSite, logLinkURL, logFillIn); return false">'
,'                    <h2 class="cbs-picture3LinesLine1 ms-accentText2 ms-noWrap" id="', line1Id ,'"> ', line1 ,'</h2>'
,'                </a>'
);
if(!line2.isEmpty)
{
ms_outHtml.push(''
,'                <div class="cbs-picture3LinesLine2 ms-noWrap" title="', $htmlEncode(line2.defaultValueRenderer(line2)) ,'" id="', line2Id ,'"> ', line2 ,'</div>'
);
}
if(!line3.isEmpty)
{
ms_outHtml.push(''
,'                <div class="cbs-pictureLine3 ms-textSmall ms-noWrap" id="', line3Id ,'" title="', $htmlEncode(line3.defaultValueRenderer(line3)) ,'">', line3 ,'</div>'
);
}
ms_outHtml.push(''
,'            </div>'
,'        </div>'
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_38e5ff79f7374d1e83c59bdfdc16afa7() {ULSRRf:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_RecommendationsClickLogging", DisplayTemplate_38e5ff79f7374d1e83c59bdfdc16afa7);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_RecommendationsClickLogging.js", DisplayTemplate_38e5ff79f7374d1e83c59bdfdc16afa7);
}

        $includeLanguageScript("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_RecommendationsClickLogging.js", "~sitecollection/_catalogs/masterpage/Display Templates/Language Files/{Locale}/CustomStrings.js");

}
RegisterTemplate_38e5ff79f7374d1e83c59bdfdc16afa7();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_RecommendationsClickLogging.js"), RegisterTemplate_38e5ff79f7374d1e83c59bdfdc16afa7);
}
