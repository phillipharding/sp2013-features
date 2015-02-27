function ULSzcF(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Video.js";return o;}
function DisplayTemplate_c39ef9b8b8a74d14b3eb37cdd8b73510(ctx) {ULSzcF:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_c39ef9b8b8a74d14b3eb37cdd8b73510.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Video.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Image Url':['PictureThumbnailURL', 'PictureURL'], 'Title':null, 'Title Link Url':['Path'], 'Summary':['Description'], 'HitHighlightedProperties':null, 'HitHighlightedSummary':null, 'FileExtension':['SecondaryFileExtension'], 'Author':null, 'ContentTypeId':null, 'Created':null, 'PeopleInMedia':null, 'MediaDuration':null, 'VideoFileURL':['UserEncodingURL', 'ExternalMediaURL', 'DefaultEncodingURL']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSzcF:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
var id = ctx.ClientControl.get_nextUniqueId();
var itemId = id + Srch.U.Ids.item;
var hoverId = id + Srch.U.Ids.hover; 
$setResultItem(itemId, ctx.CurrentItem);
var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_Video_HoverPanel.js";
ctx.CurrentItem.ShowDescription = false;
ctx.CurrentItem.ShowCloseButton = false;

var encodedId = $htmlEncode(id);
var templateId = encodedId + "_VideoOrganicTemplate";
var thumbnailPathId = encodedId + "_videoItemThumbnailPath";

var imageURL = $getItemValue(ctx, "Image Url");
var imageMarkup = Srch.U.getVideoImageWithFallbackSource(imageURL, 120, 68);
var titleLinkUrl = $getItemValue(ctx, "Title Link Url");
var videoFileURL = $getItemValue(ctx, "VideoFileURL");
var fileExtension = $getItemValue(ctx, "FileExtension");
var isRendition = !fileExtension.isEmpty;
if(isRendition && !videoFileURL.isEmpty)
{
    titleLinkUrl = videoFileURL;
    videoFileURL.value = unescape(videoFileURL.value);
}
titleLinkUrl.overrideValueRenderer($urlHtmlEncode);

var truncatedUrl = Srch.U.truncateHighlightedUrl(titleLinkUrl.value, Srch.U.pathTruncationLengthWithPreview);

var title = Srch.U.getHighlightedProperty(id, ctx.CurrentItem, "Title");
var itemTitle = $getItemValue(ctx, "Title");
if ($isEmptyString(title)) 
{
    title = itemTitle.toString();
}

var maxTitleLengthInChars = Srch.U.titleTruncationLength;
var termsToUse = 2;
if(!imageURL.isEmpty)
{
    maxTitleLengthInChars = Srch.U.titleTruncationLengthWithPreview;
    termsToUse = 1;
}

var summaryText = null; 
var hhSummary = $getItemValue(ctx, "HitHighlightedSummary");
if(!hhSummary.isEmpty)
{
    var su = Srch.U.processHHXML(hhSummary.value);    
    summaryText = Srch.U.getTrimmedProcessedHHXMLString(su, Srch.U.summaryTruncationLengthWithPreview);
}
else
{
    var summary = $getItemValue(ctx, "Summary");
    summaryText = $htmlEncode(Srch.U.truncateEnd(summary.value, Srch.U.summaryTruncationLengthWithPreview));
}
var hasSummary = !$isEmptyString(summaryText);
var pathStyle = hasSummary ? "" : "display:inherit";
ms_outHtml.push(''
,'        <div id="', $htmlEncode(itemId) ,'" name="Item" data-displaytemplate="VideoItem" class="ms-srch-item" onmouseover="', Srch.U.getShowHoverPanelCallback(itemId, hoverId, hoverUrl) ,'" onmouseout="', Srch.U.getHideHoverPanelCallback() ,'">'
,'            <div id="', $htmlEncode(hoverId) ,'" class="ms-srch-hover-outerContainer"></div>'
,'            <div id="', templateId ,'">'
,'                <div class="ms-srch-video-itemthumbnail">'
,'                    <a clicktype="Result" href="', titleLinkUrl ,'" id="', thumbnailPathId ,'">'
,'                        ', imageMarkup ,''
,'                        <div class="ms-srch-video-playbutton ms-srch-video-playbutton-result"><span></span></div>'
,'                    </a>'
,'                </div>'
,'                <div class="ms-srch-video-itemmain">'
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.title) ,'" class="ms-srch-item-title">'
,'                        <h3>'
,'                            <a clicktype="Result" id="', $htmlEncode(id + Srch.U.Ids.titleLink) ,'" href="', titleLinkUrl ,'" class="ms-srch-item-link" title="', itemTitle ,'" onfocus="', ctx.currentItem_ShowHoverPanelCallback ,'">'
,'                                ', Srch.U.trimTitle(title, maxTitleLengthInChars, termsToUse) ,''
,'                            </a>'
,'                        </h3>'
,'                    </div>                    '
);
    if(hasSummary)
    {
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.summary) ,'" class="ms-srch-item-summary">'
,'                        ', summaryText ,''
,'                    </div>'
);
    }
ms_outHtml.push('              '
,'                    <div id="', $htmlEncode(id + Srch.U.Ids.path) ,'" tabindex="0" class="ms-srch-item-path ms-srch-item-video-path" style="', pathStyle ,'" title="', $htmlEncode(titleLinkUrl.value) ,'" onblur="Srch.U.restorePath(this, \'', $scriptEncode(truncatedUrl) ,'\', \'', $scriptEncode(titleLinkUrl.value) ,'\')" onclick="Srch.U.selectPath(\'', $scriptEncode(titleLinkUrl.value) ,'\', this)" onkeydown="Srch.U.setPath(event, this, \'', $scriptEncode(titleLinkUrl.value) ,'\', \'', $scriptEncode(truncatedUrl) ,'\')">'
,'                        ', $htmlEncode(truncatedUrl) ,''
,'                    </div>      '
,'                </div>'
,'            </div>'
,'        </div> '
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_c39ef9b8b8a74d14b3eb37cdd8b73510() {ULSzcF:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Video", DisplayTemplate_c39ef9b8b8a74d14b3eb37cdd8b73510);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Video.js", DisplayTemplate_c39ef9b8b8a74d14b3eb37cdd8b73510);
}

}
RegisterTemplate_c39ef9b8b8a74d14b3eb37cdd8b73510();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Video.js"), RegisterTemplate_c39ef9b8b8a74d14b3eb37cdd8b73510);
}
