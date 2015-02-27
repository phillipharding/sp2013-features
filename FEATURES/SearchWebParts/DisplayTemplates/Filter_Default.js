function ULSuYL(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Filter_Default.js";return o;}
function DisplayTemplate_af5cc45b8ca241e89a5fae55059aafa9(ctx) {ULSuYL:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_af5cc45b8ca241e89a5fae55059aafa9.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_Default.js';
  ctx['DisplayTemplateData']['TemplateType']='Filter';
  ctx['DisplayTemplateData']['TargetControlType']=['Refinement'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['CompatibleSearchDataTypes']=[];
  ctx['DisplayTemplateData']['CompatibleManagedProperties']=[];

ms_outHtml.push('',''
,''
);

    this.Options = {
        ShowClientPeoplePicker: false,
        ShowCounts: false
    };

    if (ctx.RefinementControl.propertyName == "Author" ||
        ctx.RefinementControl.propertyName == "DisplayAuthor")
    {
        this.Options.ShowClientPeoplePicker = true;
    }

    function mapResultType(listData)
    {ULSuYL:;
        var map = { };
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_MSAccess")] = {
            "RefinerName": "FileType",
            "RefinementValues": ["accdb", "accdc", "accde", "accdr", "accdt"]
        };
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_AdobePDF")] = {
            "RefinerName": "FileType",
            "RefinementValues": ["pdf"]
        }; 
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Assignment")] = {
            "RefinerName": "ContentTypeId",
            "RefinementValues": ["0x010063C2F478ACC511DFB869B5BFDFD720851252*"]
        };
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Blog")] = {
            "RefinerName": "WebTemplate",
            "RefinementValues": ["BLOG"]
        }; 
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Book")] = {
            "RefinerName": "ContentTypeId",
            "RefinementValues": ["0x010100C568DB52D9D0A14D9B2FDCC96666E9F2007948130EC3DB064584E219954237AF3900ABD371128A994A0B98E7E888866B392F*"]
        }; 
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Community")] = {
            "RefinerName": "WebTemplate",
            "RefinementValues": ["COMMUNITY"]
        }; 
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Course")] = {
            "RefinerName": "ContentTypeId",
            "RefinementValues": ["0x010063C2F478ACC511DFB869B5BFDFD720851101*"]
        };
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Discussion")] = {
            "RefinerName": "ContentTypeId",
            "RefinementValues": ["0x012002*", "0x0107*"]
        };
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Email")] = {
            "RefinerName": "FileType",
            "RefinementValues": ["eml", "msg", "exch"]
        }; 
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_MSExcel")] = {
            "RefinerName": "FileType",
            "RefinementValues": ["odc", "ods", "xls", "xlsb", "xlsm", "xlsx", "xltm", "xltx", "xlam"]
        }; 
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Image")] = {
            "RefinerName": "FileType",
            "RefinementValues": ["bmp", "jpeg", "png", "tiff", "gif", "rle", "wmf", "dib", "ico", "wpd", "odg"]
        }; 
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Lesson")] = {
            "RefinerName": "ContentTypeId",
            "RefinementValues": ["0x010063C2F478ACC511DFB869B5BFDFD720851251*"]
        };
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_NewsfeedPost")] = {
            "RefinerName": "ContentTypeId",
            "RefinementValues": ["0x01FD4FB0210AB50249908EAA47E6BD3CFE8B*", "0x01FD59a0df25f1e14ab882d2c87d4874cf84*"]
        }; 
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_MSOneNote")] = {
            "RefinerName": "FileType",
            "RefinementValues": ["one"]
        }; 
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_MSPowerPoint")] = {
            "RefinerName": "FileType",
            "RefinementValues": ["odp", "ppt", "pptm", "pptx", "potm", "potx", "ppam", "ppsm", "ppsx"]
        }; 
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_MSProject")] = {
            "RefinerName": "FileType",
            "RefinementValues": ["mpp"]
        }; 
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_MSPublisher")] = {
            "RefinerName": "FileType",
            "RefinementValues": ["pub"]
        };
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_SharePointSite")] = {
            "RefinerName": "contentclass",
            "RefinementValues": ["STS_Web", "STS_Site"]
        };
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Task")] = {
            "RefinerName": "contentclass",
            "RefinementValues": ["STS_ListItem_GanttTasks", "STS_ListItem_Tasks", "STS_ListItem_HierarchyTasks", "STS_List_GanttTasks", "STS_List_Tasks", "STS_List_HierarchyTasks"]
        };
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_TeamSite")] = {
            "RefinerName": "WebTemplate",
            "RefinementValues": ["STS"]
        }; 
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Video")] = {
            "RefinerName": "ContentTypeId",
            "RefinementValues": ["0x0120D520A8*"]
        };
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Visio")] = {
            "RefinerName": "FileType",
            "RefinementValues": ["vsd", "vsx"]
        };
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_MSWord")] = {
            "RefinerName": "FileType",
            "RefinementValues": ["docx", "doc", "docm", "dot", "nws", "dotx"]
        };
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Webpage")] = {
            "RefinerName": "FileType",
            "RefinementValues": ["HTML", "MHTML"]
        };
        map[Srch.U.loadResource("rf_ResultTypeRefinerValue_Archive")] = {
            "RefinerName": "FileType",
            "RefinementValues": ["zip"]
        };

        var retListData = new Array();
        var assocListData = new Array();
        for (var i = 0; i < listData.length; i++)
        {
            var filter = listData[i];
            var mappedRefinementName = null;
            for(var key in map)
            {
                if (map[key].RefinerName == filter.RefinerName)
                {
                    for (var j = 0; j < map[key].RefinementValues.length; j++)
                    {
                        var actualValue = filter.RefinementValue.toLowerCase(), candidateValue = map[key].RefinementValues[j].toLowerCase();

                        if (actualValue == candidateValue ||
                            (filter.RefinerName.toLowerCase() == "contenttypeid" && actualValue.startsWith(candidateValue.substring(0, candidateValue.length - 1)))) 
                        {
                            mappedRefinementName = key;
                            break;
                        }
                    }
                    if (!$isNull(mappedRefinementName))
                    {
                        break;
                    }
                }
            }

            var mappedFilter = new Object();
            if (!$isNull(mappedRefinementName))
            {
                mappedFilter.RefinerName = map[mappedRefinementName].RefinerName;
                mappedFilter.RefinementCount = filter.RefinementCount;
                mappedFilter.RefinementName = mappedRefinementName;
                mappedFilter.RefinementTokens = [];
                var resultTypeTokenWrapper = (mappedFilter.RefinerName.toLowerCase() == "contenttypeid") ? function (x) {ULSuYL:;return x;} : 
                                                                                                           Srch.RefinementUtil.stringValueToEqualsToken;
                for (var j in map[mappedRefinementName].RefinementValues) {
                    mappedFilter.RefinementTokens.push(resultTypeTokenWrapper(map[mappedRefinementName].RefinementValues[j]));
                }

                if ($isNull(assocListData[mappedFilter.RefinementName]))
                {
                    assocListData[mappedFilter.RefinementName] = mappedFilter;
                }
                else
                {
                    assocListData[mappedFilter.RefinementName].RefinementCount += mappedFilter.RefinementCount;
                }
            }                
        }

        for (var key in assocListData)
        {
            retListData[retListData.length] = assocListData[key];
        }

        return retListData;
    }

    var listData = ctx.ListData;
    var hasControl = true;
    var shortListSize = 5;

    if ($isNull(ctx.RefinementControl) || $isNull(ctx.ClientControl)) hasControl = false;

    if (ctx.RefinementControl.propertyName == "FileType") {
        shortListSize = 6;

        if ($isNull(listData))
        {
            listData = [];
        }
        if (!$isNull(ctx.DataProvider.get_refinementInfo())) {
            if (!$isNull(ctx.DataProvider.get_refinementInfo()["contentclass"]))
            {
                listData = listData.concat(ctx.DataProvider.get_refinementInfo()["contentclass"]);
            }
            if (!$isNull(ctx.DataProvider.get_refinementInfo()["ContentTypeId"]))
            {
                listData = listData.concat(ctx.DataProvider.get_refinementInfo()["ContentTypeId"]);
            }
            if (!$isNull(ctx.DataProvider.get_refinementInfo()["WebTemplate"]))
            {
                listData = listData.concat(ctx.DataProvider.get_refinementInfo()["WebTemplate"]);
            }
        }

        if (hasControl)
            listData = mapResultType(listData);
    }
    else if (ctx.RefinementControl.propertyName == 'contentclass' || ctx.RefinementControl.propertyName == 'ContentTypeId' || ctx.RefinementControl.propertyName == 'WebTemplate') {
        hasControl = false;
    }
    else if (hasControl && !$isNull(listData))
    {

        for(var i in listData)
        {
            listData[i].RefinementTokens = [listData[i].RefinementToken];
            listData[i].RefinementTokenWrappedValues = [Srch.RefinementUtil.stringValueToEqualsToken(listData[i].RefinementValue)];
            if(ctx.RefinementControl.propertyName == "MediaDuration")
            {
                Srch.U.modifyMediaDurationRefinementName(listData[i]);
            }
        }
    }

    if (hasControl)
    {
        if($isNull(listData) || $isEmptyArray(listData))
        {
ms_outHtml.push(''
,'        <div id="EmptyContainer"></div>'
);
        }
        else
        {
            var isExpanded = Srch.Refinement.getExpanded(ctx.RefinementControl.propertyName);
            var iconClass = (isExpanded == "true"? "ms-ref-uparrow" : "ms-ref-downarrow");
            var displayStyle = (isExpanded == "true"? "" : "none");
            var refinerCatTitle = Srch.Refinement.getRefinementTitle(ctx.RefinementControl);
ms_outHtml.push(''
,'          <div id="Container">'
,'            ', Srch.U.collapsibleRefinerTitle(ctx.RefinementControl.propertyName, ctx.ClientControl.get_id(), refinerCatTitle, iconClass) ,''
);
            function outputFilter(refinementName, refinementCount, refiners, method, aClass, showCounts) {ULSuYL:;
                var aOnClick = "$getClientControl(this)." + method + "('" + $scriptEncode(Sys.Serialization.JavaScriptSerializer.serialize(refiners)) + "');";
                var nameClass = "ms-ref-name " + (showCounts ? "ms-displayInline" : "ms-displayInlineBlock ms-ref-ellipsis");
ms_outHtml.push('          '
,'            <div id="Value" name="Item">'
,'                <a id="FilterLink" class="', $htmlEncode(aClass) ,'" onclick="', aOnClick ,'" href="javascript:{}" title="', $htmlEncode(String.format(Srch.U.loadResource("rf_RefineBy"), refinementName)) ,'">'
,'                    <div id="RefinementName" class="', nameClass ,'"> ', $htmlEncode(refinementName) ,' </div>'
);
                if (showCounts) {
ms_outHtml.push(''
,'                    <div id="RefinementCount" class="ms-ref-count ms-textSmall"> (', $htmlEncode(Srch.U.toFormattedNumber(refinementCount)) ,') </div>'
);
                }
ms_outHtml.push(''
,'                </a>'
,'            </div>'
);
            };

            function SortAlphabetically(a, b)
            {ULSuYL:;
                return a.RefinementName.localeCompare(b.RefinementName);
            }
            function SortByCountDescending(a, b)
            {ULSuYL:;
                return b.RefinementCount - a.RefinementCount;
            }

            var unselectedFilters = new Array();
            var selectedFilters = new Array();

            var hasDiscreteIntervals = (!$isEmptyString(ctx.RefinementControl.spec) && ctx.RefinementControl.spec.startsWith('(discretize=manual'));

            var currentRefinementCategory = ctx.ClientControl.getCurrentRefinementCategory(ctx.RefinementControl.propertyName);
            var hasAnyFiltertokens = (!Srch.U.n(currentRefinementCategory) && currentRefinementCategory.get_tokenCount() > 0);
            for (var i = 0; i < listData.length; i++){
                var filter = listData[i];
                if(!$isNull(filter)){

                    var isEmptyDiscreteInterval = (hasDiscreteIntervals && filter.RefinementCount < 1);

                    if (ctx.ClientControl.hasAllRefinementFilters(filter.RefinerName, filter.RefinementTokens) ||
                        ctx.ClientControl.hasAllRefinementFilters(filter.RefinerName, filter.RefinementTokenWrappedValues)) {
                        selectedFilters.push(filter);
                    } else if(!isEmptyDiscreteInterval) {
                        unselectedFilters.push(filter);
                    }
                }
            }
            if (ctx.RefinementControl.propertyName == "FileType")
            {
                if (unselectedFilters.length <= shortListSize) {
                    unselectedFilters = unselectedFilters.sort(SortAlphabetically);
                } else {

                    unselectedFilters = unselectedFilters.sort(SortByCountDescending);
                } 

                selectedFilters = selectedFilters.sort(SortAlphabetically);
            }

            if (selectedFilters.length > 0 || hasAnyFiltertokens)
            {
ms_outHtml.push(''
,'            <div id="AllSection" class="ms-ref-allSec" style="display:', $htmlEncode(displayStyle) ,'">'
);
                var refinersAll = new Object();
                refinersAll[ctx.RefinementControl.propertyName] = null;
                if (ctx.RefinementControl.propertyName == "FileType")
                {
                    refinersAll["contentclass"] = null;
                    refinersAll["ContentTypeId"] = null;
                    refinersAll["WebTemplate"] = null;
                } 
                outputFilter(Srch.U.loadResource("rf_All"), null, refinersAll, "updateRefinersJSON", "ms-displayBlock", false);
ms_outHtml.push(''
,'            </div>'
);
            }
ms_outHtml.push(''
,'            <div id="SelectedSection" class="ms-ref-selSec">'
);
            for (var i = 0; i < selectedFilters.length; i++){
                var filter = selectedFilters[i];
                if(!$isNull(filter)){
                    var refiners = new Object();
                    if (!$isNull(filter.RefinementTokenWrappedValues))
                        filter.RefinementTokens = filter.RefinementTokens.concat(filter.RefinementTokenWrappedValues); 
                    refiners[filter.RefinerName] = filter.RefinementTokens;
                    outputFilter(filter.RefinementName, filter.RefinementCount, refiners, "removeRefinementFiltersJSON", "ms-core-listMenu-selected ms-ref-filterSel ms-displayBlock", this.Options.ShowCounts);
                }
            }
ms_outHtml.push(''
,'            </div>'
,'            <div id="UnselectedSection" class="ms-ref-unselSec" style="display:', $htmlEncode(displayStyle) ,'">'
,'                <div id="unselShortList" class="ms-ref-unsel-shortList">'
);
            var addMethod = "addRefinementFiltersJSON";
            if (ctx.RefinementControl.propertyName == "FileType")
            {
                addMethod = "addRefinementFiltersJSONWithOr";
            } 

            var shortList = unselectedFilters;
            var numShortList = unselectedFilters.length;
            if (shortListSize < unselectedFilters.length) {
                numShortList = shortListSize;
                if (ctx.RefinementControl.propertyName == "FileType") {
                    shortList = unselectedFilters.slice(0, numShortList).sort(SortAlphabetically);
                }
            }
            for (var i = 0; i < numShortList; i++) {
                var filter = shortList[i];
                if(!$isNull(filter)) {
                    var refiners = new Object();
                    refiners[filter.RefinerName] = filter.RefinementTokens;
                    outputFilter(filter.RefinementName, filter.RefinementCount, refiners, addMethod, "ms-displayBlock", this.Options.ShowCounts);
                }
            }
ms_outHtml.push(''
,'                </div> '
);
            if (shortListSize < unselectedFilters.length || this.Options.ShowClientPeoplePicker) {
ms_outHtml.push(''
,'                <div id="unselLongList" class="ms-ref-unsel-longList" style="display:none">'
);
                if (ctx.RefinementControl.propertyName == "FileType") {
                    unselectedFilters = unselectedFilters.sort(SortAlphabetically);
                }

                for (var i = 0; i < unselectedFilters.length; i++) {
                    var filter = unselectedFilters[i];
                    if(!$isNull(filter)) {
                        var refiners = new Object();
                        refiners[filter.RefinerName] = filter.RefinementTokens;
                        outputFilter(filter.RefinementName, filter.RefinementCount, refiners, addMethod, "ms-displayBlock", this.Options.ShowCounts);
                    }
                }

                var pplPickerIdParam = 'null';
                if (this.Options.ShowClientPeoplePicker) {
                    var pplPickerId = Srch.RefinementUtil.peoplePickerApplyIdPrefix(ctx.RefinementControl);
                    pplPickerIdParam = '&quot;' + pplPickerId + '&quot;';
                    Srch.RefinementUtil.peoplePickerPrep(pplPickerId, ctx.RefinementControl, ctx.ClientControl);
ms_outHtml.push(''
,'                    <div id="Value" name="Item">'
,'                        <div id="', pplPickerId ,'" class="ms-ref-pplPicker ms-displayBlock"></div>'
,'                    </div>'
);
                }
ms_outHtml.push(''
,'                </div>'
,'                <a id="unselToggle" class="ms-ref-unsel-toggle ms-commandLink" onclick="EnsureScriptParams(&quot;SearchUI.js&quot;, &quot;Srch.SU.toggleRefShortLong&quot;, this.parentNode, ', pplPickerIdParam ,')" href="javascript: {}">'
,'                    <div class="ms-displayInlineBlock">', $htmlEncode(Srch.U.loadResource("rf_RefinementLabel_More")) ,'</div>'
,'                </a>'
);
            }
ms_outHtml.push(''
,'            </div>'
,'        </div>'
);
        }
    }
ms_outHtml.push(''
,''
,'    '
);

  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_af5cc45b8ca241e89a5fae55059aafa9() {ULSuYL:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("4", DisplayTemplate_af5cc45b8ca241e89a5fae55059aafa9);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_Default.js", DisplayTemplate_af5cc45b8ca241e89a5fae55059aafa9);
}

}
RegisterTemplate_af5cc45b8ca241e89a5fae55059aafa9();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fFilters\u002fFilter_Default.js"), RegisterTemplate_af5cc45b8ca241e89a5fae55059aafa9);
}
