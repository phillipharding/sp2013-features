function ULSUhY(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Filter_eDiscoveryExchangeTypeRefinement.js";return o;}
function DisplayTemplate_40bfb285ac2643c097e6a5282ca43224(ctx) {ULSUhY:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_40bfb285ac2643c097e6a5282ca43224.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_eDiscoveryExchangeTypeRefinement.js';
  ctx['DisplayTemplateData']['TemplateType']='Filter';
  ctx['DisplayTemplateData']['TargetControlType']=['Refinement'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['CompatibleSearchDataTypes']=[];
  ctx['DisplayTemplateData']['CompatibleManagedProperties']=[];

ms_outHtml.push('',''
);
var hasControl = !$isNull(ctx.RefinementControl) && !$isNull(ctx.ClientControl);
if(hasControl)
{
    var queryGroup = ctx.ScriptApplicationManager.queryGroups[ctx.DataProvider.get_queryGroupName()];
    if(!$isNull(queryGroup) && !$isEmptyArray(queryGroup.displays))
    {
        var resultTablesCollection = queryGroup.displays[0].get_currentResultTableCollection();
        if(!$isNull(resultTablesCollection) && !$isEmptyArray(resultTablesCollection.ResultTables))
        {
            var totalRows = !$isNull(resultTablesCollection.ResultTables[0].Properties.Discovery_TotalItemCount) ? 
                resultTablesCollection.ResultTables[0].Properties.Discovery_TotalItemCount : resultTablesCollection.ResultTables[0].TotalRows;
            hasControl = totalRows > 0;
            ctx.ClientControl.set_renderedResult(hasControl);
        }
    }
}

function GetselectedTypeTokens() {ULSUhY:;
    var selectedTokens = null;
    if(!$isNull(ctx.DataProvider) && !$isNull(ctx.DataProvider.get_currentQueryState()) && !$isEmptyArray(ctx.DataProvider.get_currentQueryState().r)) {
        for(var j = 0; j < ctx.DataProvider.get_currentQueryState().r.length; j++) {
            var refiner = ctx.DataProvider.get_currentQueryState().r[j];
            if(!$isNull(refiner) && refiner.n.toLowerCase() == "kind") {
                selectedTokens = [];
                if(!$isEmptyArray(refiner.t)) {
                    for(var l=0; l< refiner.t.length; l++) {
                        if(!$isEmptyString(refiner.t[l])) {
                            selectedTokens.push(refiner.t[l].toLowerCase());
                        }
                    }
                }
                break;
            }
        }
    }
    return selectedTokens;
}

function StringArrayContains(list, token) {ULSUhY:;
    var contains = false;
    if(!$isEmptyArray(list) && !$isNull(token)) {
        if(!$isNull(list.IndexOf)) {
            contains = list.IndexOf(token) != -1;
        }
        else {
            for(var k = 0; k < list.length; k++) {
                contains = list[k] == token;
                if(contains) break;
            }
        }
    }
    return contains;
}

if(hasControl) {
    propertyName = ctx.RefinementControl.propertyName;
    displayTitle = Srch.Refinement.getRefinementTitle(ctx.RefinementControl);
    isExpanded = true;

    var exchangeTypeRefiners = 
    [
        [$resource("rf_EDiscExTypeRefinerValue_Email"),     "email"],
        [$resource("rf_EDiscExTypeRefinerValue_Contacts"),  "contacts"],
        [$resource("rf_EDiscExTypeRefinerValue_Meetings"),  "meetings"],
        [$resource("rf_EDiscExTypeRefinerValue_Tasks"),     "tasks"],
        [$resource("rf_EDiscExTypeRefinerValue_Notes"),     "notes"],
        [$resource("rf_EDiscExTypeRefinerValue_Documents"), "docs"],
        [$resource("rf_EDiscExTypeRefinerValue_Journal"),   "journals"],
        [$resource("rf_EDiscExTypeRefinerValue_IM"),        "im"]
    ];

    var selectedTypeTokens = GetselectedTypeTokens();
    var refiners = [];
    var allRefiners = [];
    var isCurrentSelected = false;
    for (var i = 0; i < exchangeTypeRefiners.length; i++) {
        isCurrentSelected = !$isEmptyArray(selectedTypeTokens) && StringArrayContains(selectedTypeTokens, exchangeTypeRefiners[i][1]);
        var refinerConfig = 
        {   
            RefinementName: exchangeTypeRefiners[i][0],
            RefinementToken: exchangeTypeRefiners[i][1],
            IsSelected: isCurrentSelected
        };
        allRefiners.push(refinerConfig);
        if(isCurrentSelected) {
            refiners.push(refinerConfig);
        }
    }
    if($isEmptyArray(refiners)) {
        refiners = allRefiners;
    }
    ctx["DisplayTemplateData"]["BodyTemplateId"] = "~sitecollection/_catalogs/masterpage/Display Templates/Filters/Filter_MultiValue_Body.js";
    ctx.RefinementControl["csr_propertyName"] = propertyName;
    ctx.RefinementControl["csr_displayTitle"] = displayTitle;
    ctx.RefinementControl["csr_filters"] = refiners;
    ctx.RefinementControl["csr_isExpanded"] = isExpanded;
    ctx.RefinementControl["csr_renderEmptyContainer"] = !hasControl;
    ctx.RefinementControl["csr_useContains"] = true;
    ctx.RefinementControl["csr_useKQL"] = true;
ms_outHtml.push(''
,'    ', ctx.RenderBody(ctx) ,''
);
}
ms_outHtml.push(''
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_40bfb285ac2643c097e6a5282ca43224() {ULSUhY:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Filter_eDiscoveryExchangeTypeRefinement", DisplayTemplate_40bfb285ac2643c097e6a5282ca43224);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_eDiscoveryExchangeTypeRefinement.js", DisplayTemplate_40bfb285ac2643c097e6a5282ca43224);
}

        $includeScript("", "~sitecollection/_catalogs/masterpage/Display Templates/Filters/Filter_MultiValue_Body.js");

}
RegisterTemplate_40bfb285ac2643c097e6a5282ca43224();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_eDiscoveryExchangeTypeRefinement.js"), RegisterTemplate_40bfb285ac2643c097e6a5282ca43224);
}
