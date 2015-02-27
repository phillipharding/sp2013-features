function ULSd0a(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Video_HoverPanel.js";return o;}
function DisplayTemplate_e48c72f9630441bb8bf6143ad4d92b46(ctx) {ULSd0a:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_e48c72f9630441bb8bf6143ad4d92b46.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Video_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchHoverPanel'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Image Url':['PictureThumbnailURL', 'PictureURL'], 'Title':null, 'Title Link Url':['Path'], 'Summary':['Description'], 'HitHighlightedProperties':null, 'HitHighlightedSummary':null, 'FileExtension':['SecondaryFileExtension'], 'Author':null, 'ContentTypeId':null, 'Created':null, 'PeopleInMedia':null, 'MediaDuration':null, 'VideoFileURL':['UserEncodingURL', 'ExternalMediaURL', 'DefaultEncodingURL']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSd0a:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
var itemTitle = $getItemValue(ctx, "Title");
var itemPath = $getItemValue(ctx, "Path");
itemPath.overrideValueRenderer($urlHtmlEncode);

var viewCountData = $getItemValue(ctx, "ViewCount");
if (!viewCountData.isNull)
{
    var viewCountFormat = function(viewCount)
    {ULSd0a:;
        return $htmlEncode(String.format($resource("hp_ViewsLifeTime"), Srch.U.toFriendlyNumber(viewCount.value)));
    };
    viewCountData.overrideValueRenderer(viewCountFormat);
}

var peopleInMedia = $getItemValue(ctx, "PeopleInMedia");
var peopleInMediaArray = !$isNull(ctx.CurrentItem.PeopleInMedia) ? Srch.U.getArray(ctx.CurrentItem.PeopleInMedia) : [];
var authors = !$isNull(ctx.CurrentItem.Author) ? Srch.U.getArray(ctx.CurrentItem.Author) : [];

var mediaDuration = $getItemValue(ctx, "MediaDuration");
if (!mediaDuration.isNull)
{
    var durationFormat = function(duration)
    {ULSd0a:;
        return $htmlEncode(String.format($resource("hp_Duration"), Srch.U.getFormattedTimeFromSeconds(duration.value)));
    };
    mediaDuration.overrideValueRenderer(durationFormat);
}

var created = $getItemValue(ctx, "Created");
if (!created.isNull)
{
    var createdFormat = function(createdDate)
    {ULSd0a:;
        return $htmlEncode(HP.GetNowDateTimeDifference(createdDate.value));
    };
    created.overrideValueRenderer(createdFormat);
}

var itemDescription = $getItemValue(ctx, "Summary");
if (!itemDescription.isNull)
{
    var truncatedFormat = function(description)
    {ULSd0a:;
        return $htmlEncode(Srch.U.truncateEnd(description.value, 140));
    };
    itemDescription.overrideValueRenderer(truncatedFormat);
}

var showDuplicatesLink = ctx.ClientControl.get_showViewDuplicates() && !Srch.U.n(ctx.CurrentItem.CollapsingStatus) && 
    !Srch.U.n(ctx.CurrentItem.DocId) && 
    ctx.CurrentItem.CollapsingStatus === 1;

var emailLink = HP.GetEmailLink(itemTitle.value, itemPath.value, null, $getItemValue(ctx, "ServerRedirectedURL").value);
var fileExtensionInfo = $getItemValue(ctx, "FileExtension");
var isRendition = !fileExtensionInfo.isEmpty;
var videoFileUrl = $getItemValue(ctx, "VideoFileURL");

var encodedId = $getItemValue(ctx, "csr_id");
var innerId = encodedId + "_innerHover";
var hoverArrowBorderId = encodedId + "_hoverArrowBorder";
var hoverArrowId = encodedId + "_hoverArrow";
var hoverContentId = encodedId + "_hoverContent";
var closeId = encodedId + "_hoverClose";
var viewDuplicatesId = encodedId + $htmlEncode(HP.ids.viewDuplicates);
var durationId = encodedId + "_hoverDuration";
var viewsId = encodedId + "_hoverViewsLifeTime";
var peopleInVideoId = encodedId + "_hoverPeopleInVideo";
var postedById = encodedId + "_hoverPostedBy";
var createdId = encodedId + "_hoverCreated";
var videoDescriptionId = encodedId + "_hoverVideoDescription";
var sendId = encodedId + $htmlEncode(HP.ids.send);
var followId = encodedId + $htmlEncode(HP.ids.follow);
var goToVideoPageId = encodedId + "_hoverGoToVideoPage";
var videoPreviewContainerId = encodedId + "_hoverVideoPreviewContainer";
var videoPreviewImageId = encodedId + "_hoverVideoPreviewImg";
var videoPlayerId = encodedId + "_hoverVideoPlayerId";
var actionsId = encodedId + HP.ids.actions;
var bodyId = encodedId + HP.ids.body;
var headerId = encodedId + HP.ids.header;

var mediaSource = videoFileUrl.toString();
var fileExtension;

var canRenderVideoPreview = false;
if(!videoFileUrl.isEmpty)
{
    if(!fileExtensionInfo.isEmpty)
    {
        fileExtension = fileExtensionInfo.toString();
    }
    else if(!videoFileUrl.isEmpty)
    {
        fileExtension =  mediaSource.substr(mediaSource.lastIndexOf(".") + 1);
    }

    var isFireFoxOrChrome = !$isNull(browseris) && (browseris.firefox || browseris.chrome);
    var isOGGorOGVorWEBM = fileExtension == "ogg" || fileExtension == "ogv" || fileExtension == "webm";
    canRenderVideoPreview = isFireFoxOrChrome || !isOGGorOGVorWEBM; 
}

window.ShowVideoHoverPanelMediaPlayer = function(
    previewContainerId, videoPlayerId, playerParams)
{ULSd0a:;
    var containingElement = document.getElementById(previewContainerId);
    if($isNull(containingElement) || $isNull(containingElement.parentNode)) return;

    EnsureScript("mediaplayer.js", typeof (mediaPlayer), function () {ULSd0a:;
        var mimeType = mediaPlayer.tryGetMimeTypeFromFileExtension(playerParams.mediaFileExtension);

        var showThumbnailInChrome = !$isNull(browseris) && browseris.chrome && document.createElement("VIDEO").canPlayType(mimeType) == '';
        if(showThumbnailInChrome)
        {
            ShowVideoThumbnail(videoPreviewImageId, playerParams.previewImageSource);
        }
        else
        {
            containingElement.innerHTML = '';
            mediaPlayer.ensureCssIsIncluded();
            mediaPlayer.createMediaPlayer(containingElement, videoPlayerId, 
                containingElement.style.width, containingElement.style.height, 
                playerParams, null);
        }
    });
};

window.ShowVideoThumbnail = function(videoPreviewImageId, previewImgSrc)
{ULSd0a:;
    var videoPreviewImageEl = document.getElementById(videoPreviewImageId);
    if($isNull(videoPreviewImageEl) || $isEmptyString(previewImgSrc)) return;

    videoPreviewImageEl.src = previewImgSrc;
    videoPreviewImageEl.style.maxWidth = videoPreviewImageEl.parentNode.style.width;
    videoPreviewImageEl.style.maxHeight = videoPreviewImageEl.parentNode.style.height;
};

var imageUrlInfo = $getItemValue(ctx, "Image Url");
var previewImage = !imageUrlInfo.isEmpty ?
    $imgSrcUrl(imageUrlInfo) : SP.Utilities.VersionUtility.getImageUrl("videopreview.png");
var autoPlay = ctx.ClientControl.get_itemTemplateId().toUpperCase().indexOf("ITEM_VIDEOVERTICAL") != -1;

$addRenderContextCallback(ctx, "OnPostRender", function()
{ULSd0a:;
    HP.SetWidth(ctx.CurrentItem.id, innerId, 390);
    var containingElement = document.getElementById(videoPreviewContainerId);
    if($isNull(containingElement) || $isNull(containingElement.parentNode)) return;

    containingElement.style.width = "350px";
    containingElement.style.height = "197px";
    containingElement.style.marginTop = "11px";

    if(canRenderVideoPreview)
    {
        HP.SetPreviewOnHideCallback(function() {ULSd0a:;
        EnsureScript("mediaplayer.js", typeof mediaPlayer, function() {ULSd0a:;
            mediaPlayer.performPlayBackAction(document.getElementById(videoPlayerId), mediaPlayer.playBackActionNames.Pause);
            });
        });

        var playerParams = {
            mediaSource: mediaSource,
            previewImageSource: previewImage,
            mediaFileExtension: fileExtension,
            autoPlay: autoPlay,
            embedModePreview: true
        };
        ShowVideoHoverPanelMediaPlayer(videoPreviewContainerId, videoPlayerId, playerParams);
    }
    else
    {
        ShowVideoThumbnail(videoPreviewImageId, previewImage);
    }
});
ms_outHtml.push(''
,'        <div class="ms-srch-hover-innerContainer ms-srch-hover-wacSize" id="', innerId ,'">'
,'            <div class="ms-srch-hover-arrowBorder" id="', hoverArrowBorderId ,'"></div>'
,'            <div class="ms-srch-hover-arrow" id="', hoverArrowId ,'"></div>'
,'            <div class="ms-srch-hover-content" id="', hoverContentId ,'" data-displaytemplate="VideoHoverPanel">'
,'                <div id="', headerId ,'" class="ms-srch-hover-header">'
,'                    ', ctx.RenderHeader(ctx) ,''
,'                    <div class="ms-metadata">'
);
if (!mediaDuration.isNull) 
{
ms_outHtml.push(''
,'                        <div class="ms-srch-hover-filetype" id="', durationId ,'">'
,'                            ',  mediaDuration ,''
,'                        </div>'
);
}
ms_outHtml.push(''
,'                    </div>'
,'                </div>'
,'                <div id="', bodyId ,'" class="ms-srch-hover-body">'
,'                    <div id="', videoPreviewContainerId ,'">'
,'                        <img src="', SP.Utilities.VersionUtility.getImageUrl('loading.gif') ,'" alt="', $htmlEncode($resource('hp_Preview_LoadingImgAlt')) ,'" id="', videoPreviewImageId ,'" />'
,'                    </div>'
);
if (peopleInMediaArray.length > 0) 
{
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-subTitle">'
,'                        <h3 class="ms-soften">', $htmlEncode($resource("hp_PeopleInVideo")) ,'</h3>'
,'                    </div>'
,'                    <div class="ms-srch-hover-text">'
,'                        ', HP.GetAuthorsHtml(peopleInVideoId, peopleInMediaArray) ,''
,'                    </div>'
);
}

if (authors.length > 0) 
{
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-subTitle">'
,'                        <h3 class="ms-soften">', $htmlEncode($resource("hp_PostedBy")) ,'</h3>'
,'                    </div>'
,'                    <span class="ms-srch-hover-text" id="', postedById ,'" title="', $htmlEncode(ctx.CurrentItem.Author) ,'">'
,'                        ', HP.GetAuthorsHtml(encodedId, authors) ,''
,'                    </span>'
);
    if (!created.isNull) 
    {
ms_outHtml.push(''
,', ', created ,''
);
    }
ms_outHtml.push(''
,'                    </span>'
);
}

