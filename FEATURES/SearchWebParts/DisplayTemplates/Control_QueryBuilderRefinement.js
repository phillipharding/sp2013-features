function ULS4Vr(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Control_QBRefinement.js";return o;}
function DisplayTemplate_8db3302110814fd1975f7c8ea88b2ae8(ctx) {ULS4Vr:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_8db3302110814fd1975f7c8ea88b2ae8.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_QueryBuilderRefinement.js';
  ctx['DisplayTemplateData']['TemplateType']='Control';
  ctx['DisplayTemplateData']['TargetControlType']=[];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

ms_outHtml.push('',''
);
    var selectedRefiners = document.getElementById('selectedRefiners');
    if (selectedRefiners) {
        while (selectedRefiners.firstChild){
            selectedRefiners.removeChild(selectedRefiners.firstChild);
        }
    }
    var availableRefiners = document.getElementById('availableRefiners');
    if (availableRefiners){
        while (availableRefiners.firstChild){
            availableRefiners.removeChild(availableRefiners.firstChild);
        }
        availableRefiners.scrollTop = 0;

        if(!$isNull(ctx.ClientControl)){
            var rcs = ctx.ClientControl.get_selectedRefinementControls();
            if(!$isEmptyArray(rcs)){
                for(var i = 0; i < rcs.length; i++){
                    var rc = rcs[i];
                    if(!$isNull(rc)){
                        rc.containerId = ctx.ClientControl.get_nextUniqueId();
                        var optgroup = document.createElement('OPTGROUP');
                        optgroup.id = rc.containerId;
                        optgroup.label = rc.propertyName;
                        availableRefiners.appendChild(optgroup);
                    }
                }
            }
        }
    }
ms_outHtml.push(''
, ctx.RenderItems(ctx) ,''
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_8db3302110814fd1975f7c8ea88b2ae8() {ULS4Vr:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Control_QueryBuilderRefinement", DisplayTemplate_8db3302110814fd1975f7c8ea88b2ae8);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_QueryBuilderRefinement.js", DisplayTemplate_8db3302110814fd1975f7c8ea88b2ae8);
}

}
RegisterTemplate_8db3302110814fd1975f7c8ea88b2ae8();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_QueryBuilderRefinement.js"), RegisterTemplate_8db3302110814fd1975f7c8ea88b2ae8);
}
