function ULS4Zs(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Filter_RefinementPreview.js";return o;}
function DisplayTemplate_70a79b3d1f8140a194589255dc1a7586(ctx) {ULS4Zs:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_70a79b3d1f8140a194589255dc1a7586.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fFilter_RefinementPreview.js';
  ctx['DisplayTemplateData']['TemplateType']='Filter';
  ctx['DisplayTemplateData']['TargetControlType']=['Refinement'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['CompatibleSearchDataTypes']=[];
  ctx['DisplayTemplateData']['CompatibleManagedProperties']=[];

ms_outHtml.push('',''
,''
);
      var listData = ctx.ListData;
      var hasControl = true;
      if($isNull(ctx.RefinementControl) || $isNull(ctx.ClientControl)) hasControl = false;
      var hasNoListData = ($isEmptyArray(listData));

      if(hasControl)
      { 
        if(hasNoListData)
        {
ms_outHtml.push(''
,'          <div id="EmptyContainer">'
,'             ', $htmlEncode(Srch.U.loadResource('refconf_NoSampleValues')) ,''
,'          </div>'
);
        }
        else
        {
ms_outHtml.push(''
,'          <div id="Container">'
);
            for (var i = 0; i < listData.length; i++)
            {
              var filter = listData[i];
              var refinementName = filter.RefinementName;
              var refinementCount = filter.RefinementCount;
ms_outHtml.push('          '
,'              <div name="Item">         '
,'                    <div id="RefinementName" class="ms-ref-name ms-displayInlineBlock ms-ref-ellipsis ms-srch-refpreview-name" title="', $htmlEncode(String.format(Srch.U.loadResource("rf_RefineBy"), refinementName)) ,'">'
,'                    ', $htmlEncode(refinementName) ,''
,'                    </div>'
);
                  if (!$isNull(refinementCount))
                  {
ms_outHtml.push('          '
,'                    <div class="ms-ref-count ms-textSmall">'
,'                      (', $htmlEncode(refinementCount) ,')'
,'                    </div>'
);
                  }
ms_outHtml.push('          '
,'              </div>'
);
            };
        }
      }
ms_outHtml.push(''
,'        </div>'
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_70a79b3d1f8140a194589255dc1a7586() {ULS4Zs:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Filter_RefinementPreview", DisplayTemplate_70a79b3d1f8140a194589255dc1a7586);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fFilter_RefinementPreview.js", DisplayTemplate_70a79b3d1f8140a194589255dc1a7586);
}

}
RegisterTemplate_70a79b3d1f8140a194589255dc1a7586();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fFilter_RefinementPreview.js"), RegisterTemplate_70a79b3d1f8140a194589255dc1a7586);
}
