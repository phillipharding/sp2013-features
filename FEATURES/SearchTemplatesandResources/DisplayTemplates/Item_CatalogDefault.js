function ULS6KL(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_CatalogDefault.js";return o;}
function DisplayTemplate_60c04b5d0b1e416db2713439993ad68f(ctx) {ULS6KL:;
  var p=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_60c04b5d0b1e416db2713439993ad68f.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogDefault.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  ctx['DisplayTemplateData']['TemplateHidden']='1';
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Text':['Title']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULS6KL:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

p.push('     <div class="cbs-Item"> ');
      var dataField = $getItemValue(ctx, "Text");  if (!$isNull(dataField))      {        var data = dataField.getRenderedValue();       if (!$isNull(data))       {   
p.push('         <div class="article-content">',
  data ,
'</div> ');
         }       else       {   
p.push('         <div class="article-content">No data</div> ');
         }     }   
p.push('     </div>   ');

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return p.join('');
}
function RegisterTemplate_60c04b5d0b1e416db2713439993ad68f() {ULS6KL:;
if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_CatalogDefault", DisplayTemplate_60c04b5d0b1e416db2713439993ad68f);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogDefault.js", DisplayTemplate_60c04b5d0b1e416db2713439993ad68f);
}
}
RegisterTemplate_60c04b5d0b1e416db2713439993ad68f();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogDefault.js"), RegisterTemplate_60c04b5d0b1e416db2713439993ad68f);
}
