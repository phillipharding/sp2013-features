function DisplayTemplate_EduLessonItem(ctx)
{
    var p=[];
    var cachePreviousTemplateData = ctx['DisplayTemplateData'];
    ctx['DisplayTemplateData'] = new Object();
    DisplayTemplate_EduLessonItem.DisplayTemplateData = ctx['DisplayTemplateData'];

    ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_EducationLesson.js';
    ctx['DisplayTemplateData']['TemplateType']='Item';
    ctx['DisplayTemplateData']['Title']='EduLessonItem';
    ctx['DisplayTemplateData']['Description']='';
    ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
    this.DisplayTemplateData = ctx['DisplayTemplateData'];

    ctx['DisplayTemplateData']['ManagedPropertyMapping']={'WorkId':['WorkId'], 'Rank':['Rank'], 'Title':['Title'], 'Size':['Size'], 'Path':['Path'], 'Description':['Description'], 'SiteName':['SiteName'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'ViewsLifeTime':['ViewsLifeTime'], 'EduEntityId':['EduEntityId']};

    p.push(' ');
    if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl))
    {
        var id = ctx.ClientControl.get_nextUniqueId();
        $setResultItem(id, ctx.CurrentItem);
        var summaryChars = Srch.U.summaryTruncationLength;
        var urlChars = Srch.U.pathTruncationLength;
        var titleChars = Srch.U.titleTruncationLength;
        var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_EducationLesson_HoverPanel.js";
        var hover_id =  id + "_hover";

        p.push('<div id="',
                $htmlEncode(id),
                '" name="Item" data-displaytemplate="EduLessonItem" class="ms-srch-item" onmouseover="EnsureScriptParams(\'SearchUI.js\', \'HP.Show\', \'',
                $scriptEncode(id),
                '\', \'',
                $scriptEncode(hover_id),
                '\', \'',
                $scriptEncode(hoverUrl),
                '\');" onmouseout="EnsureScriptParams(\'SearchUI.js\', \'HP.Show\', \'',
                $scriptEncode(id) ,
                '\', \'',
                $scriptEncode(hover_id) ,
                '\', \'',
                $scriptEncode(hoverUrl),
                '\');"><div id="',
                hover_id,
                '" class="ms-srch-hover-outerContainer"></div>');

        var itemBodyId = id + "_bodyId";
        var itemTitleId = id + "_itemTitle";
        var itemPathId = id + "_itemPath";
        p.push('<div class="ms-srch-item-body" id="', itemBodyId, '" onclick="EnsureScriptParams(\'SearchUI.js\', \'HP.Show\', \'',
                $scriptEncode(id) ,
                '\', \'',
                $scriptEncode(hover_id) ,
                '\', \'',
                $scriptEncode(hoverUrl),
                '\');">');

        var hhProps = Srch.U.createXMLDocument("<root>" + ctx.CurrentItem.HitHighlightedProperties + "</root>");
        var title = Srch.U.getSingleHHXMLNodeValue(hhProps, "HHTitle");
        var url = Srch.U.getSingleHHXMLNodeValue(hhProps, "HHUrl");
        if ($isEmptyString(title)) {title = $htmlEncode(ctx.CurrentItem.Title)}
        if ($isEmptyString(url)) {url = $htmlEncode(ctx.CurrentItem.Path)}

        var eduPath;
        var path;
        if(!Srch.U.e(ctx.CurrentItem.EduEntityId))
        {
            var webUrl = GetParentRelativeUrl(ctx.CurrentItem.Path);
            path = webUrl + "SitePages/Edu/View.aspx?sp_edu_lp_type=1&sp_edu_lp_id=" + ctx.CurrentItem.EduEntityId;
            eduPath = ctx.ScriptApplicationManager.states.contextUrl + "/SitePages/Edu/View.aspx?sp_edu_lp_type=1&sp_edu_lp_id=" + ctx.CurrentItem.EduEntityId;
        }
        else
        {
            path = ctx.CurrentItem.Path;
        }

        p.push('<div class="ms-srch-item-title" id="', itemTitleId, '"><h3 class="ms-srch-ellipsis"><a class="ms-srch-item-link" id="TitleLink" ',
                'onfocus="EnsureScriptParams(\'SearchUI.js\', \'HP.Show\', \'',
                $scriptEncode(id) ,
                '\', \'',
                $scriptEncode(hover_id) ,
                '\', \'',
                $scriptEncode(hoverUrl),
                '\');"',
                ' href="',
                $urlHtmlEncode(path),
                '" title="',
                $htmlEncode(ctx.CurrentItem.Title) ,
                '">',
                Srch.U.getTrimmedProcessedHHXMLString(title, titleChars) ,
                '</a></h3></div> ');

        var footerId = id + "_itemPath";
        if (!Srch.U.e(eduPath))
        {
            p.push('<div tabIndex="0" class="ms-srch-item-path" id="', footerId, '"',
                   'onclick = "Srch.U.selectPath(\'',
                   $scriptEncode(eduPath),
                   '\', this)" title="',
                   $htmlEncode(eduPath),
                   '">',
                   $htmlEncode(Srch.U.truncateUrl(eduPath, urlChars)) ,
                   '</div>');
        }
        else
        {
            p.push('<div tabIndex="0" class="ms-srch-item-path" id="', footerId, '"',
                    'onclick = "Srch.U.selectPath(\'',
                    $scriptEncode(ctx.CurrentItem.Path),
                    '\', this)" title="',
                    $htmlEncode(ctx.CurrentItem.Path),
                    '">',
                    $htmlEncode(Srch.U.truncateUrl(ctx.CurrentItem.Path, urlChars)),
                    '</div>');
        }
        p.push('</div>');

        p.push('</div>');
    }
    p.push('');

    ctx['DisplayTemplateData'] = cachePreviousTemplateData;
    return p.join('');
}

function RegisterTemplate_EduLessonItem()
{
    if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
        Srch.U.registerRenderTemplateByName("EduLessonItem", DisplayTemplate_EduLessonItem);
    }

    if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") 
    {
        Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_EducationLesson.js", DisplayTemplate_EduLessonItem);
    }
}

RegisterTemplate_EduLessonItem();

if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
    RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_EducationLesson.js"), RegisterTemplate_EduLessonItem);
}

function GetParentRelativeUrl(strListItemUrl)
{
    var pos1 = strListItemUrl.toUpperCase().indexOf("/SITES");
    var pos2 = strListItemUrl.toUpperCase().indexOf("LISTS");

    var relativeUrl = strListItemUrl.substring(pos1, pos2);
    return relativeUrl;
}
