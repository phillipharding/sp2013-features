function ULSsiC(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Filter_SliderBarGraph.js";return o;}
function DisplayTemplate_434a414e07b14f1fa2904f004cfb8721(ctx) {ULSsiC:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_434a414e07b14f1fa2904f004cfb8721.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_SliderBarGraph.js';
  ctx['DisplayTemplateData']['TemplateType']='Filter';
  ctx['DisplayTemplateData']['TargetControlType']=['Refinement'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['CompatibleSearchDataTypes']=['DateTime', 'Integer', 'Decimal'];
  ctx['DisplayTemplateData']['CompatibleManagedProperties']=[];

ms_outHtml.push('',''
,''
);
      var sliderMin = 0;
      var sliderMax = 6;
      var sliderType = "dateRangeExponential";

      var maxPixelWidth = 160;
      var histogramHeight = 60;

      var hasControl = true;
      if($isNull(ctx.RefinementControl) || $isNull(ctx.ClientControl)) hasControl = false;
      var hasNoListData = ($isEmptyArray(ctx.ListData));

      if(hasControl)
      { 
          var rc = ctx.RefinementControl; rc.MinValue = sliderMin; rc.MaxValue = sliderMax; rc.SliderType = sliderType; 
          var idPrefix = $htmlEncode(rc.containerId);
          var idSliderDeferredLoadContainer = idPrefix + "_SliderLoadContainer";

        if(hasNoListData)
        {
ms_outHtml.push(''
,'          <div id="EmptyContainer"></div>'
);
        }
        else
        {
          var isExpanded = Srch.Refinement.getExpanded(ctx.RefinementControl.propertyName);
          var displayStyle = (isExpanded == "true"? "" : "none");
          var iconClass = (isExpanded == "true"? "ms-ref-uparrow" : "ms-ref-downarrow");
          var refinerCatTitle = Srch.Refinement.getRefinementTitle(rc);
ms_outHtml.push(''
,'          <div id="Container">'
,'                ', Srch.U.collapsibleRefinerTitle(ctx.RefinementControl.propertyName, ctx.ClientControl.get_id(), refinerCatTitle, iconClass) ,''
,''
,'                <div id="', idSliderDeferredLoadContainer ,'">'
,'                </div>'
,''
,'          </div>'
,''
);
          var sliderInitCallback = function() {ULSsiC:;

              var sliderContainerElement = $get(idSliderDeferredLoadContainer);

              if($isNull(sliderContainerElement)) return;

              ctx.BucketedFilterData = AjaxControlToolkit.SliderRefinementControl.GetDefaultBuckets(ctx);

              ctx.FilterLabelMarkup = AjaxControlToolkit.SliderRefinementControl.GetDefaultFilterLabelMarkupAndOptions(
                ctx,
                idPrefix,
                ctx.BucketedFilterData);

              ctx.SliderMarkup = AjaxControlToolkit.SliderRefinementControl.GetDefaultSliderMarkupAndOptions(
                ctx,
                idPrefix,
                sliderMin,
                sliderMax,
                maxPixelWidth,
                ctx.BucketedFilterData);

              ctx.HistogramMarkup = AjaxControlToolkit.SliderRefinementControl.GetDefaultHistogramMarkupAndOptions(
                ctx,
                idPrefix, 
                histogramHeight,
                maxPixelWidth,
                ctx.BucketedFilterData);

              var ms_outSliderHtml = [];
ms_outSliderHtml.push(''
,'                <span class="ms-ref-unselSec" style="display: ', displayStyle ,';">'
,'                    ', ctx.HistogramMarkup ,''
,''
,'                    ', ctx.SliderMarkup ,''
,'                </span>'
,''
,'                ', ctx.FilterLabelMarkup ,''
);
               sliderContainerElement.innerHTML = ms_outSliderHtml.join('');

               AjaxControlToolkit.SliderRefinementControl.OnPostRenderInitSliderForElement(ctx);

               ctx.BucketedFilterData = null;
               ctx.FilterLabelOptions = null;
               ctx.SliderOptions = null;
               ctx.HistogramOptions = null;
               ctx.FilterLabelMarkup = null;
               ctx.SliderMarkup = null;
               ctx.HistogramMarkup = null;
          };

          $addRenderContextCallback(ctx, "OnPostRender", function(){ULSsiC:;
            EnsureScriptFunc('ajaxtoolkit.js', 'AjaxControlToolkit.SliderRefinementControl', sliderInitCallback);
          });
        }
      }
ms_outHtml.push(''
,''
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_434a414e07b14f1fa2904f004cfb8721() {ULSsiC:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("DateExponentialSliderRefinementItem", DisplayTemplate_434a414e07b14f1fa2904f004cfb8721);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_SliderBarGraph.js", DisplayTemplate_434a414e07b14f1fa2904f004cfb8721);
}

}
RegisterTemplate_434a414e07b14f1fa2904f004cfb8721();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_SliderBarGraph.js"), RegisterTemplate_434a414e07b14f1fa2904f004cfb8721);
}
