function ULSc51(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Filter_eDiscoverySharePointRefinement.js";return o;}
function DisplayTemplate_0c505f7548ad44ab863f532d7edc38b1(ctx) {ULSc51:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_0c505f7548ad44ab863f532d7edc38b1.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_eDiscoverySharePointRefinement.js';
  ctx['DisplayTemplateData']['TemplateType']='Filter';
  ctx['DisplayTemplateData']['TargetControlType']=['Refinement'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['CompatibleSearchDataTypes']=[];
  ctx['DisplayTemplateData']['CompatibleManagedProperties']=[];

ms_outHtml.push('',''
,''
);

window.showSpecifyOtherSP = function(anchorElement)

{ULSc51:;
    var refinerName = anchorElement.id;
    var container = document.createElement("DIV");
    container.className = "ms-ref-refiner";
    container.id = "OtherValue";

    Discovery.Refiners.createSpecifyOtherDropdownSP(container, refinerName);

    var valBox = Discovery.Refiners.createSpecifyOtherValueBox(container, refinerName);
    valBox.onkeypress = function(ev) {ULSc51:;
        if (window.event) 
        {
            if (Srch.U.isEnterKey(String.fromCharCode(window.event.keyCode)))
            {
                Discovery.Refiners.submitUserSpecifiedRefiner(refinerName, $getClientControl(this));
                window.event.cancelBubble = true;
            }
        } 
        else if (Srch.U.isEnterKey(String.fromCharCode(ev.which)))
        {
            Discovery.Refiners.submitUserSpecifiedRefiner(refinerName, $getClientControl(this));
            ev.stopPropagation();
        }
    };
    var submitTag = Discovery.Refiners.createSpecifyOtherSubmitTag(container);
    submitTag.onclick = function() {ULSc51:; Discovery.Refiners.submitUserSpecifiedRefiner(refinerName, $getClientControl(this)); };

    var rootRefinerElement = anchorElement.parentNode;
    var toggleFunction = function(){ULSc51:; EnsureScriptParams('SearchUI.js', 'Srch.SU.toggleRefCategory', rootRefinerElement, refinerName);};
    anchorElement.onclick = toggleFunction;

    var containerPlaceHolder = rootRefinerElement.querySelector(".ms-ref-unselSec");
    containerPlaceHolder.appendChild(container);

    toggleFunction();
    return true;
}; 

if(!$isNull(ctx.RefinementControl) && !$isNull(ctx.ClientControl)) 
{
    if(!$isNull(ctx.DataProvider) && !$isNull(ctx.DataProvider.get_currentQueryState()) && !$isEmptyArray(ctx.DataProvider.get_currentQueryState().r))
    {
        var isExpanded = true;
        var renderEmptyContainer = false;
        var useContains = true;
        for(var i = 0; i < ctx.DataProvider.get_currentQueryState().r.length; i++)
        {
            var currentRef = ctx.DataProvider.get_currentQueryState().r[i];
            var refinerNameForComparison = currentRef.n.toLowerCase();

            if(refinerNameForComparison == "fileextension") continue;

            var useKQL = false;

            var propertyName = currentRef.n;
            var displayTitle = Srch.Refinement.getRefinementLocalizedTitle(currentRef.n);
            var refiners = [];
            for(var j = 0; j < currentRef.t.length; j++)
            {
                var currentToken = currentRef.t[j];
                refiners.push(
                {   
                    RefinementName: currentToken,
                    RefinementToken: currentToken,
                    IsSelected: true
                });
            }
            ctx["DisplayTemplateData"]["BodyTemplateId"] = "~sitecollection/_catalogs/masterpage/Display Templates/Filters/Filter_MultiValue_Body.js";
            ctx.RefinementControl["csr_propertyName"] = propertyName;
            ctx.RefinementControl["csr_displayTitle"] = displayTitle;
            ctx.RefinementControl["csr_filters"] = refiners;
            ctx.RefinementControl["csr_isExpanded"] = isExpanded;
            ctx.RefinementControl["csr_renderEmptyContainer"] = renderEmptyContainer;
            ctx.RefinementControl["csr_useContains"] = useContains;
            ctx.RefinementControl["csr_useKQL"] = useKQL;
ms_outHtml.push(''
,'        ', ctx.RenderBody(ctx) ,''
);
        }
    }

    var anyResults = false;
    var queryGroup = ctx.ScriptApplicationManager.queryGroups[ctx.DataProvider.get_queryGroupName()];
    if(!$isNull(queryGroup) && !$isEmptyArray(queryGroup.displays))
    {
        var resultTablesCollection = queryGroup.displays[0].get_currentResultTableCollection();
        if(!$isNull(resultTablesCollection) && !$isEmptyArray(resultTablesCollection.ResultTables))
        {

            var totalRows = !$isNull(resultTablesCollection.ResultTables[0].TotalRows) ? 
                resultTablesCollection.ResultTables[0].TotalRows : 0;

            anyResults = totalRows > 0;
            ctx.ClientControl.set_renderedResult(anyResults);
        }
    }

    if(anyResults)
    { 
        var iconClass = "ms-ref-downarrow";
        var refinerCatTitle = Srch.Refinement.getRefinementTitle(ctx.RefinementControl);

        var customOnClick = "showSpecifyOtherSP(this);";

ms_outHtml.push(''
,'            <div id="Container">'
,'                ', Srch.U.collapsibleRefinerTitle(null, ctx.ClientControl.get_id(), refinerCatTitle, iconClass, customOnClick) ,''
,'                <div class="ms-ref-unselSec" id="UnselectedSection" style="display:none;"></div>'
,'            </div>'
);
    }
    else
    {
ms_outHtml.push(''
,'        <div id="EmptyContainer"></div>'
);
    }
}
ms_outHtml.push(''
,''
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_0c505f7548ad44ab863f532d7edc38b1() {ULSc51:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Filter_eDiscoverySharePointRefinement", DisplayTemplate_0c505f7548ad44ab863f532d7edc38b1);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_eDiscoverySharePointRefinement.js", DisplayTemplate_0c505f7548ad44ab863f532d7edc38b1);
}

    $includeScript("", "~sitecollection/_catalogs/masterpage/Display Templates/Filters/Filter_MultiValue_Body.js");

}
RegisterTemplate_0c505f7548ad44ab863f532d7edc38b1();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_eDiscoverySharePointRefinement.js"), RegisterTemplate_0c505f7548ad44ab863f532d7edc38b1);
}
