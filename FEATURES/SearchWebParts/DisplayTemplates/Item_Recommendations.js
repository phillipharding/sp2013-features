function ULS4jI(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Recommendations.js";return o;}
function DisplayTemplate_866973707d70405db63599a828a3f911(ctx) {ULS4jI:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_866973707d70405db63599a828a3f911.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_Recommendations.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULS4jI:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
); 
    if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl)) {

        if(!window.RIPositioningAlgorithm)
        {
            window.RIPositioningAlgorithm = function(c) {ULS4jI:;
                if (!c.isRTL)
                {
                    c.moveDownAndRight();
                }
                else
                {
                    c.moveDownAndLeft();
                }
                if (c.numberOfEdgesCollidingWithBoundingBox() > 0)
                {
                    var defaultCalloutOptions = new CalloutOptions();
                    defaultCalloutOptions.positionAlgorithm.apply(this, arguments);
                }
            };
        }

        if(!window.RILogToEventStore)
        {
            window.RILogToEventStore = function(url, navigate)
            {ULS4jI:;
                SP.SOD.executeFunc("SP.js", "SP.Analytics.AnalyticsUsageEntry.logAnalyticsEvent", function()
                {ULS4jI:; 
                        var clientContext = new SP.ClientContext.get_current();
                        SP.Analytics.AnalyticsUsageEntry.logAnalyticsEvent(clientContext, SP.Analytics.EventTypeId.recommendationClick, url);
                        clientContext.executeQueryAsync(
                        function(){ULS4jI:;
                            if(navigate)
                            {
                                window.location.href = url;
                            }
                        },
                        function() {ULS4jI:;
                            if(navigate)
                            {
                                window.location.href = url;
                            }
                        });
                });          

                if(navigate)
                {
                    return false;
                }
            };
        }

        if(!window.RIQueueLogToEventStore)
        {
            window.RIQueueLogToEventStore = function(url)
            {ULS4jI:;
                if(!window.RILogQueue)
                {
                    window.RILogQueue = [];
                }
                window.RILogQueue[window.RILogQueue.length] = url;
            };
        }

        if(!window.RIExecuteQueueLogToEventStore)
        {
            window.RIExecuteQueueLogToEventStore = function()
            {ULS4jI:;
                var queue = window.RILogQueue;
                window.RILogQueue = null;
                if(queue)
                {
                    SP.SOD.executeFunc("SP.js", "SP.Analytics.AnalyticsUsageEntry.logAnalyticsEvent", function()
                    {ULS4jI:; 
                            var clientContext = new SP.ClientContext.get_current();
                            for(var i = 0; i < queue.length; i++)
                            {
                                SP.Analytics.AnalyticsUsageEntry.logAnalyticsEvent(clientContext,  SP.Analytics.EventTypeId.recommendationView, queue[i]);
                            }
                            clientContext.executeQueryAsync(function(){}, function() {});
                    });  
                }
            };
        }

        if(!window.RIOpenDetailsCallout)
        {
            window.RIOpenDetailsCallout = function(id, title, itemPath, listId, listItemId, calloutWidthDivId, lastEdited, reasonText) {ULS4jI:;
                SP.SOD.executeFunc("SP.js", "SP.Analytics.AnalyticsUsageEntry.logAnalyticsEvent", function()
                {ULS4jI:;
                    var e = $get(id);
                    var callout = CalloutManager.getFromLaunchPointIfExists(e);
                    if (!callout) {
                        var options = new CalloutOptions();
                        options.launchPoint = e;
                        options.ID = id + "_callout";

                        options.boundingBox = document.getElementById("s4-workspace");
                        options.positionAlgorithm = RIPositioningAlgorithm;

                        var calloutWidth = Sys.UI.DomElement.getBounds($get(calloutWidthDivId)).width;

                        options.contentWidth = calloutWidth;
                        options.beakOrientation = "leftRight";

                        var openOptions = new CalloutOpenOptions();
                        openOptions.closeCalloutOnBlur = true;
                        openOptions.event = "none";
                        openOptions.showCloseButton = true;
                        options.openOptions = openOptions;

                        var itemUrlTruncated = Srch.U.truncateUrl(itemPath, Srch.U.pathTruncationLength)

                        var calloutBody = Callout.GenerateDefaultSection($resource('recs_LastEditedBy'), $htmlEncode(lastEdited)) 
                                        + Callout.GenerateDefaultSection(null, $htmlEncode(reasonText))
                                        + Callout.GenerateDefaultSection($resource('recs_Location'), $htmlEncode(itemUrlTruncated));

                        options.title = title;
                        options.content = calloutBody;
                        callout = CalloutManager.createNew(options);

                        var openLinkOptions = new CalloutActionOptions()
                        openLinkOptions.text = $resource('recs_Open');
                        openLinkOptions.onClickCallback = (function (){ULS4jI:;
                            RILogToEventStore(itemPath, true);
                        });
                        callout.addAction(new CalloutAction(openLinkOptions));

                        if (!$isNull(SP) && !$isNull(SP.UI) && !$isNull(SP.UI.RelatedItems) && 
                            !$isNull(SP.UI.RelatedItems.ScriptApplicationManager) && !$isNull(SP.UI.RelatedItems.ScriptApplicationManager.RelatedItemsControl))
                        {
                            var saveLinkOptions = new CalloutActionOptions()
                            saveLinkOptions.text =  $resource('recs_SaveLink');
                            saveLinkOptions.onClickCallback = (function (){ULS4jI:;
                                SP.UI.RelatedItems.ScriptApplicationManager.RelatedItemsControl.AddRelatedItem(listId, listItemId);
                            });
                            callout.addAction(new CalloutAction(saveLinkOptions));
                        }                    
                    }
                    callout.toggle();
                });
            };
        }

        var currentItem = ctx.CurrentItem;
        var IsFillIn = SP.Guid.get_empty().equals(currentItem.QueryRuleId);
        if (IsFillIn == undefined)
        {
            IsFillIn = false;
        }

        var id = ctx.ClientControl.get_nextUniqueId();
        var parentDivId = id + "_ris_add_as_related";
        var titleId = id + "_ris_title";
        var addId = id + "_relateditems_add";
        var addDivId = id + "_relateditems_add_div";
        var calloutId = id + "_relateditems_callout_div";
        var savelinkId = id + "_relateditems_save_link";
        var calloutTextId = id + "_relateditems_callout_text";

        var itemTitle = $getItemValue(ctx, 'Title');
        var itemPath = $getItemValue(ctx, "Path"); 
        var listId = $getItemValue(ctx, "ListID");
        var listItemId = $getItemValue(ctx, "ListItemID");

        var res_ShowDetails = $resource('recs_ShowDetails');
        var res_Recommended = $resource('recs_Recommended');
        var res_Fillin = $resource('recs_Fillin');
        var res_AltIcon = $resource('recs_AltIcon');
        var res_LastEditedBy = $getItemValue(ctx, "Author");
        var calloutButton = GetThemedImageUrl("spcommon.png");

        var calloutWidthDivId = id + "_relateditems_callout_width";      
        var reasonText = res_Fillin;
        if(!IsFillIn)
        {
            reasonText = res_Recommended;
            window.RIQueueLogToEventStore(itemPath.toString());
        }

ms_outHtml.push(''
,'        <div id="', $htmlEncode(parentDivId) ,'" class="ms-recommendations-item">'
,'            <div class="ms-recommendations-icon">'
,'                    <img src="', $urlHtmlEncode(Srch.U.getIconUrlByFileExtension(currentItem)) ,'" alt="', $htmlEncode(res_AltIcon) ,'" />'
,'            </div>'
,'            <div class="ms-recommendations-title ms-noWrap">    '
,'                <a href="', $urlHtmlEncode(itemPath) ,'" title="', itemTitle ,'" class="ms-listLink" onclick="RILogToEventStore(\'', $scriptEncode(itemPath) ,'\', true);">'
,'                    ', itemTitle ,''
,'                </a>'
,'            </div>'
,'            <div class="ms-recommendations-calloutlink">'
,'                <a id="', $htmlEncode(calloutId) ,'" href="javascript:;" title="', $htmlEncode(res_ShowDetails) ,'" onclick="javascript:SP.SOD.executeFunc(\'Callout.js\', \'CalloutManager\',  function() {ULS4jI:; RIOpenDetailsCallout(\'', $scriptEncode(calloutId) ,'\', \'', $scriptEncode(itemTitle) ,'\', \'', $scriptEncode(itemPath) ,'\', \'', $scriptEncode(listId) ,'\', \'', $scriptEncode(listItemId) ,'\', \'', $scriptEncode(calloutWidthDivId) ,'\', \'', $scriptEncode(res_LastEditedBy) ,'\', \'', $scriptEncode(reasonText) ,'\'); });" class="ms-calloutLink, ms-ellipsis-a">'
,'                        <img src="', $urlHtmlEncode(calloutButton) ,'" class="ms-ellipsis-icon" />'
,'                </a>'
,'            </div>'
,'            <div class="ms-recommendations-calloutwidth" id="', $htmlEncode(calloutWidthDivId) ,'">'
,'            </div>'
,'        </div>'
); 
    }
ms_outHtml.push(''
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_866973707d70405db63599a828a3f911() {ULS4jI:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Recommendations", DisplayTemplate_866973707d70405db63599a828a3f911);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_Recommendations.js", DisplayTemplate_866973707d70405db63599a828a3f911);
}
}
RegisterTemplate_866973707d70405db63599a828a3f911();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_Recommendations.js"), RegisterTemplate_866973707d70405db63599a828a3f911);
}
