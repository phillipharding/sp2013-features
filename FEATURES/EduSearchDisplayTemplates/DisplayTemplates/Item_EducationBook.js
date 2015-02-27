function DisplayTemplate_EduDetailsItem(ctx)
{
    var p=[];
    var cachePreviousTemplateData = ctx['DisplayTemplateData'];
    ctx['DisplayTemplateData'] = new Object();
    DisplayTemplate_EduDetailsItem.DisplayTemplateData = ctx['DisplayTemplateData'];

    ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_EducationBook.js';
    ctx['DisplayTemplateData']['TemplateType']='Item';
    ctx['DisplayTemplateData']['Title']='EduDetailsItem';
    ctx['DisplayTemplateData']['Description']='';
    ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
    this.DisplayTemplateData = ctx['DisplayTemplateData'];

    ctx['DisplayTemplateData']['ManagedPropertyMapping']={'WorkId':['WorkId'], 'Rank':['Rank'], 'DMSDocTitle':['DMSDocTitle'], 'DMSDocAuthor':['DMSDocAuthor'], 'url':['url'], 'Description':['Description'], 'PictureThumbnailURL':['PictureThumbnailURL'], 'owstaxidmetadataalltagsinfo':['owstaxidmetadataalltagsinfo'], 'StartDate':['StartDate'], 'language':['language'], 'DMSDocAccessRight':['DMSDocAccessRight'], 'Path':['Path'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'ViewsLifeTime':['ViewsLifeTime']};

    p.push(' ');
    if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl))
    {
        var id = ctx.ClientControl.get_nextUniqueId();
        $setResultItem(id, ctx.CurrentItem);
        var summaryChars = Srch.U.summaryTruncationLength;
        var urlChars = Srch.U.pathTruncationLength;
        var titleChars = Srch.U.titleTruncationLength;
        var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_EducationBook_HoverPanel.js";
        var hover_id = id + "_hover";

        p.push('<div id="',
                $htmlEncode(id),
                '" name="Item" data-displaytemplate="EduDetailsItem" class="ms-srch-item" onmouseover="EnsureScriptParams(\'SearchUI.js\', \'HP.Show\', \'',
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

        var title = $htmlEncode(ctx.CurrentItem.DMSDocTitle);
        var hhProps = Srch.U.createXMLDocument("<root>" + ctx.CurrentItem.HitHighlightedProperties + "</root>");
        if ($isEmptyString(title)) 
        {
            title = Srch.U.getSingleHHXMLNodeValue(hhProps, "HHTitle");
        }
        var url = $htmlEncode(ctx.CurrentItem.Path);
        if ($isEmptyString(url)) 
        {
            url = Srch.U.getSingleHHXMLNodeValue(hhProps, "HHUrl");
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
                $urlHtmlEncode(ctx.CurrentItem.Path),
                '" title="',
                $htmlEncode(ctx.CurrentItem.Title) ,
                '">',
                Srch.U.getTrimmedProcessedHHXMLString(title, titleChars) ,
                '</a></h3></div> ');

        p.push('<div id="Summary"> ');
        var summaryEncoded = "";
        if(!Srch.U.e(ctx.CurrentItem.Description))
        {
            summaryEncoded = $htmlEncode(Srch.U.getTrimmedString(ctx.CurrentItem.Description, summaryChars));
        }
        else if(!Srch.U.e(ctx.CurrentItem.HitHighlightedSummary))
        {
            summaryEncoded = Srch.U.processHHXML(ctx.CurrentItem.HitHighlightedSummary);
            summaryEncoded = Srch.U.getTrimmedProcessedHHXMLString(ctx.CurrentItem.HitHighlightedSummary, summaryChars);
        }

        p.push('', summaryEncoded, '</div> ');

        var footerId = id + "_itemPath";
        p.push('<div tabIndex="0" class="ms-srch-item-path" id="', footerId, '"',
               'onclick = "selectText(\'',
               $scriptEncode(ctx.CurrentItem.Path),
               '\', this)" title="',
               $htmlEncode(ctx.CurrentItem.Path),
               '">',
               $htmlEncode(Srch.U.truncateUrl(ctx.CurrentItem.Path, urlChars)),
               '</div>');
        p.push('</div>');

        p.push('</div>');
    }
    p.push('');

    ctx['DisplayTemplateData'] = cachePreviousTemplateData;
    return p.join('');
}

if ("undefined" != typeof (Srch) && "undefined" != typeof (Srch.U) && typeof(Srch.U.registerRenderTemplateByName) == "function") 
{
    Srch.U.registerRenderTemplateByName("EduDetailsItem", DisplayTemplate_EduDetailsItem);
}

if ("undefined" != typeof (Srch) && "undefined" != typeof (Srch.U) && typeof(Srch.U.registerRenderTemplateByName) == "function") 
{
    Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_EducationBook.js", DisplayTemplate_EduDetailsItem);
}

function GetParentWebUrl(strListItemUrl)
{
    var pos = strListItemUrl.toUpperCase().indexOf("LISTS");
    var webUrl = strListItemUrl.substring(strListItemUrl, pos);
    return webUrl;
}
