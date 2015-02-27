function ULSraM(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Filter_MultiValue.js";return o;}
function DisplayTemplate_557c0181cdcd4c0a846f6bf5e3d9760d(ctx) {ULSraM:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_557c0181cdcd4c0a846f6bf5e3d9760d.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_MultiValue.js';
  ctx['DisplayTemplateData']['TemplateType']='Filter';
  ctx['DisplayTemplateData']['TargetControlType']=['Refinement'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['CompatibleSearchDataTypes']=[];
  ctx['DisplayTemplateData']['CompatibleManagedProperties']=[];

ms_outHtml.push('',''
);
var Options = {
    ShowCounts: false
};

var listData = ctx.ListData;
var hasControl = !$isNull(ctx.RefinementControl) && !$isNull(ctx.ClientControl);

if(hasControl) {
    var hasNoListData = ($isEmptyArray(listData));

    var propertyName = ctx.RefinementControl.propertyName;
    var displayTitle = Srch.Refinement.getRefinementTitle(ctx.RefinementControl);
    var isExpanded = Srch.Refinement.getExpanded(ctx.RefinementControl.propertyName);
    var useContains = false;
    var useKQL = false;
    var refiners = [];

    var currentRefinementCategory = ctx.ClientControl.getCurrentRefinementCategory(ctx.RefinementControl.propertyName);
    var hasAnyFilterTokens = (!$isNull(currentRefinementCategory) && currentRefinementCategory.get_tokenCount() > 0);
    var renderEmptyContainer = hasControl && (hasNoListData && !hasAnyFilterTokens);
    if(!renderEmptyContainer) {
        var listDataTokenToDisplayMap = {};
        var listDataTokenToCountMap = {};
        if(!hasNoListData) {
            for (var i = 0; i < listData.length; i++) {
                var filter = listData[i];
                if(!$isNull(filter)) {
                    listDataTokenToDisplayMap[filter.RefinementToken] = filter.RefinementName;
                    listDataTokenToCountMap[filter.RefinementToken] = filter.RefinementCount;
                    if(!hasAnyFilterTokens && !$isEmptyString(filter.RefinementName) && !$isEmptyString(filter.RefinementToken)) {
                        refiners.push(
                        {   
                            RefinementName: filter.RefinementName,
                            RefinementToken: filter.RefinementToken,
                            RefinementCount: filter.RefinementCount,
                            IsSelected: false
                        });
                    }
                }
            }
        }
        if(hasAnyFilterTokens) {
            for(var j = 0; j < currentRefinementCategory.get_tokenCount(); j++) {
                var token = currentRefinementCategory.t[j];
                var displayValue = listDataTokenToDisplayMap[token];
                if($isEmptyString(displayValue) && !$isNull(currentRefinementCategory.m)) {
                    displayValue = currentRefinementCategory.m[token];
                }
                if(!$isEmptyString(displayValue) && !$isEmptyString(token))
                {
                    refiners.push(
                    {   
                        RefinementName: displayValue,
                        RefinementToken: token,
                        RefinementCount: !$isNull(listDataTokenToCountMap[token]) ? listDataTokenToCountMap[token] : 0,
                        IsSelected: true
                    });
                }
            }
        }
    }
    ctx["DisplayTemplateData"]["BodyTemplateId"] = "~sitecollection/_catalogs/masterpage/Display Templates/Filters/Filter_MultiValue_Body.js";
    ctx.RefinementControl["csr_propertyName"] = propertyName;
    ctx.RefinementControl["csr_displayTitle"] = displayTitle;
    ctx.RefinementControl["csr_filters"] = refiners;
    ctx.RefinementControl["csr_isExpanded"] = isExpanded;
    ctx.RefinementControl["csr_renderEmptyContainer"] = renderEmptyContainer;
    ctx.RefinementControl["csr_useContains"] = useContains;
    ctx.RefinementControl["csr_useKQL"] = useKQL;
    ctx.RefinementControl["csr_showCounts"] = Options.ShowCounts;
ms_outHtml.push(''
,'        ', ctx.RenderBody(ctx) ,''
);
}
ms_outHtml.push(''
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_557c0181cdcd4c0a846f6bf5e3d9760d() {ULSraM:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Filter_MultiValue", DisplayTemplate_557c0181cdcd4c0a846f6bf5e3d9760d);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_MultiValue.js", DisplayTemplate_557c0181cdcd4c0a846f6bf5e3d9760d);
}

    $includeScript("", "~sitecollection/_catalogs/masterpage/Display Templates/Filters/Filter_MultiValue_Body.js");

}
RegisterTemplate_557c0181cdcd4c0a846f6bf5e3d9760d();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_MultiValue.js"), RegisterTemplate_557c0181cdcd4c0a846f6bf5e3d9760d);
}
