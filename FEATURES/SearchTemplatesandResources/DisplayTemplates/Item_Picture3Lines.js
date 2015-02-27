function ULSwTY(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Picture3Lines.js";return o;}
function DisplayTemplate_3ae5071ad4d24f1abdb28f1d1203e623(ctx) {ULSwTY:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_3ae5071ad4d24f1abdb28f1d1203e623.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_Picture3Lines.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Picture URL':['PublishingImage', 'PictureURL', 'PictureThumbnailURL'], 'Link URL':['Path'], 'Line 1':['Title'], 'Line 2':['Description'], 'Line 3':[], 'SecondaryFileExtension':null, 'ContentTypeId':null};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSwTY:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
,''
);

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

var dataDisplayTemplateTitle = "ItemPicture3Lines";

 ms_outHtml.push(''
,'        <div class="cbs-picture3LinesContainer" id="', containerId ,'" data-displaytemplate="', $htmlEncode(dataDisplayTemplateTitle) ,'">'
,'            <div class="cbs-picture3LinesImageContainer" id="', pictureContainerId ,'">'
);
if(!linkURL.isEmpty)
{
ms_outHtml.push(''
,''
,'                <a class="cbs-pictureImgLink" href="', linkURL ,'" title="', $htmlEncode(line1.defaultValueRenderer(line1)) ,'" id="', pictureLinkId ,'">'
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
,'                <a class="cbs-picture3LinesLine1Link" href="', linkURL ,'" title="', $htmlEncode(line1.defaultValueRenderer(line1)) ,'" id="', line1LinkId ,'">'
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
function RegisterTemplate_3ae5071ad4d24f1abdb28f1d1203e623() {ULSwTY:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Picture3Lines", DisplayTemplate_3ae5071ad4d24f1abdb28f1d1203e623);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_Picture3Lines.js", DisplayTemplate_3ae5071ad4d24f1abdb28f1d1203e623);
}

        $includeLanguageScript("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_Picture3Lines.js", "~sitecollection/_catalogs/masterpage/Display Templates/Language Files/{Locale}/CustomStrings.js");

}
RegisterTemplate_3ae5071ad4d24f1abdb28f1d1203e623();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_Picture3Lines.js"), RegisterTemplate_3ae5071ad4d24f1abdb28f1d1203e623);
}
