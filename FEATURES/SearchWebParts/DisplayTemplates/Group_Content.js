function ULS7O6(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Group_Content.js";return o;}
function DisplayTemplate_127deb535b0142c7963878294f00c801(ctx) {ULS7O6:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_127deb535b0142c7963878294f00c801.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fGroup_Content.js';
  ctx['DisplayTemplateData']['TemplateType']='Group';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

ms_outHtml.push('',''
);
if(!$isNull(ctx.ClientControl) && ctx.ClientControl.shouldShowTable(ctx.CurrentGroup))
{
    ctx.ListDataJSONItemsKey = "ResultRows";
ms_outHtml.push(''
,'    ', ctx.RenderItems(ctx) ,''
);
}
ms_outHtml.push(''
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_127deb535b0142c7963878294f00c801() {ULS7O6:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Group_Content", DisplayTemplate_127deb535b0142c7963878294f00c801);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fGroup_Content.js", DisplayTemplate_127deb535b0142c7963878294f00c801);
}

}
RegisterTemplate_127deb535b0142c7963878294f00c801();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fContent Web Parts\u002fGroup_Content.js"), RegisterTemplate_127deb535b0142c7963878294f00c801);
}
