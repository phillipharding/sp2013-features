function ULS83p(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_CatalogDateTime.js";return o;}
function DisplayTemplate_246de00db6d448d4805999598b874bc2(ctx) {ULS83p:;
  var p=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_246de00db6d448d4805999598b874bc2.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogDateTime.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  ctx['DisplayTemplateData']['TemplateHidden']='1';
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Date':['Write']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULS83p:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

p.push('     <div class="cbs-Item"> ');
          var dataField = $getItemValue(ctx, "Date");  
          if (!dataField.isEmpty) {
p.push('             <div class="article-content">',
  dataField ,
'</div> ');
            }           else           {   
p.push('             <div class="article-content">No data</div> ');
                     }  
p.push('     </div>   ');

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return p.join('');
}
function RegisterTemplate_246de00db6d448d4805999598b874bc2() {ULS83p:;
if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_CatalogDateTime", DisplayTemplate_246de00db6d448d4805999598b874bc2);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogDateTime.js", DisplayTemplate_246de00db6d448d4805999598b874bc2);
}
}
RegisterTemplate_246de00db6d448d4805999598b874bc2();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogDateTime.js"), RegisterTemplate_246de00db6d448d4805999598b874bc2);
}
