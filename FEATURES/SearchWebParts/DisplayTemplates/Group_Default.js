function ULSw5B(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Group_Default.js";return o;}
function DisplayTemplate_5cab78e3153e4abfa41f6f16cfd40f87(ctx) {ULSw5B:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_5cab78e3153e4abfa41f6f16cfd40f87.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fGroup_Default.js';
  ctx['DisplayTemplateData']['TemplateType']='Group';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

ms_outHtml.push('','          '
);
    if(!$isNull(ctx.ClientControl) 
       && ctx.ClientControl.shouldShowTable(ctx.CurrentGroup) 
       && !Srch.U.isTableTypeof(ctx.CurrentGroup, Microsoft.SharePoint.Client.Search.Query.KnownTableTypes.personalFavoriteResults))
    {
        var queryRuleId = ctx.CurrentGroup["QueryRuleId"];
        var markerCSS = ""; 
        if (!Srch.U.isSubstrateTable(ctx.CurrentGroup) && !Srch.U.isTableTypeof(ctx.CurrentGroup, Microsoft.SharePoint.Client.Search.Query.KnownTableTypes.specialTermResults)) 
        { 
            markerCSS = "ms-srch-group-border";            
        }
        var id = ctx.ClientControl.get_nextUniqueId();
        var groupId = id + Srch.U.Ids.group;
        $setResultObject(groupId, ctx.CurrentGroup);

        if (Srch.U.isPageInEditMode()){
            var queryRulesHtml = "<a href='" + $urlHtmlEncode(ctx.ScriptApplicationManager.get_queryRulesUrl()) + "' target='_blank'>" + $htmlEncode(Srch.Res.rs_Edit_QueryRules) + "</a>";
            if(Srch.U.isFirstPromotedBlock(ctx.CurrentGroup)){
ms_outHtml.push('                 '
,'                <div class="ms-trcnoti-base ms-srch-msg ms-srch-msg-border">'
,'                    <div class="ms-srch-msg-section">'
,'                        <h2 class="ms-accentText">', $htmlEncode(Srch.Res.rs_Edit_PromotedTitle) ,'</h2>'
,'                        <div>', String.format($htmlEncode(Srch.Res.rs_Edit_PromotedDescription), queryRulesHtml) ,'</div>'
,'                    </div>'
,'                </div>'
);            
            } else if (Srch.U.isFirstRankedBlock(ctx.CurrentGroup)){
ms_outHtml.push('                 '
,'                <div id="EditMode-CustomizingResults" class="ms-trcnoti-base ms-srch-msg ms-srch-msg-border">'
,'                    <div class="ms-srch-msg-section">'
,'                        <h2 class="ms-accentText">', $htmlEncode(Srch.Res.rs_Edit_RankedTitle) ,'</h2>'
,'                        <div>', String.format($htmlEncode(Srch.Res.rs_Edit_RankedDescription), queryRulesHtml) ,'</div>'
,'                    </div>'
,'                </div>'
); 
            }
        }
ms_outHtml.push('      '
,'        <div id="', $htmlEncode(groupId) ,'" name="Group" class="ms-srch-group ', markerCSS ,'" data-queryruleid="', $htmlEncode(queryRuleId) ,'"> '
,'            <div id="GroupBorderTop"></div>'
);
            var groupTitle = ctx.CurrentGroup["ResultTitle"];
            var groupUrl = (Srch.U.isDefaultSiteSearchPage()) ? null : Srch.U.replaceUrlTokens(ctx.CurrentGroup["ResultTitleUrl"]);
            var totalRows = ctx.CurrentGroup[Srch.U.PropNames.totalRows]; 
            var rowCount = ctx.CurrentGroup[Srch.U.PropNames.rowCount]; 
            var showMore = true;
            var countDisplayString = Srch.Res.rs_ApproximateResultCount;        

            if ((!Srch.U.n(totalRows)) && (!Srch.U.n(rowCount)) && (rowCount >= totalRows)) showMore = false;        
            if (!$isEmptyString(groupTitle))
            { 
ms_outHtml.push(''
,'                <div id="', $htmlEncode(id + Srch.U.Ids.groupTitle) ,'" class="ms-srch-group-title ms-textLarge">'
);
                if (!$isEmptyString(groupUrl))
                {
ms_outHtml.push('                '
,'                    <a clicktype="More" href="', $urlHtmlEncode(groupUrl) ,'">', $htmlEncode(groupTitle) ,'</a>'
);
                }
                else
                {
ms_outHtml.push(''
,'                ', $htmlEncode(groupTitle) ,''
);
                }
ms_outHtml.push(''
,'                </div>'
);
            }

            ctx.ListDataJSONItemsKey = "ResultRows";
ms_outHtml.push('     '
,'            <div id="', $htmlEncode(id + Srch.U.Ids.groupContent) ,'" class="ms-srch-group-content">', ctx.RenderItems(ctx) ,'<div class="ms-srch-group-clear"></div></div>                                        '
,''
);
            if (!$isEmptyString(groupUrl) && showMore)
            {
ms_outHtml.push(''
,'                <div class="ms-srch-group-link ms-commandLink ms-uppercase">'
,'                    <a id="', $htmlEncode(id + Srch.U.Ids.groupLink) ,'" clicktype="More" href="', $urlHtmlEncode(groupUrl) ,'" title="', $htmlEncode(Srch.Res.rf_ShowMoreResults_Tooltip) ,'">'
,'                        ', $htmlEncode(Srch.Res.rf_RefinementLabel_More) ,''
,'                    </a>'
,'                </div>'
,'       		    <div class="ms-srch-group-count ms-metadata">', String.format($htmlEncode(countDisplayString), $htmlEncode(totalRows.localeFormat("N0"))) ,'</div>'
);
            }
ms_outHtml.push(''
,'            <div id="GroupBorderBottom"></div>'
,'        </div>'
);
    }
ms_outHtml.push(''
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_5cab78e3153e4abfa41f6f16cfd40f87() {ULSw5B:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Group_Default", DisplayTemplate_5cab78e3153e4abfa41f6f16cfd40f87);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fGroup_Default.js", DisplayTemplate_5cab78e3153e4abfa41f6f16cfd40f87);
}

}
RegisterTemplate_5cab78e3153e4abfa41f6f16cfd40f87();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fGroup_Default.js"), RegisterTemplate_5cab78e3153e4abfa41f6f16cfd40f87);
}
