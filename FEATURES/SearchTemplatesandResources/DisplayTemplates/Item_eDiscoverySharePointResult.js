function ULSXvi(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_eDiscoverySharePointResult.js";return o;}
function DisplayTemplate_b387f465dd3543a793a49deb3a9e3981(ctx) {ULSXvi:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_b387f465dd3543a793a49deb3a9e3981.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_eDiscoverySharePointResult.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Path':['Path'], 'Created By':['MetadataAuthor'], 'Created On':['Write'], 'Author':['DisplayAuthor'], 'Size':['Size'], 'LastModifiedTime':['LastModifiedTime'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'ContentClass':['ContentClass'], 'ContentType':['ContentType'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'ParentLink':['ParentLink']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSXvi:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
var path = $getItemValue(ctx,"Path");
path.overrideValueRenderer($urlHtmlEncode);

var name = $getItemValue(ctx,"Title");

var creator = $getItemValue(ctx,"Created By");

var createdDate = $getItemValue(ctx,"Created On");
var dateFormat = function(date)
{ULSXvi:;
    if(!(date.isNull) && !$isNull(date.value.format)) 
    {
        return $htmlEncode(date.value.localeFormat(Sys.CultureInfo.CurrentCulture.dateTimeFormat.ShortDatePattern));
    }
    else 
    {
        return "";
    }
};
createdDate.overrideValueRenderer(dateFormat);

window.eDiscIsDialog = function()
{ULSXvi:;
    return !$isNull(window.top.g_childDialog);
}

var id = ctx.ClientControl.get_nextUniqueId();
var itemId = id + Srch.U.Ids.item;
var hoverId = id + Srch.U.Ids.hover;
$setResultItem(itemId, ctx.CurrentItem);
var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/System/Item_eDiscoverySharePoint_HoverPanel.js";
ms_outHtml.push(''
,'        <tr class="edisc-SearchResultItemContainer">'
,'            <td>'
,'                <div class="edisc-SearchResultItem" id="', $htmlEncode(itemId) ,'" name="Item" onmouseover="if (!eDiscIsDialog()) EnsureScriptParams(\'SearchUI.js\', \'HP.Init\', event, \'', $scriptEncode(itemId) ,'\', \'', $scriptEncode(hoverId) ,'\', \'', $scriptEncode(hoverUrl),'\');" onmouseout="if (!eDiscIsDialog()) EnsureScriptParams(\'SearchUI.js\', \'HP.Hide\');">'
,'                    <div id="', hoverId ,'" class="ms-srch-hover-outerContainer"></div>'
,'                        <div class="edisc-SubjectContainer">'
,'                            <a href="', path ,'" TARGET="_blank">'
,'                                ', name ,''
,'                            </a>'
,'                        </div>'
,'                    </div>'
,'            </td>'
,'            <td>'
,'                <div class="edisc-PeopleContainer">'
,'                    ', creator ,''
,'                </div>'
,'            </td>'
,'            <td>'
,'                <div class="edisc-DateContainer">'
,'                    ', createdDate ,''
,'                </div>'
,'            </td>'
,'        </tr>'
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_b387f465dd3543a793a49deb3a9e3981() {ULSXvi:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_eDiscoverySharePointResult", DisplayTemplate_b387f465dd3543a793a49deb3a9e3981);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_eDiscoverySharePointResult.js", DisplayTemplate_b387f465dd3543a793a49deb3a9e3981);
}

}
RegisterTemplate_b387f465dd3543a793a49deb3a9e3981();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_eDiscoverySharePointResult.js"), RegisterTemplate_b387f465dd3543a793a49deb3a9e3981);
}
