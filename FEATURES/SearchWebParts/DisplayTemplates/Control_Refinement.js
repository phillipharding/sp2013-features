function ULSh9A(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Control_Refinement.js";return o;}
function DisplayTemplate_6947fd26c5f640079ff285310581ee51(ctx) {ULSh9A:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_6947fd26c5f640079ff285310581ee51.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fControl_Refinement.js';
  ctx['DisplayTemplateData']['TemplateType']='Control';
  ctx['DisplayTemplateData']['TargetControlType']=['Refinement'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

ms_outHtml.push('',''
); 

        ctx.ClientControl.alternateRenderer = function(container, cntxt) {};
ms_outHtml.push(''
,'        <div class="ms-ref-ctrl" id="Refinement" name="Control">'
); 
            if(!$isNull(ctx.ClientControl)){
                var rcs = ctx.ClientControl.get_selectedRefinementControls();
                if(!$isEmptyArray(rcs)){
                    for(var i = 0; i < rcs.length; i++){
                        var rc = rcs[i];
                        if(!$isNull(rc)){
                            rc.containerId = ctx.ClientControl.get_nextUniqueId(); 
ms_outHtml.push(''
,'                            <div class="ms-ref-refiner" id="', $htmlEncode(rc.containerId) ,'" name="Group" refinerName="', $htmlEncode(rc.propertyName) ,'"></div>'
); 
                        }
                    }
                }
ms_outHtml.push(''
,'                <div id="', ctx.ClientControl.get_emptyRefinementMessageId() ,'" class="ms-disabled ms-alignCenter ms-hide">'
);
                    var emptyMessage = ctx.ClientControl.get_emptyMessage();
                    if ($isEmptyString(emptyMessage))
                    {
ms_outHtml.push(''
,'                        ', $htmlEncode(Srch.U.loadResource("rf_EmptyRefinement")) ,''
);
                    }
                    else
                    {
ms_outHtml.push(''
,'                        ', $htmlEncode(emptyMessage) ,''
);
                    }
ms_outHtml.push(''
,'                </div>'
);
            }
ms_outHtml.push(''
,'        </div>'
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_6947fd26c5f640079ff285310581ee51() {ULSh9A:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Control_Refinement", DisplayTemplate_6947fd26c5f640079ff285310581ee51);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fControl_Refinement.js", DisplayTemplate_6947fd26c5f640079ff285310581ee51);
}

}
RegisterTemplate_6947fd26c5f640079ff285310581ee51();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fControl_Refinement.js"), RegisterTemplate_6947fd26c5f640079ff285310581ee51);
}
