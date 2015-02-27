function ULSqag(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Site_HoverPanel.js";return o;}
function DisplayTemplate_0cd6a0389ca340d58e1d5de83d49f792(ctx) {ULSqag:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_0cd6a0389ca340d58e1d5de83d49f792.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Site_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchHoverPanel'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Path':['Path'], 'SiteLogo':['SiteLogo'], 'SiteDescription':['SiteDescription'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'deeplinks':['deeplinks'], 'importance':['importance'], 'FileType':['FileType']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSqag:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
		var i = 0;
		var id = ctx.CurrentItem.csr_id;
        var loadSiteFrame = false;        
        ctx.CurrentItem.csr_ShowFollowLink = true;
        ctx.CurrentItem.csr_IsSite = true;
        ctx.CurrentItem.csr_ShowViewLibrary = false;
        ctx.CurrentItem.csr_ShowLastModifiedTime = false;
        ctx.CurrentItem.csr_ShowAuthors = false;
ms_outHtml.push(''
,'		<div class="ms-srch-hover-innerContainer ms-srch-hover-standardSize" id="', $htmlEncode(id + HP.ids.inner) ,'">'
,'			<div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder) ,'"></div>'
,'			<div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow) ,'"></div>'
,'			<div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content) ,'" data-displaytemplate="SiteHoverPanel">'
,'                <div id="', $htmlEncode(id + HP.ids.header) ,'" class="ms-srch-hover-header">'
,'					', ctx.RenderHeader(ctx) ,''
,'				</div>'
,'                <div id="', $htmlEncode(id + HP.ids.body) ,'" class="ms-srch-hover-body">'
);
                    if(!Srch.U.w(ctx.CurrentItem.csr_Path) && Srch.U.isSameHost(ctx.CurrentItem.csr_Path, Srch.U.getHostName())) {
                        ctx.CurrentItem.csr_DataShown = true;
                        loadSiteFrame = true;
                        var idViewerEncoded = $htmlEncode(id + HP.ids.viewer);
                        var idGlassViewerEncoded = "glass_" + idViewerEncoded;
ms_outHtml.push('				    '
,'                        <div class="ms-srch-hover-viewerContainer ms-srch-hover-siteViewerContainer">'
,'                            <div id="', idGlassViewerEncoded ,'" class="ms-srch-hover-glass-siteViewer"></div>'
,'                            <iframe id="',idViewerEncoded,'" src="', $urlHtmlEncode(ctx.CurrentItem.csr_Path) ,'" scrolling="no" frameborder="0px" class="ms-srch-hover-siteViewer">'
,'                            </iframe>                            '
,'                        </div>                      '
);                      
                    }
                    if(!loadSiteFrame && !Srch.U.n(ctx.CurrentItem.SiteLogo) && !Srch.U.isDefaultSiteLogo(ctx.CurrentItem.SiteLogo)){
                        ctx.CurrentItem.csr_DataShown = true;
ms_outHtml.push('					'
,'                        <div class="ms-srch-hover-imageContainer">'
,'                            <img id="', $htmlEncode(id + HP.ids.siteLogo) ,'" alt="', $htmlEncode(Srch.Res.hp_Alt_SiteLogo) ,'" src="', $urlHtmlEncode(ctx.CurrentItem.SiteLogo) ,'" onload="this.style.display=\'block\';" />'
,'                        </div>'
);						
                    }
                    if (!Srch.U.w(ctx.CurrentItem.SiteDescription)) {
                        ctx.CurrentItem.csr_DataShown = true;
ms_outHtml.push('				'
,'                        <div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode(Srch.Res.hp_SiteDescription) ,'</h3></div>'
,'                        <span class="ms-srch-hover-text" id="', $htmlEncode(id + HP.ids.siteDescription) ,'" title="', $htmlEncode(ctx.CurrentItem.SiteDescription) ,'">'
,'                            ', $htmlEncode(Srch.U.truncateEnd(ctx.CurrentItem.SiteDescription, 150)) ,''
,'                        </span>'
);						
                    }
                    if(!Srch.U.w(ctx.CurrentItem.csr_Path)) {
                        var siteResultsId = id + "_siteSearchResults";
                        AddPostRenderCallback(ctx, function()
                        {ULSqag:;
                            var query = "";
                            var dataProvider = ctx.ClientControl.get_dataProvider();
                            if (dataProvider) {
                                var states = dataProvider.get_currentQueryState()
                                if (states) {
                                    query = states.k;
                                }
                            }

                            Srch.SiteSearchUtil.populateSiteSearchResults(ctx.CurrentItem.csr_Path, siteResultsId, query, id + HP.ids.noData);
                        });  
ms_outHtml.push('			    '
,'                        <div id="', $htmlEncode(siteResultsId) ,'">'
,'                        </div>'
);						
                    }
ms_outHtml.push(''
,'                    ', ctx.RenderBody(ctx) ,' '
,'                </div>			'
,'				<div id="', $htmlEncode(id + HP.ids.actions) ,'" class="ms-srch-hover-actions">                  '
,'					', ctx.RenderFooter(ctx) ,''
,'				</div>'
,'			</div>'
);			
			if(loadSiteFrame){
				AddPostRenderCallback(ctx, function(){ULSqag:;
					HP.loadSiteViewer(ctx.CurrentItem.id, ctx.CurrentItem.id + HP.ids.inner, id + HP.ids.viewer, ctx.CurrentItem.csr_Path, "glass_" + id + HP.ids.viewer);
				});
			}
ms_outHtml.push(''
,'		</div>'
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_0cd6a0389ca340d58e1d5de83d49f792() {ULSqag:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Site_HoverPanel", DisplayTemplate_0cd6a0389ca340d58e1d5de83d49f792);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Site_HoverPanel.js", DisplayTemplate_0cd6a0389ca340d58e1d5de83d49f792);
}

}
RegisterTemplate_0cd6a0389ca340d58e1d5de83d49f792();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Site_HoverPanel.js"), RegisterTemplate_0cd6a0389ca340d58e1d5de83d49f792);
}
