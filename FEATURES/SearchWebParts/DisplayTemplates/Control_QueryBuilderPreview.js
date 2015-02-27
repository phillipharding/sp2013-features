function ULSivY(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Control_QBPreview.js";return o;}
function DisplayTemplate_e4f84990075b43d88fcb5f7e42d87c85(ctx) {ULSivY:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_e4f84990075b43d88fcb5f7e42d87c85.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fControl_QBPreview.js';
  ctx['DisplayTemplateData']['TemplateType']='Control';
  ctx['DisplayTemplateData']['TargetControlType']=[];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

ms_outHtml.push('',''
);
    window.swapImage = function swapImage(element)
    {ULSivY:;
        if (element.src.endsWith('images/PLUS.GIF'))
        {
            element.src = "images/MINUS.GIF";
        }
        else 
        {
            element.src = "images/PLUS.GIF";
        }
     }

     window.showOrHide = function showOrHide(element)
     {ULSivY:;
        if (element.style.display === 'none')
        {
            element.style.display = 'block';
        }
        else 
        {
            element.style.display = 'none';
        }
     }
     ctx.ListDataJSONGroupsKey = 'ResultTables';
ms_outHtml.push(''
,'            ', ctx.RenderGroups(ctx) ,''
);
     if (ctx.ClientControl.get_shouldShowNoResultMessage()) 
     {
ms_outHtml.push(''
,'         ', $htmlEncode(Srch.Res.searchResult_NoResult) ,''
);
     }
ms_outHtml.push(''
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_e4f84990075b43d88fcb5f7e42d87c85() {ULSivY:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Control_QueryBuilderPreview", DisplayTemplate_e4f84990075b43d88fcb5f7e42d87c85);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_QueryBuilderPreview.js", DisplayTemplate_e4f84990075b43d88fcb5f7e42d87c85);
}

}
RegisterTemplate_e4f84990075b43d88fcb5f7e42d87c85();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fControl_QueryBuilderPreview.js"), RegisterTemplate_e4f84990075b43d88fcb5f7e42d87c85);
}
