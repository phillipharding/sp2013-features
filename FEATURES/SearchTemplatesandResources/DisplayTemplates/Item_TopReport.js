function ULSmdo(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_TopReport.js";return o;}
function DisplayTemplate_825e8a60caef4ee19014a580b02d700e(ctx) {ULSmdo:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_825e8a60caef4ee19014a580b02d700e.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_TopReport.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Image Url':['PictureThumbnailURL', 'PictureURL'], 'Title':null, 'Path':null, 'Description':null, 'FileExtension':null, 'ListItemID':null, 'ListID':null, 'HitHighlightedSummary':null, 'HitHighlightedProperties':null};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSmdo:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
,''
);
		if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl)){
			var id = ctx.ClientControl.get_nextUniqueId();
			$setResultItem(id, ctx.CurrentItem);

			var summaryChars = Srch.U.summaryTruncationLength;
			var pathChars = Srch.U.pathTruncationLength;
			var titleChars = Srch.U.titleTruncationLength;
			var titleTerms = 2;

			var imageURL = $getItemValue(ctx, "Image Url");
			imageURL.overrideValueRenderer($imgSrcUrl);

			var hasImage = !imageURL.isEmpty;
			var bodyClass = "";
			var iconURL = "";
			if(hasImage)
			{
				summaryChars = Srch.U.summaryTruncationLengthWithPreview;
				pathChars = Srch.U.pathTruncationLengthWithPreview;
				titleChars = Srch.U.titleTruncationLengthWithPreview;
				titleTerms = 1;
				bodyClass = "ms-srch-item-body tprprt-body-preview";
			}
			else
			{
				iconURL = $urlHtmlEncode(Srch.U.getIconUrlByFileExtension(ctx.CurrentItem));
				bodyClass = "ms-srch-item-body";
			}

			var title = Srch.U.getHighlightedProperty(id, ctx.CurrentItem, "Title");
			if($isEmptyString(title))
			{
				title = $htmlEncode($getItemValue(ctx, "Title").value);
			}
			title = Srch.U.trimTitle(title, titleChars, titleTerms);

			var desc;
			if(!Srch.U.e(ctx.CurrentItem.HitHighlightedSummary))
			{
                                desc = Srch.U.processHHXML(ctx.CurrentItem.HitHighlightedSummary);    
                                desc = Srch.U.getTrimmedProcessedHHXMLString(desc, summaryChars);
			}
			else
			{
				desc = Srch.U.getTrimmedProcessedHHXMLString($htmlEncode($getItemValue(ctx, "Description").value), summaryChars);
			}

			var displayPath = Srch.U.getHighlightedProperty(id, ctx.CurrentItem, "Path");
			if($isEmptyString(displayPath))
			{
				displayPath = $htmlEncode(ctx.CurrentItem.Path);
			}
			displayPath = Srch.U.truncateHighlightedUrl(displayPath, pathChars);

			var path = $getItemValue(ctx, "Path");
			path.overrideValueRenderer($urlHtmlEncode);

			var listID = $getItemValue(ctx, "ListID");
			var listItemID = $getItemValue(ctx, "ListItemID");

			var excellink = "";
			if(!listID.isEmpty && !listItemID.isEmpty)
			{
				excellink = Srch.U.replaceUrlTokens("~site/_layouts/15/reporting.aspx?Category=Analytics&List=" + listID.toString() + "&ID=" + listItemID.toString());
				if(!Srch.U.e(ctx.CurrentItem.Path))
				{
					excellink = excellink + "&ItemUrl=" + $urlKeyValueEncode(ctx.CurrentItem.Path);
				}
			}

			var recentCount = null;
			var lifetimeCount = null;
			if(typeof trSelectedPropertyRecent != "undefined")
			{
				recentCount = $getItemValue(ctx, trSelectedPropertyRecent);
			}
			else
			{
				recentCount = $getItemValue(ctx, "ViewsRecent");
			}
			if(typeof trSelectedPropertyLifetime != "undefined")
			{
				lifetimeCount = $getItemValue(ctx, trSelectedPropertyLifetime);
			}
			else
			{
				lifetimeCount = $getItemValue(ctx, "ViewsLifeTime");
			}

			recentCount = new Number(recentCount.value);
			recentCount = recentCount.localeFormat("N0");
			lifetimeCount = new Number(lifetimeCount.value);
			lifetimeCount = lifetimeCount.localeFormat("N0");
ms_outHtml.push('	'
,'		<tr class="ms-srch-item" style="cursor: default">'
,'			<td class="tprprt-cell">'
,'			<div id="tprprt-item-container">'
);
			if (hasImage)
			{
ms_outHtml.push(''
,'				<div class="tprprt-preview" id="Preview">'
,'					<a href="', path ,'">'
,'					<img alt="', $htmlEncode($resource('item_Alt_Preview')) ,'" onload="this.style.display=\'inline\';" src="', imageURL ,'" /></a>'
,'				</div>'
);
			}
ms_outHtml.push(''
,'				<div id="Main" class="', bodyClass ,'">'
,'					<div class="ms-srch-item-title">'
);
			if(!hasImage)
			{
ms_outHtml.push(''
,'						<img id="Icon" class="ms-srch-item-icon" src="', iconURL ,'" />'
);
			}
ms_outHtml.push(''
,'						<h3><a class="ms-srch-item-link" href="', path ,'">', title ,'</a></h3>'
,'					</div>                    '
,'					<div id="Summary" class="ms-srch-item-summary">'
,'						', desc ,''
,'					</div>'
,'					<div id="Footer">'
,'                        <div tabindex="0" title="', path ,'" class="ms-srch-item-path" onblur="Srch.U.restorePath(this, \'', $scriptEncode(displayPath) ,'\', \'', $scriptEncode(ctx.CurrentItem.Path) ,'\')" onclick="Srch.U.selectPath(\'', $scriptEncode(ctx.CurrentItem.Path) ,'\', this)">'
,'						    ', displayPath ,''
,'					    </div>						'
);
			if(!Srch.U.e(excellink))
			{      
ms_outHtml.push(''
,'						<div id="ReportLinkDiv">'
,'							<a id="ReportLink" href="', $urlHtmlEncode(excellink) ,'">', $htmlEncode($resource('tprprt_excel_report_entrypoint')) ,'</a>'
,'						</div>'
);
			}
ms_outHtml.push(''
,'					</div>'
,'				</div>'
,'			</div>'
,'			</td>'
,'			<td class="ms-verticalAlignTop ms-vb2 tprprt-number-cell">'
,'			', recentCount ,''
,'			</td>'
,'			<td class="ms-verticalAlignTop ms-vb2 ms-vb-lastCell tprprt-number-cell">'
,'			', lifetimeCount ,''
,'			</td>'
,'		</tr>'
);
		}
ms_outHtml.push(''
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_825e8a60caef4ee19014a580b02d700e() {ULSmdo:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_TopReport", DisplayTemplate_825e8a60caef4ee19014a580b02d700e);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_TopReport.js", DisplayTemplate_825e8a60caef4ee19014a580b02d700e);
}

}
RegisterTemplate_825e8a60caef4ee19014a580b02d700e();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_TopReport.js"), RegisterTemplate_825e8a60caef4ee19014a580b02d700e);
}
