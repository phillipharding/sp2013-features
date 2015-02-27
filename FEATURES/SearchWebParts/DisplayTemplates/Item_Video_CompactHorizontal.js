function ULSKLr(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Video_CompactHorizontal.js";return o;}
function DisplayTemplate_3eda560b118242eaa5f44cb79acb0d90(ctx) {ULSKLr:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_3eda560b118242eaa5f44cb79acb0d90.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Video_CompactHorizontal.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults', 'Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Picture URL':['PublishingImage', 'PictureURL', 'PictureThumbnailURL'], 'Line 1':['Title'], 'Link URL':['Path'], 'FileExtension':['SecondaryFileExtension'], 'MediaDuration':null, 'ViewCount':[], 'ContentTypeId':null, 'VideoFileURL':['UserEncodingURL', 'ExternalMediaURL', 'DefaultEncodingURL']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSKLr:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
var encodedId = $htmlEncode(ctx.ClientControl.get_nextUniqueId());
var containerId = encodedId + "_videoIntentContainer";
var viewsId = encodedId + "_videoIntentViewsLifeTime";
var pathId = encodedId + "_videoIntentPath";
var line1Id = encodedId + "_videoIntentLine1";

var imageURL = $getItemValue(ctx, "Picture URL");
var imageMarkup = Srch.U.getVideoImageWithFallbackSource(imageURL, 120, 68);

var line1 = $getItemValue(ctx, "Line 1");
if (!line1.isNull)
{
    var truncatedFormat = function(line1)
    {ULSKLr:;
        return $htmlEncode(Srch.U.truncateEnd(line1.value, 30));
    };
    line1.overrideValueRenderer(truncatedFormat);
}

var linkUrl = $getItemValue(ctx, "Link URL");
var videoFileURL = $getItemValue(ctx, "VideoFileURL");
var isRendition = !$getItemValue(ctx, "FileExtension").isEmpty;
if(isRendition && !videoFileURL.isEmpty)
{
    linkUrl = videoFileURL;
    videoFileURL.value = unescape(videoFileURL.value);
}
linkUrl.overrideValueRenderer($urlHtmlEncode);

var viewCount = $getItemValue(ctx,"ViewCount");
if (!viewCount.isNull)
{
    var viewCountFormat = function(viewCount)
    {ULSKLr:;
        return $htmlEncode(Srch.U.toFriendlyNumber(viewCount.value));
    };
    viewCount.overrideValueRenderer(viewCountFormat);
}

var mediaDuration = $getItemValue(ctx,"MediaDuration");
var formatTimeFromSeconds = function(secondsValue)
{ULSKLr:;
    return $htmlEncode(Srch.U.getFormattedTimeFromSeconds(secondsValue.value));
};
mediaDuration.overrideValueRenderer(formatTimeFromSeconds);
ms_outHtml.push(''
,'        <div class="ms-srch-video-intent ms-srch-video-intent-container" id="', containerId ,'" data-displaytemplate="VideoIntentItem">'
,'            <div class="ms-srch-video-results-centered ms-srch-video-intent">'
,'                <a clicktype="Result" href="', linkUrl ,'" title="', $htmlEncode(line1.value) ,'" id="', pathId ,'">'
,'                    ', imageMarkup ,''
,'                </a>'
,'            </div>'
,'            <div class="ms-srch-video-intent-data">'
,'                <h3>'
,'                    <a clicktype="Result" href="', linkUrl ,'" title="', $htmlEncode(line1.value) ,'" class="ms-srch-video-intent ms-srch-video-results ms-srch-item-link ms-noWrap" id="', line1Id ,'">'
,'                        ', line1 ,''
,'                    </a>'
,'                </h3>'
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
,'            </div>'
,'        </div>'
,''
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_3eda560b118242eaa5f44cb79acb0d90() {ULSKLr:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Video_CompactHorizontal", DisplayTemplate_3eda560b118242eaa5f44cb79acb0d90);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Video_CompactHorizontal.js", DisplayTemplate_3eda560b118242eaa5f44cb79acb0d90);
}

}
RegisterTemplate_3eda560b118242eaa5f44cb79acb0d90();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Video_CompactHorizontal.js"), RegisterTemplate_3eda560b118242eaa5f44cb79acb0d90);
}
