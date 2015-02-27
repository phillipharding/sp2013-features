function ULSeDp(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Control_CatalogDefault.js";return o;}
function DisplayTemplate_4eecdda9202a421ea48f28cc85a377c0(ctx) {ULSeDp:;
  var p=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_4eecdda9202a421ea48f28cc85a377c0.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_CatalogDefault.js';
  ctx['DisplayTemplateData']['TemplateType']='Control';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  ctx['DisplayTemplateData']['TemplateHidden']='1';
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

p.push('                 ');
     ctx.ListDataJSONGroupsKey = "ResultTables";    
p.push('         ',
  ctx.RenderGroups(ctx) ,
'     ');

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return p.join('');
}
function RegisterTemplate_4eecdda9202a421ea48f28cc85a377c0() {ULSeDp:;
if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Control_CatalogDefault", DisplayTemplate_4eecdda9202a421ea48f28cc85a377c0);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_CatalogDefault.js", DisplayTemplate_4eecdda9202a421ea48f28cc85a377c0);
}
}
RegisterTemplate_4eecdda9202a421ea48f28cc85a377c0();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_CatalogDefault.js"), RegisterTemplate_4eecdda9202a421ea48f28cc85a377c0);
}
