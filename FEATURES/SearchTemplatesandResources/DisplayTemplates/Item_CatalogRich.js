function ULSHlX(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_CatalogRich.js";return o;}
function DisplayTemplate_dcde64fb7c704b709eedb47890de96cf(ctx) {ULSHlX:;
  var p=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_dcde64fb7c704b709eedb47890de96cf.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogRich.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  ctx['DisplayTemplateData']['TemplateHidden']='1';
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Rich Data':['owsrNTEHTMLPublishingPageContent']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSHlX:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

p.push('         <div class="cbs-Item"> ');
var dataField = $getItemValue(ctx, "Rich Data"); if (!$isNull(dataField))              {                  var data = dataField.value;                 if (!$isNull(data))                 {  
p.push('                     <div class="article-content">',
  data ,
'</div> ');
                  }                 else                 {  
p.push('                     <div class="article-content">No data</div> ');
                  }             }  
p.push('         </div>     ');

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return p.join('');
}
function RegisterTemplate_dcde64fb7c704b709eedb47890de96cf() {ULSHlX:;
if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_CatalogRich", DisplayTemplate_dcde64fb7c704b709eedb47890de96cf);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogRich.js", DisplayTemplate_dcde64fb7c704b709eedb47890de96cf);
}
}
RegisterTemplate_dcde64fb7c704b709eedb47890de96cf();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogRich.js"), RegisterTemplate_dcde64fb7c704b709eedb47890de96cf);
}
