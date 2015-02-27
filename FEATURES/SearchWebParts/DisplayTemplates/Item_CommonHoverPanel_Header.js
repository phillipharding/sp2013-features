function ULSieN(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_CommonHoverPanel_Header.js";return o;}
function DisplayTemplate_d7498dfc97164d76aa21df772fec2411(ctx) {ULSieN:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_d7498dfc97164d76aa21df772fec2411.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_CommonHoverPanel_Header.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchHoverPanel'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSieN:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        var id = ctx.CurrentItem.csr_id;
        var fileType = ctx.CurrentItem.csr_FileType;
        if($isEmptyString(fileType)){
            fileType = HP.GetFriendlyNameForFileType(ctx.CurrentItem);
        }
        var showFileIcon = Boolean(ctx.CurrentItem.csr_ShowFileIcon);
		var titleCSSClass = "ms-srch-hover-title ms-dlg-heading ms-srch-ellipsis";
		var maxViews = 10000;
ms_outHtml.push(''
,'        <div>'
,'            <div class="ms-srch-hover-close">'
,'                <a href="javascript:HP.Close()" id="', $htmlEncode(id + HP.ids.close) ,'" title="', $htmlEncode(Srch.Res.hp_Tooltip_Close) ,'">'
,'                    <img class="js-callout-closeButtonImage" src="', $urlHtmlEncode(GetThemedImageUrl('spcommon.png')) ,'" alt="', $htmlEncode(Srch.Res.hp_Tooltip_Close) ,'" />'
,'                </a>'
,'            </div>'
);
            if (showFileIcon) {
ms_outHtml.push(''
,'                <img class="ms-srch-item-icon ms-positionRelative" id="', $htmlEncode(id + Srch.U.Ids.icon) ,'" onload="this.style.display=\'inline\';this.style.bottom=\'-5px\'" src="', $urlHtmlEncode(Srch.U.getIconUrlByFileExtension(ctx.CurrentItem)) ,'" />'
);
            }	
			if(!$isNull(ctx.CurrentItem.ViewsLifeTime)) {
				var formattedViewsLifeTime;

				if (ctx.CurrentItem.ViewsLifeTime > maxViews)	{
					formattedViewsLifeTime = maxViews.localeFormat("N0") + "+";  
				} 
				else {
					formattedViewsLifeTime = ctx.CurrentItem.ViewsLifeTime.localeFormat("N0"); 
				}
				var views = "";
				titleCSSClass = titleCSSClass + " ms-srch-hover-title-extraMarginForViews";
				if (ctx.CurrentItem.ViewsLifeTime === 1) {
					views = Srch.Res.hp_Views_Singular;
				} 
				else {
					views = Srch.Res.hp_Views_Plural;
				}				   
                var tooltipViewsEncoded = $htmlEncode(String.format(Srch.Res.hp_Tooltip_Views, formattedViewsLifeTime));
ms_outHtml.push('			'
,'				<div class="ms-srch-hover-popularity ms-metadata" title="', tooltipViewsEncoded ,' ">		'
,'					<div id="', $htmlEncode(id + HP.ids.viewsLifeTime) ,'"> ', $htmlEncode(formattedViewsLifeTime) ,' </div>'
,'					<div> ', $htmlEncode(views) ,' </div>'
,'				</div>'
);
			}
            if (!Srch.U.e(ctx.CurrentItem.Title)) {
ms_outHtml.push('		'
,'                <div class="', titleCSSClass ,'" id="', $htmlEncode(id + HP.ids.title) ,'" title="', $htmlEncode(ctx.CurrentItem.Title) ,'">'
,'                    ', $htmlEncode(ctx.CurrentItem.Title) ,''
,'                </div>'
);						
            }
ms_outHtml.push('	'
,'        </div>'
,'        <div class="ms-metadata">'
,'            <div class="ms-srch-hover-filetype">'
);
                if (!Srch.U.e(fileType) && $isNull(ctx.CurrentItem.ServerRedirectedEmbedURL)) {
ms_outHtml.push(''
,'                    <span id="', $htmlEncode(id + HP.ids.fileType) ,'">'
,'                        ', $htmlEncode(fileType) + " " ,''
,'                    </span>'
);
                }                
ms_outHtml.push(''
,'            </div>'
,'        </div>'
);

    AddPostRenderCallback(ctx, function(){ULSieN:;
        if (Srch.U.e(ctx.CurrentItem.ServerRedirectedEmbedURL)){
            Srch.U.logClick($get(id), "Hover");
        } else {
            Srch.U.logClick($get(id), "HoverWithWAC");
        }
    });

ms_outHtml.push(''
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_d7498dfc97164d76aa21df772fec2411() {ULSieN:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_CommonHoverPanel_Header", DisplayTemplate_d7498dfc97164d76aa21df772fec2411);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_CommonHoverPanel_Header.js", DisplayTemplate_d7498dfc97164d76aa21df772fec2411);
}

}
RegisterTemplate_d7498dfc97164d76aa21df772fec2411();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_CommonHoverPanel_Header.js"), RegisterTemplate_d7498dfc97164d76aa21df772fec2411);
}
