function ULSSHg(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_WebPage_HoverPanel.js";return o;}
function DisplayTemplate_ddfe749954034e109b89429092f7bd35(ctx) {ULSSHg:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_ddfe749954034e109b89429092f7bd35.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_WebPage_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchHoverPanel'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Path':['Path'], 'Description':['Description'], 'EditorOWSUSER':['EditorOWSUSER'], 'LastModifiedTime':['LastModifiedTime'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'ViewsLifeTime':['ViewsLifeTime'], 'ParentLink':['ParentLink'], 'FileType':['FileType'], 'IsContainer':['IsContainer'], 'SecondaryFileExtension':['SecondaryFileExtension'], 'DisplayAuthor':['DisplayAuthor']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSSHg:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
		var i = 0;
		var id = ctx.CurrentItem.csr_id;
        var loadSiteFrame = false;
        ctx.CurrentItem.csr_ShowFollowLink = true;
        ctx.CurrentItem.csr_ShowViewLibrary = false;
        ctx.CurrentItem.csr_ShowLastModifiedTime = false;
        ctx.CurrentItem.csr_ShowAuthors = false;
ms_outHtml.push(''
,'		<div class="ms-srch-hover-innerContainer ms-srch-hover-standardSize" id="', $htmlEncode(id + HP.ids.inner) ,'">'
,'			<div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder) ,'"></div>'
,'			<div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow) ,'"></div>'
,'			<div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content) ,'" data-displaytemplate="WebPageHoverPanel">'
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
,'                        </div>'
);	                                               
                    }

                    var path = !Srch.U.w(ctx.CurrentItem.ParentLink) ? ctx.CurrentItem.ParentLink : ctx.CurrentItem.SiteName;
                    if(!Srch.U.w(path))
                    {                         
                        var siteResultsId = id + "_siteSearchResults";
ms_outHtml.push(''
,'                        <div id="', $htmlEncode(siteResultsId) ,'">'
,'                        </div>'
);
                        AddPostRenderCallback(ctx, function()
                        {ULSSHg:;
                            var query = "";
                            var dataProvider = ctx.ClientControl.get_dataProvider();
                            if (dataProvider) {
	                            var states = dataProvider.get_currentQueryState()
	                            if (states) {
		                            query = states.k;
	                            }
                            }

                            Srch.SiteSearchUtil.populateSiteSearchResults(path, siteResultsId, query, id + HP.ids.noData);
                        });
                    } 
ms_outHtml.push('	'
,'                    ', ctx.RenderBody(ctx) ,'					'
,'                </div>			'
,'				<div id="', $htmlEncode(id + HP.ids.actions) ,'" class="ms-srch-hover-actions">                  '
,'					', ctx.RenderFooter(ctx) ,''
,'				</div>'
,'			</div>'
);			
			if(loadSiteFrame){
				AddPostRenderCallback(ctx, function(){ULSSHg:;
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
function RegisterTemplate_ddfe749954034e109b89429092f7bd35() {ULSSHg:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_WebPage_HoverPanel", DisplayTemplate_ddfe749954034e109b89429092f7bd35);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_WebPage_HoverPanel.js", DisplayTemplate_ddfe749954034e109b89429092f7bd35);
}

}
RegisterTemplate_ddfe749954034e109b89429092f7bd35();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_WebPage_HoverPanel.js"), RegisterTemplate_ddfe749954034e109b89429092f7bd35);
}
