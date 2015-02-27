function ULS89G(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Control_Recommendations.js";return o;}
function DisplayTemplate_37d79321ef1348bdbf5df74e403ff0a1(ctx) {ULS89G:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_37d79321ef1348bdbf5df74e403ff0a1.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_Recommendations.js';
  ctx['DisplayTemplateData']['TemplateType']='Control';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

ms_outHtml.push('',''
); 
	if (!$isNull(ctx.ClientControl) &&
            !$isNull(ctx.ClientControl.shouldRenderControl) &&
            !ctx.ClientControl.shouldRenderControl())
        {
            return "";
        }

        ctx.ListDataJSONGroupsKey = "ResultTables";

ms_outHtml.push(''
,'		<div class="ms-textLarge">', $resource('recs_ControlTitle') ,'</div>'
,'        <div class="sch-Result ms-recommendations-core">'
,'            ', ctx.RenderGroups(ctx) ,''
); 
            if (ctx.ClientControl.get_shouldShowNoResultMessage())
            {
               return "";
            }

            if(window.RIExecuteQueueLogToEventStore)
            {
            	window.RIExecuteQueueLogToEventStore();
            }
ms_outHtml.push(''
,'        </div>'
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_37d79321ef1348bdbf5df74e403ff0a1() {ULS89G:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Control_Recommendations", DisplayTemplate_37d79321ef1348bdbf5df74e403ff0a1);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_Recommendations.js", DisplayTemplate_37d79321ef1348bdbf5df74e403ff0a1);
}

}
RegisterTemplate_37d79321ef1348bdbf5df74e403ff0a1();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_Recommendations.js"), RegisterTemplate_37d79321ef1348bdbf5df74e403ff0a1);
}