if (!itemDescription.isEmpty) 
{
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-subTitle">'
,'                        <h3 class="ms-soften">', $htmlEncode($resource("hp_VideoDescription")) ,'</h3>'
,'                    </div>'
,'                    <div class="ms-srch-hover-text ms-forceWrap" id="', videoDescriptionId ,'" title="', $htmlEncode(itemDescription.value) ,'">'
,'                        ', itemDescription ,''
,'                    </div>'
);
}
ms_outHtml.push(''
,'                </div>'
,'                <div id="', actionsId ,'" class="ms-srch-hover-actions">'
);
if (!itemPath.isEmpty && !isRendition)
{
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-action">'
,'                        <a clicktype="Result" id="', goToVideoPageId ,'" class="ms-calloutLink ms-uppercase" href="', itemPath ,'" title="', $htmlEncode($resource('hp_GoToVideoPage')) ,'">'
,'                            ', $htmlEncode($resource("hp_GoToVideoPage")) ,''
,'                        </a>'
,'                    </div>'
);
}
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-action">'
,'                        <a clicktype="ActionSend" id="', sendId ,'" class="ms-calloutLink ms-uppercase" title="', $htmlEncode($resource('hp_Tooltip_Send')) ,'" href="', $htmlEncode(emailLink) ,'">'
,'                            ', $htmlEncode($resource("hp_Send")) ,''
,'                        </a>'
,'                    </div>'
);
if(showDuplicatesLink)
{
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-action">'
,'                        <a id="', viewDuplicatesId ,'" class="ms-calloutLink ms-uppercase" title="', $htmlEncode($resource('hp_Tooltip_ViewDuplicates')) ,'" href="javascript:HP.ViewDuplicates(\'', $scriptEncode(ctx.CurrentItem.id) ,'\',', $scriptEncode(ctx.CurrentItem.DocId) ,')">'
,'                            ', $htmlEncode($resource("hp_ViewDuplicates")) ,''
,'                        </a>'
,'                    </div>'
);
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
function RegisterTemplate_e48c72f9630441bb8bf6143ad4d92b46() {ULSd0a:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Video_HoverPanel", DisplayTemplate_e48c72f9630441bb8bf6143ad4d92b46);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Video_HoverPanel.js", DisplayTemplate_e48c72f9630441bb8bf6143ad4d92b46);
}

        RegisterSod("mediaplayer.js", Srch.U.urlTokenExpansion("/_layouts/15/mediaplayer.js"));
        RegisterSod("sp.publishing.resources.resx", Srch.U.urlTokenExpansion("/_layouts/15/ScriptResx.ashx?name=sp.publishing.resources&culture={Locale}"));
        RegisterSodDep("mediaplayer.js", "sp.publishing.resources.resx");

}
RegisterTemplate_e48c72f9630441bb8bf6143ad4d92b46();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Video_HoverPanel.js"), RegisterTemplate_e48c72f9630441bb8bf6143ad4d92b46);
}
