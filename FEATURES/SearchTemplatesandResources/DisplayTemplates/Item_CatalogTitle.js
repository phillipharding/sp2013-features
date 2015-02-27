function ULS8ul(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_CatalogTitle.js";return o;}
function DisplayTemplate_ae3e1fc730f648f8bfc20b6b8aa5596a(ctx) {ULS8ul:;
  var p=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_ae3e1fc730f648f8bfc20b6b8aa5596a.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogTitle.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  ctx['DisplayTemplateData']['TemplateHidden']='1';
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Page Title':['Title']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULS8ul:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

p.push('  ');
   var pageTitle = $getItemValue(ctx, "Page Title");   if (pageTitle.isEmpty) {     pageTitle = $getItemValue(ctx, "Title"); }  if(!(pageTitle.isEmpty)) {     document.title = pageTitle.toString();  }  
p.push('      ');

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return p.join('');
}
function RegisterTemplate_ae3e1fc730f648f8bfc20b6b8aa5596a() {ULS8ul:;
if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_CatalogTitle", DisplayTemplate_ae3e1fc730f648f8bfc20b6b8aa5596a);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogTitle.js", DisplayTemplate_ae3e1fc730f648f8bfc20b6b8aa5596a);
}
}
RegisterTemplate_ae3e1fc730f648f8bfc20b6b8aa5596a();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogTitle.js"), RegisterTemplate_ae3e1fc730f648f8bfc20b6b8aa5596a);
}
