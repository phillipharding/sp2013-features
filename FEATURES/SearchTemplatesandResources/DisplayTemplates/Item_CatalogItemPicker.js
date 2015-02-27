function ULSKTG(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_CatalogItemPicker.js";return o;}
function DisplayTemplate_9a9685c6d7c048f08e663d24c431830a(ctx) {ULSKTG:;
  var p=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_9a9685c6d7c048f08e663d24c431830a.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogItemPicker.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  ctx['DisplayTemplateData']['TemplateHidden']='1';
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Title':['Title'], 'Author':['Author'], 'Size':['Size'], 'Path':['Path'], 'Description':['Description'], 'LastModifiedTime':['LastModifiedTime'], 'CollapsingStatus':['CollapsingStatus'], 'DocId':['DocId'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'FileExtension':['FileExtension'], 'DocumentSummarySize':['DocumentSummarySize'], 'ViewsLifeTime':['ViewsLifeTime'], 'ParentLink':['ParentLink']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSKTG:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

p.push(' ');
          if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl))         {             var id = ctx.ClientControl.get_nextUniqueId();             $setResultItem(id, ctx.CurrentItem);             var urlChars = Srch.U.pathTruncationLength;             var titleChars = Srch.U.titleTruncationLength;             var title = $htmlEncode(ctx.CurrentItem.Title);             var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/System/Item_CatalogItemPicker_HoverPanel.js";             var hover_id = id + "_hover";     var header_id = id + "_header";    var footer_id = id + "_footer";    var templateDiv_id = id + "_templateDiv";         }  
p.push('         <div id="',
  $htmlEncode(id) ,
'" data-displaytemplate="Item_CatalogItemPicker" class="ms-srch-item" onclick="Search.Configuration.CatalogItemPicker.setCatalogItemPath(\'',
  $scriptEncode(ctx.CurrentItem.Path) ,
'\')" onmouseover="EnsureScriptParams(\'SearchUI.js\', \'HP.Init\', event, \'',
  $scriptEncode(id) ,
'\', \'',
  $scriptEncode(hover_id) ,
'\', \'',
  $scriptEncode(hoverUrl),
'\');" onmouseout="EnsureScriptParams(\'SearchUI.js\', \'HP.Hide\');">           <div id="',
  hover_id ,
'" class="ms-srch-hover-outerContainer"></div>             <div id="',
  templateDiv_id ,
'">               <div class="cbs-Detail" id="',
  header_id ,
'">                 <a title="',
  $htmlEncode(Srch.Res.pkr_CatalogPickerSelectLinkToolTip) ,
'" href="javascript:{}" onclick="Search.Configuration.CatalogItemPicker.setCatalogItemPath(\'',
  $scriptEncode(ctx.CurrentItem.Path) ,
'\')" style="cursor:pointer">',
  Srch.U.getTrimmedProcessedHHXMLString(title, titleChars) ,
'</a>               </div>                            <div id="',
  footer_id ,
'">                  ',
  $htmlEncode(Srch.U.truncateUrl(ctx.CurrentItem.Path, urlChars)) ,
'                </div>             </div>         </div>     ');

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return p.join('');
}
function RegisterTemplate_9a9685c6d7c048f08e663d24c431830a() {ULSKTG:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_CatalogItemPicker", DisplayTemplate_9a9685c6d7c048f08e663d24c431830a);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogItemPicker.js", DisplayTemplate_9a9685c6d7c048f08e663d24c431830a);
}

}
RegisterTemplate_9a9685c6d7c048f08e663d24c431830a();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_CatalogItemPicker.js"), RegisterTemplate_9a9685c6d7c048f08e663d24c431830a);
}

