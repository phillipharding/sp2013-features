function ULScqk(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Diagnostic.js";return o;}
function DisplayTemplate_6be7c3604a7e4519a210e962b4ed867c(ctx) {ULScqk:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_6be7c3604a7e4519a210e962b4ed867c.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_Diagnostic.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Picture URL':['PublishingImage', 'PictureURL', 'PictureThumbnailURL'], 'Path':null, 'SecondaryFileExtension':null, 'ContentTypeId':null, 'Line 1':['Title'], 'Line 2':['Description'], 'Line 3':[], 'Line 4':[], 'Line 5':[], 'Line 6':[], 'Line 7':[], 'Line 8':[], 'Line 9':[], 'Line 10':[]};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULScqk:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
var encodedId = $htmlEncode(ctx.ClientControl.get_nextUniqueId() + "_Diagnostic_");

var linkURL = $getItemValue(ctx, "Path");
linkURL.overrideValueRenderer($urlHtmlEncode);

var line1 = $getItemValue(ctx, "Line 1");
var pictureURL = $getItemValue(ctx, "Picture URL");
pictureURL.overrideValueRenderer($urlHtmlEncode);
var pictureId = encodedId + "picture";
var pictureMarkup = Srch.ContentBySearch.getPictureMarkup(pictureURL, 100, 100, ctx.CurrentItem, "cbs-picture3LinesImg", line1, pictureId);

window.cbsDiagnostic_RenderPropertyMappings = function(valueInfoObj)
{ULScqk:;
    var combinedManagedPropertiesMapping = "";
    if(!$isNull(valueInfoObj) && !$isNull(valueInfoObj.propertyMappings) && !$isNull(valueInfoObj.propertyMappings.length))
    {
        for (var i = 0; i < valueInfoObj.propertyMappings.length; i++)
        {
            var managedPropertyName = valueInfoObj.propertyMappings[i];
            combinedManagedPropertiesMapping += i == 0 ? managedPropertyName : String.format(Srch.Res.edisc_MultiValueFormat, managedPropertyName);
        }
    }
    return $htmlEncode(combinedManagedPropertiesMapping);
}

var itemContainerTitle = null;
var canBuildItemContainerTitle = !$isNull(ctx.CurrentItemIdx) && !$isNull(ctx.CurrentGroup) && 
    !$isNull(ctx.CurrentGroup.ResultRows) && !$isNull(ctx.CurrentGroup.ResultRows.length) &&
    !isNaN(ctx.CurrentGroup.ResultRows.length) && !isNaN(ctx.CurrentItemIdx);
if(canBuildItemContainerTitle)
{
    itemContainerTitle = String.format($resource("item_Diagnostic_ItemTitleFormat"), ctx.CurrentItemIdx + 1, ctx.CurrentGroup.ResultRows.length);
}

var containerId = encodedId + "container";
var pictureSlotContainerId = encodedId + "pictureSlotContainer";
var pictureContainerId = encodedId + "pictureContainer";
var pictureLinkId = encodedId + "pictureLink";
var pathContainerId = encodedId + "pathContainer";
ms_outHtml.push(''
,'        <ul class="cbs-diagnostic-Container" id="', containerId ,'" data-displaytemplate="ItemDiagnostic">'
,'            <li>'
);
if(!$isEmptyString(itemContainerTitle))
{
ms_outHtml.push(''
,'                <h3 class="cbs-diagnostic-ContainerTitle">', $htmlEncode(itemContainerTitle) ,'</h3>'
);
}
ms_outHtml.push(''
,'                <ul id="', pictureSlotContainerId ,'" class="cbs-diagnosticSlot">'
,'                    <li class="cbs-diagnosticSlotName">', $htmlEncode($resource("item_Diagnostic_PictureSlot")) ,'</li>'
,'                    <li class="cbs-diagnosticItemProperty">'
,'                        <ul class="cbs-diagnosticItemContainer">'
,'                            <li class="cbs-diagnosticItemName">', $htmlEncode($resource("item_Diagnostic_Value")) ,'</li>'
);
if(pictureURL.isEmpty)
{
ms_outHtml.push(''
,'                            <li class="cbs-diagnosticItemValue">&#160;</li>'
);
}
else
{
ms_outHtml.push(''
,'                            <li class="cbs-diagnosticItemValue">', $htmlEncode(pictureURL.value) ,'</li>'
);
}
ms_outHtml.push(''
,'                        </ul>'
,'                    </li>'
,'                    <li class="cbs-diagnosticItemProperty">'
,'                        <ul class="cbs-diagnosticItemContainer">'
,'                            <li class="cbs-diagnosticItemName">', $htmlEncode($resource("item_Diagnostic_Preview")) ,'</li>'
,'                            <li class="cbs-diagnosticItemValue">'
,'                                <div class="cbs-picture3LinesImageContainer" id="', pictureContainerId ,'">'
,'                                    <a class="cbs-pictureImgLink" href="', linkURL ,'" title="', line1 ,'" id="', pictureLinkId ,'">'
,'                                        ', pictureMarkup ,''
,'                                    </a>'
,'                                </div>'
,'                            </li>'
,'                        </ul>'
,'                    </li>'
,'                    <li class="cbs-diagnosticItemProperty">'
,'                        <ul class="cbs-diagnosticItemContainer">'
,'                            <li class="cbs-diagnosticItemName">', $htmlEncode($resource("item_Diagnostic_MappedManagedProperty")) ,'</li>'
,'                            <li class="cbs-diagnosticItemValue">', $htmlEncode(pictureURL.managedPropertyName) ,'</li>'
,'                        </ul>'
,'                    </li>'
,'                    <li class="cbs-diagnosticItemProperty">'
,'                        <ul class="cbs-diagnosticItemContainer">'
,'                            <li class="cbs-diagnosticItemName">', $htmlEncode($resource("item_Diagnostic_PropertyMappings")) ,'</li>'
,'                            <li class="cbs-diagnosticItemValue">', cbsDiagnostic_RenderPropertyMappings(pictureURL)  ,'</li>'
,'                        </ul>'
,'                    </li>'
,'                </ul>'
,'            </li>'
,'            <li>'
,'                <ul id="', pathContainerId ,'" class="cbs-diagnosticSlot">'
,'                    <li class="cbs-diagnosticSlotName">', $htmlEncode($resource("item_Diagnostic_PathSlot")) ,'</li>'
,'                    <li class="cbs-diagnosticItemProperty">'
,'                        <ul class="cbs-diagnosticItemContainer">'
,'                            <li class="cbs-diagnosticItemName">', $htmlEncode($resource("item_Diagnostic_Value")) ,'</li>'
,'                            <li class="cbs-diagnosticItemValue">', $htmlEncode(linkURL.value) ,'</li>'
,'                        </ul>'
,'                    </li>'
,'                </ul>'
,'            </li>'
);
for(var lineNum = 1; lineNum <= 10; lineNum++)
{
    var lineValueInfo = $getItemValue(ctx, String.format("Line {0}", lineNum));
    if(!$isNull(lineValueInfo) && !$isEmptyString(cbsDiagnostic_RenderPropertyMappings(lineValueInfo)))
    {
        var lineId = String.format("{0}line{1}", encodedId, lineNum);
        var slotName = String.format($resource("item_Diagnostic_SlotNameFormat"), lineNum);
ms_outHtml.push(''
,'            <li>'
,'                <ul id="', lineId ,'" class="cbs-diagnosticSlot">'
,'                    <li class="cbs-diagnosticSlotName">', $htmlEncode(slotName) ,'</li>'
,'                    <li class="cbs-diagnosticItemProperty">'
,'                        <ul class="cbs-diagnosticItemContainer">'
,'                            <li class="cbs-diagnosticItemName">', $htmlEncode($resource("item_Diagnostic_Value")) ,'</li>'
);
        if(lineValueInfo.isEmpty)
        {
ms_outHtml.push(''
,'                            <li class="cbs-diagnosticItemValue">&#160;</li>'
);
        }
        else
        {
ms_outHtml.push(''
,'                            <li class="cbs-diagnosticItemValue">', lineValueInfo ,'</li>'
);
        }
ms_outHtml.push(''
,'                        </ul>'
,'                    </li>'
,'                    <li class="cbs-diagnosticItemProperty">'
,'                        <ul class="cbs-diagnosticItemContainer">'
,'                            <li class="cbs-diagnosticItemName">', $htmlEncode($resource("item_Diagnostic_MappedManagedProperty")) ,'</li>'
,'                            <li class="cbs-diagnosticItemValue">', $htmlEncode(lineValueInfo.managedPropertyName) ,'</li>'
,'                        </ul>'
,'                    </li>'
,'                    <li class="cbs-diagnosticItemProperty">'
,'                        <ul class="cbs-diagnosticItemContainer">'
,'                            <li class="cbs-diagnosticItemName">', $htmlEncode($resource("item_Diagnostic_PropertyMappings")) ,'</li>'
,'                            <li class="cbs-diagnosticItemValue">', cbsDiagnostic_RenderPropertyMappings(lineValueInfo)  ,'</li>'
,'                        </ul>'
,'                    </li>'
,'                </ul>'
,'            </li>'
);
    }
}
ms_outHtml.push(''
,'        </ul>'
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_6be7c3604a7e4519a210e962b4ed867c() {ULScqk:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Diagnostic", DisplayTemplate_6be7c3604a7e4519a210e962b4ed867c);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_Diagnostic.js", DisplayTemplate_6be7c3604a7e4519a210e962b4ed867c);
}

        $includeLanguageScript("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_Diagnostic.js", "~sitecollection/_catalogs/masterpage/Display Templates/Language Files/{Locale}/CustomStrings.js");

}
RegisterTemplate_6be7c3604a7e4519a210e962b4ed867c();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fItem_Diagnostic.js"), RegisterTemplate_6be7c3604a7e4519a210e962b4ed867c);
}
