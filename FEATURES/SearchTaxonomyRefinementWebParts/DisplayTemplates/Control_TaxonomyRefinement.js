function ULSUU7(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Control_TaxonomyRefinement.js";return o;}
function DisplayTemplate_0c552b3185104e649f3ec69ec3fad346(ctx) {ULSUU7:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_0c552b3185104e649f3ec69ec3fad346.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fControl_TaxonomyRefinement.js';
  ctx['DisplayTemplateData']['TemplateType']='Control';
  ctx['DisplayTemplateData']['TargetControlType']=['TaxonomyRefinement'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

ms_outHtml.push('',''
); 
ms_outHtml.push(''
,'    <div class="ms-ref-ctrl" id="TaxonomyRefinement" name="Control">'
);
        var hasControl = !$isNull(ctx.ClientControl);
        var hasNoTaxonomyNodes = ($isEmptyArray(ctx.ListData));

        if(hasControl)
        { 
            if(hasNoTaxonomyNodes)
            {
ms_outHtml.push(''
,'        <div id="EmptyContainer"></div>'
);
            }
            else
            {
ms_outHtml.push(''
,'        <div class="ms-ref-refiner">'
,'            <div id="Container">'
,'                ', ctx.RenderItems(ctx) ,''
,'            </div>'
,'        </div>'
);
            }
        }
ms_outHtml.push(''
,''
,'    </div>'
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_0c552b3185104e649f3ec69ec3fad346() {ULSUU7:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Control_TaxonomyRefinement", DisplayTemplate_0c552b3185104e649f3ec69ec3fad346);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fControl_TaxonomyRefinement.js", DisplayTemplate_0c552b3185104e649f3ec69ec3fad346);
}

}
RegisterTemplate_0c552b3185104e649f3ec69ec3fad346();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fControl_TaxonomyRefinement.js"), RegisterTemplate_0c552b3185104e649f3ec69ec3fad346);
}
