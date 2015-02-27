function ULSvgW(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_VideoVertical.js";return o;}
function DisplayTemplate_c7fea555fa28404e9390fe7f50816c93(ctx) {ULSvgW:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_c7fea555fa28404e9390fe7f50816c93.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_VideoVertical.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Image Url':['PictureThumbnailURL', 'PictureURL'], 'Line 1':['Title'], 'Line 1 Link Url':['Path'], 'FileExtension':['SecondaryFileExtension'], 'MediaDuration':null, 'ViewCount':['ViewsLifeTime'], 'ContentTypeId':null, 'Created':null, 'PeopleInMedia':null, 'VideoFileURL':['UserEncodingURL', 'ExternalMediaURL', 'DefaultEncodingURL']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSvgW:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
,''
);      
var id = ctx.ClientControl.get_nextUniqueId();
$setResultItem(id, ctx.CurrentItem);
ctx.CurrentItem.ShowDescription = true;
ctx.CurrentItem.ShowCloseButton = true;
var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_Video_HoverPanel.js";
var hover_id = "hover_" + id;
var hoverlaunch_id = "hoverlaunch_" + id;

var encodedId = $htmlEncode(id);
var pathId = encodedId + "_itemPath";
var line1Id = encodedId + "_itemLine1";
var templateId = encodedId + "_VideoResultsPageTemplate";

var imageURL = $getItemValue(ctx, "Image Url");
var imageMarkup = Srch.U.getVideoImageWithFallbackSource(imageURL);

var linkUrl = $getItemValue(ctx, "Line 1 Link Url");
var videoFileURL = $getItemValue(ctx, "VideoFileURL");
var isRendition = !$getItemValue(ctx, "FileExtension").isEmpty;
if(isRendition && !videoFileURL.isEmpty)
{
    linkUrl = videoFileURL;
    videoFileURL.value = unescape(videoFileURL.value);
}
linkUrl.overrideValueRenderer($urlHtmlEncode);

var line1 = $getItemValue(ctx, "Line 1");
if (!line1.isNull)
{
    var truncatedFormat = function(line1)
    {ULSvgW:;
        return $htmlEncode(Srch.U.truncateEnd(line1.value, Srch.U.titleTruncationLength));
    };
    line1.overrideValueRenderer(truncatedFormat);
}

var viewCount = $getItemValue(ctx,"ViewCount");
if (!viewCount.isNull)
{
    var viewCountFormat = function(viewCount)
    {ULSvgW:;
        return $htmlEncode(String.format($resource("hp_ViewsLifeTime"), Srch.U.toFriendlyNumber(viewCount.value)));
    };
    viewCount.overrideValueRenderer(viewCountFormat);
}

var mediaDuration = $getItemValue(ctx,"MediaDuration");
if (!mediaDuration.isNull)
{
    var durationFormat = function(duration)
    {ULSvgW:;
        return $htmlEncode(Srch.U.getFormattedTimeFromSeconds(duration.value));
    };
    mediaDuration.overrideValueRenderer(durationFormat);
}

var startNewRow = !$isNull(ctx.CurrentItemIdx) && !isNaN(ctx.CurrentItemIdx) && (ctx.CurrentItemIdx + 1) % 3 == 0;
ms_outHtml.push(''
,'        <div class="ms-srch-video-results ms-srch-video-results-container" id="', $htmlEncode(id) ,'" name="Item" data-displaytemplate="Item_VideoVertical">'
,'            <div id="', $htmlEncode(hover_id) ,'" class="ms-srch-hover-outerContainer"></div>'
,'            <div id="', templateId ,'">'
,'                <div class="ms-srch-video-results-centered">'
,'                    <a id="', pathId ,'" href="javascript:{}" title="', $htmlEncode($resource('item_Generic_OpenCalloutTooltip')) ,'" onclick="EnsureScriptParams(\'searchUI.js\', \'HP.Init\', event, \'', $scriptEncode(id) ,'\', \'', $scriptEncode(hover_id) ,'\', \'', $scriptEncode(hoverUrl) ,'\');">'
,'                        ', imageMarkup ,''
,'                    </a>'
,'                </div>'
,''
,'                <div class="ms-srch-video-results-data">'
,'                    <h3>'
,'                        <a clicktype="Result" href="', linkUrl ,'" title="', $htmlEncode(line1.value) ,'" class="ms-srch-item-link ms-srch-video-results ms-noWrap" id="', line1Id ,'">'
,'                            ',  line1 ,''
,'                        </a>'
,'                    </h3>'
,'                    <div class="ms-displayInlineBlock">'
);          
if (!mediaDuration.isNull) 
{ 
ms_outHtml.push(''
,'                        ', mediaDuration ,''
);          
}
if (!mediaDuration.isNull && !viewCount.isNull)
{
ms_outHtml.push(''
,'                        &#160;<span class="ms-soften">|</span>&#160;'
);
}
if (!viewCount.isNull)
{ 
ms_outHtml.push(''
,'                        ', viewCount ,' '
);
} 
if (mediaDuration.isEmpty && viewCount.isEmpty)
{
ms_outHtml.push(''
,'                       &#160;'
);          
}
ms_outHtml.push(' '
,'                    </div>'
,'                    <div class="ms-srch-video-results-hover ms-srchnav-more-glyph">'
,'                        <a id="', $htmlEncode(hoverlaunch_id) ,'" class="ms-srchnav-more-glyph" href="javascript:{}" title="', $htmlEncode($resource('item_Generic_OpenCalloutTooltip')) ,'" onclick="EnsureScriptParams(\'searchUI.js\', \'HP.Init\', event, \'', $scriptEncode(id) ,'\', \'', $scriptEncode(hover_id) ,'\', \'', $scriptEncode(hoverUrl) ,'\');">'
,'                        </a>'
,'                    </div>'
,'                </div>'
,'            </div>'
,'        </div>     '
);          
if(startNewRow)
{
ms_outHtml.push(''
,'       <div class="ms-clear" />'
);          
}
ms_outHtml.push(' '
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_c7fea555fa28404e9390fe7f50816c93() {ULSvgW:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_VideoVertical", DisplayTemplate_c7fea555fa28404e9390fe7f50816c93);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_VideoVertical.js", DisplayTemplate_c7fea555fa28404e9390fe7f50816c93);
}

}
RegisterTemplate_c7fea555fa28404e9390fe7f50816c93();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_VideoVertical.js"), RegisterTemplate_c7fea555fa28404e9390fe7f50816c93);
}
