function ULST2n(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_QBRefinement.js";return o;}
function DisplayTemplate_364f92995a324c4d8535a9bc3a1afbaa(ctx) {ULST2n:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_364f92995a324c4d8535a9bc3a1afbaa.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_QueryBuilderRefinement.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Refinement'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULST2n:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
,'        <div class="display-none"></div>'
); 
    var listData = ctx.ListData;
    var hasControl = true;
    if($isNull(ctx.RefinementControl) || $isNull(ctx.ClientControl)) hasControl = false;
    var hasNoListData = ($isEmptyArray(listData));

    if(hasControl){ 
        var rc = ctx.RefinementControl;
        var optgroup = document.getElementById(rc.containerId);    
        if ($isNull(optgroup))
        {
            return;
        }
        if(hasNoListData){
            optgroup.parentNode.removeChild(optgroup);
        } else {
            var selectedRefiners = document.getElementById('selectedRefiners');
            for (var i = 0; i < listData.length; i++){
                var option = document.createElement('OPTION');
                option.value = listData[i].RefinementToken;
                option.innerHTML = $htmlEncode(listData[i].RefinementName);
                option.title = listData[i].RefinementToken;
                option.setAttribute('data-refinername', optgroup.label);

                if (ctx.ClientControl.hasRefinementFilter(listData[i].RefinerName, listData[i].RefinementToken)) {
                    if (selectedRefiners) {
                        selectedRefiners.appendChild(option);
                    }
                } else {
                    optgroup.appendChild(option);
                }
            }
        }
    }
ms_outHtml.push(''
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_364f92995a324c4d8535a9bc3a1afbaa() {ULST2n:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_QueryBuilderRefinement", DisplayTemplate_364f92995a324c4d8535a9bc3a1afbaa);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_QueryBuilderRefinement.js", DisplayTemplate_364f92995a324c4d8535a9bc3a1afbaa);
}

}
RegisterTemplate_364f92995a324c4d8535a9bc3a1afbaa();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_QueryBuilderRefinement.js"), RegisterTemplate_364f92995a324c4d8535a9bc3a1afbaa);
}
