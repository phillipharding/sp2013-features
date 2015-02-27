function ULSNMG(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Filter_MultiValue_Body.js";return o;}
function DisplayTemplate_cb12c532be074d1eb28ac8bddebec2b0(ctx) {ULSNMG:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_cb12c532be074d1eb28ac8bddebec2b0.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_MultiValue_Body.js';
  ctx['DisplayTemplateData']['TemplateType']='Filter';
  ctx['DisplayTemplateData']['TargetControlType']=['Refinement'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['CompatibleSearchDataTypes']=[];
  ctx['DisplayTemplateData']['CompatibleManagedProperties']=[];

ms_outHtml.push('',''
);
var propertyName = ctx.RefinementControl["csr_propertyName"];
var displayTitle = ctx.RefinementControl["csr_displayTitle"];
var filters = ctx.RefinementControl["csr_filters"];
var isExpanded = Boolean(ctx.RefinementControl["csr_isExpanded"]);
var renderEmptyContainer = Boolean(ctx.RefinementControl["csr_renderEmptyContainer"]);
var useContains = Boolean(ctx.RefinementControl["csr_useContains"]);
var useKQL = Boolean(ctx.RefinementControl["csr_useKQL"]);
var showCounts = Boolean(ctx.RefinementControl["csr_showCounts"]);

if($isEmptyString(propertyName) || (!$isNull(renderEmptyContainer) && renderEmptyContainer))
{ 
ms_outHtml.push(''
,'        <div id="EmptyContainer"></div>'
);
} 
else if(!$isNull(filters) && Srch.U.isArray(filters) && !$isEmptyArray(filters))
{ 
    var expandedStatus = !$isNull(isExpanded) ? isExpanded : true;
    var iconClass = "ms-core-listMenu-item ";
    iconClass += expandedStatus ? "ms-ref-uparrow" : "ms-ref-downarrow";
ms_outHtml.push(''
,'        <div id="Container">'
,'            ', Srch.U.collapsibleRefinerTitle(propertyName, ctx.ClientControl.get_id(), displayTitle, iconClass) ,''
,'            <div class="ms-ref-unselSec" id="UnselectedSection">'
,'                <div id="unselShortList" class="ms-ref-unsel-shortList">'
,''
); 
    for (var i = 0; i < filters.length; i++){
        var filter = filters[i];
        if(!$isNull(filter)){
            var isSelected = Boolean(filter.IsSelected);
            var inputName = propertyName + '_ChkGroup';
            var inputId = inputName + "_" + filter.RefinementName;
			var nameClass = "ms-ref-name " + (showCounts ? "ms-displayInline" : "ms-displayInlineBlock ms-ref-ellipsis");
ms_outHtml.push(''
,'                    <div id="Value">'
);
            if(isSelected) {
ms_outHtml.push(''
,'                        <input type="checkbox" class="ms-padding0 ms-margin0 ms-verticalAlignMiddle" id="', $htmlEncode(inputId) ,'" name="', $htmlEncode(inputName) ,'" data-displayValue="', $htmlEncode(filter.RefinementName) ,'" value="', $htmlEncode(filter.RefinementToken) ,'" checked="" />'
);
            } else {
ms_outHtml.push(''
,'                        <input type="checkbox" class="ms-padding0 ms-margin0 ms-verticalAlignMiddle" id="', $htmlEncode(inputId) ,'" name="', $htmlEncode(inputName) ,'" data-displayValue="', $htmlEncode(filter.RefinementName) ,'" value="', $htmlEncode(filter.RefinementToken) ,'" />'
);
            }
ms_outHtml.push(''
,'                            <label for="', $htmlEncode(inputId) ,'" class="', nameClass ,'">'
,'                            ', $htmlEncode(filter.RefinementName) ,''
,''
);
              if (showCounts) {
ms_outHtml.push(''
,'                            <span id="RefinementCount" class="ms-ref-count ms-textSmall"> (', $htmlEncode(Srch.U.toFormattedNumber(filter.RefinementCount)) ,') </span>'
);
              }
ms_outHtml.push(''
,'                            </label>'
,'                    </div>'
);
        }
    }
ms_outHtml.push(''
,'                    <div id="OtherValue">'
,'                        <div id="', $htmlEncode(propertyName + '_SpecifiedValue') ,'">'
,'                            <a onclick="Srch.Refinement.multiRefinerSpecifyOtherFilterValue(\'', $scriptEncode(propertyName) ,'\', $getClientControl(this), ', $htmlEncode(useContains) ,', ', $htmlEncode(useKQL) ,');" href="javascript:{}">'
,'                                ', $htmlEncode($resource("rf_OtherValue")) ,''
,'                            </a>'
,'                        </div>'
,'                    </div>'
,'                    <div id="SubmitValue">'
,'                        <div id="submit">'
,'                            <a onclick="Srch.Refinement.submitMultiRefinement(\'', $scriptEncode(propertyName) ,'\', $getClientControl(this), ', $htmlEncode(useContains) ,', ', $htmlEncode(useKQL) ,');" href="javascript:{}">'
,'                                ', $htmlEncode($resource('rf_Apply')) ,''
,'                            </a>'
,'                             | '
,'                            <a onclick="$getClientControl(this).updateRefinementFilters(\'', $scriptEncode(propertyName) ,'\', null);" href="javascript:{}">'
,'                                ', $htmlEncode($resource('rf_ClearAll')) ,''
,'                            </a>'
,'                        </div>'
,'                    </div>'
,'                </div>'
,'            </div>'
);
}
ms_outHtml.push(''
,'    </div>'
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_cb12c532be074d1eb28ac8bddebec2b0() {ULSNMG:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Filter_MultiValue_Body", DisplayTemplate_cb12c532be074d1eb28ac8bddebec2b0);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_MultiValue_Body.js", DisplayTemplate_cb12c532be074d1eb28ac8bddebec2b0);
}

}
RegisterTemplate_cb12c532be074d1eb28ac8bddebec2b0();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_MultiValue_Body.js"), RegisterTemplate_cb12c532be074d1eb28ac8bddebec2b0);
}
