function ULSAVl(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Group_QBPreview.js";return o;}
function DisplayTemplate_56098bf9fc8847f09571874698b10de2(ctx) {ULSAVl:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_56098bf9fc8847f09571874698b10de2.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fGroup_QBPreview.js';
  ctx['DisplayTemplateData']['TemplateType']='Group';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

ms_outHtml.push('',''
);
    if(ctx.CurrentGroup.TableType != 'RefinementResults')
    {
        if (!window.queryBuilderGroupCounter)
        {
            window.queryBuilderGroupCounter = 1;
        }

        ctx.ClientControl.set_renderedResult(true);
        var groupId = "queryBuilderGroup_" + window.queryBuilderGroupCounter;
        window.queryBuilderGroupCounter = window.queryBuilderGroupCounter + 1;
        var minusImage = "MINUS.GIF";
        var imageId = groupId + "_image";

        var groupName = ctx.CurrentGroup.TableType;
        if(ctx.CurrentGroup.TableType === 'RelevantResults' && !$isNull(ctx.CurrentGroup.ResultTitle))
        {
            groupName = ctx.CurrentGroup.ResultTitle;
        }

ms_outHtml.push('   '
,'        <h3 onclick="window.swapImage(document.getElementById(\'', $scriptEncode(imageId) ,'\')); window.showOrHide(document.getElementById(\'', $scriptEncode(groupId) ,'\'))" class="ms-accentText">'
,'            <span>'
,'                <img id="',$htmlEncode(imageId),'" alt="', $htmlEncode(Srch.Res.rs_Hide_Results) ,'" src="', $urlHtmlEncode(SP.Utilities.VersionUtility.getImageUrl(minusImage)) ,'" />'
,'            </span>'
,'            <span>'
,'                ', $htmlEncode(groupName) ,''
,'            </span>'
,'            <span class="ms-unicodeBidiEmbed">'
,'                (', $htmlEncode(ctx.CurrentGroup.TotalRows) ,')'
,'            </span>'
,'        </h3>'
,'        <div id="',groupId,'">'
);
           ctx.ListDataJSONItemsKey = "ResultRows";
ms_outHtml.push('     '
,'            ', ctx.RenderItems(ctx) ,''
,'        </div> '
);
    }
ms_outHtml.push('                                       '
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_56098bf9fc8847f09571874698b10de2() {ULSAVl:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Group_QueryBuilderPreview", DisplayTemplate_56098bf9fc8847f09571874698b10de2);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fGroup_QueryBuilderPreview.js", DisplayTemplate_56098bf9fc8847f09571874698b10de2);
}

}
RegisterTemplate_56098bf9fc8847f09571874698b10de2();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fGroup_QueryBuilderPreview.js"), RegisterTemplate_56098bf9fc8847f09571874698b10de2);
}
