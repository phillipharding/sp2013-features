function ULS0k8(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_eDiscoverySharePoint_HoverPanel.js";return o;}
function DisplayTemplate_5ea7ecb2e1794835825ded4dd8782d21(ctx) {ULS0k8:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_5ea7ecb2e1794835825ded4dd8782d21.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_eDiscoverySharePoint_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Path':['Path'], 'Created By':['MetadataAuthor'], 'Created On':['Write'], 'Author':['DisplayAuthor'], 'Size':['Size'], 'LastModifiedTime':['LastModifiedTime'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'ContentClass':['ContentClass'], 'ContentType':['ContentType'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'ParentLink':['ParentLink']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULS0k8:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
var id = ctx.CurrentItem.csr_id;
ctx.CurrentItem.csr_ShowFollowLink = false;
ctx.CurrentItem.csr_ShowLastModifiedTime = true;
ctx.CurrentItem.csr_ShowAuthors = true;
ctx.CurrentItem.csr_AuthorsLabel = $resource("hp_RecentlyEdited_eDiscovery");
ctx.CurrentItem.csr_ShowFileIcon = true;

var fileExtension = $getItemValue(ctx,"FileExtension");
if (!fileExtension.isEmpty) 
{
    var prefixedFileName = Srch.U.getFriendlyNameForFileExtension(fileExtension.value);
    if(!$isEmptyString(prefixedFileName) && !$isEmptyString(Srch.Res[prefixedFileName]))
    {
        ctx.CurrentItem.csr_FileType = $resource(prefixedFileName);
    }
}

var summaryEncoded = "";
var hhSummary = $getItemValue(ctx, "HitHighlightedSummary");
if(!hhSummary.isEmpty)
{
    var su = Srch.U.processHHXML(hhSummary.value);    
    summaryEncoded = Srch.U.getTrimmedProcessedHHXMLString(su, Srch.U.summaryTruncationLengthWithPreview);
}

var pathLength = ctx.CurrentItem.csr_PathLength;
if(!pathLength) 
{
    pathLength = Srch.U.pathTruncationLength;
}
var displayPath = displayPath = $htmlEncode($getItemValue(ctx, "Path").value);
var truncatedUrl = Srch.U.truncateHighlightedUrl(displayPath, pathLength);

var innerContainerId = id + HP.ids.inner;
if(!$isEmptyString(summaryEncoded)) {
    $addRenderContextCallback(ctx, "OnPostRender", function(){ULS0k8:;
        HP.SetWidth(id, innerContainerId, 500);
    });
}
ms_outHtml.push(''
,'    <div class="ms-srch-hover-innerContainer ms-srch-hover-standardSize" id="', $htmlEncode(innerContainerId) ,'">'
,'        <div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder) ,'"></div>'
,'        <div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow) ,'"></div>'
,'        <div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content) ,'" data-displaytemplate="DiscoverySharePointHoverPanel">'
,'            <div id="', $htmlEncode(id + HP.ids.header) ,'" class="ms-srch-hover-header">'
,'                ', ctx.RenderHeader(ctx) ,''
,'                <div id="', $htmlEncode(id + Srch.U.Ids.path) ,'" tabindex="0" class="ms-metadata" title="', $htmlEncode(ctx.CurrentItem.Path) ,'" onblur="Srch.U.restoreText(this, \'', $scriptEncode(truncatedUrl) ,'\', \'', $scriptEncode(ctx.CurrentItem.Path) ,'\')" onclick="Srch.U.selectText(\'', $scriptEncode(ctx.CurrentItem.Path) ,'\', this)">'
,'                    ', truncatedUrl ,''
,'                </div>'
,'            </div>'
,'            <div id="', $htmlEncode(id + HP.ids.body) ,'" class="ms-srch-hover-body">'
,'                ', ctx.RenderBody(ctx) ,''
);
if(!$isEmptyString(summaryEncoded))
{
ms_outHtml.push(''
,'                <div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode(Srch.Res.hp_Summary) ,'</h3></div>'
,'                <div class="ms-srch-hover-text" id="', $htmlEncode(id + HP.ids.summary) ,'">'
,'                    ', summaryEncoded ,''
,'                </div>'
);
}
ms_outHtml.push(''
,'            </div>'
,'        </div> '
,'    </div>'
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_5ea7ecb2e1794835825ded4dd8782d21() {ULS0k8:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_eDiscoverySharePoint_HoverPanel", DisplayTemplate_5ea7ecb2e1794835825ded4dd8782d21);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_eDiscoverySharePoint_HoverPanel.js", DisplayTemplate_5ea7ecb2e1794835825ded4dd8782d21);
}

}
RegisterTemplate_5ea7ecb2e1794835825ded4dd8782d21();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_eDiscoverySharePoint_HoverPanel.js"), RegisterTemplate_5ea7ecb2e1794835825ded4dd8782d21);
}
