function DisplayTemplate_EduDetailsHoverpanel(ctx)
{
    var p=[];
    var cachePreviousTemplateData = ctx['DisplayTemplateData'];
    ctx['DisplayTemplateData'] = new Object();
    DisplayTemplate_EduDetailsHoverpanel.DisplayTemplateData = ctx['DisplayTemplateData'];

    ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_EducationBook_HoverPanel.js';
    ctx['DisplayTemplateData']['TemplateType']='Item';
    ctx['DisplayTemplateData']['Title']='EduDetailsHoverpanel';
    ctx['DisplayTemplateData']['Description']='';
    ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
    this.DisplayTemplateData = ctx['DisplayTemplateData'];

    ctx['DisplayTemplateData']['ManagedPropertyMapping']={'WorkId':['WorkId'], 'Rank':['Rank'], 'DMSDocTitle':['DMSDocTitle'], 'DMSDocAuthor':['DMSDocAuthor'], 'url':['url'], 'Description':['Description'], 'PictureThumbnailURL':['PictureThumbnailURL'], 'owstaxidmetadataalltagsinfo':['owstaxidmetadataalltagsinfo'], 'StartDate':['StartDate'], 'language':['language'], 'DMSDocAccessRight':['DMSDocAccessRight'], 'Path':['Path'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'ViewsLifeTime':['ViewsLifeTime']};

    p.push('');
    var id = ctx.CurrentItem.id;
    var closeId = $htmlEncode(id + HP.ids.close);

    p.push('<div class="ms-srch-hover-innerContainer ms-srch-hover-standardSize" id="', $htmlEncode(id + HP.ids.inner), '">');

    p.push('<div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder), '"></div>');

    p.push('<div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow), '"></div>');

    p.push('<div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content), '" data-displaytemplate="EduDetailsHoverpanel">');

    p.push('<div class="ms-srch-hover-header"><div>');

    p.push('<div class="ms-srch-hover-close"><a href="javascript:HP.Close()" id="', closeId, '" title="', $htmlEncode(Srch.Res.hp_Tooltip_Close), '"><img src="',
            $urlHtmlEncode(SP.Utilities.VersionUtility.getImageUrl(Srch.SU.closeImage)) ,
            '" /></a></div>');

    p.push('<div class="ms-srch-hover-title ms-dlg-heading ms-srch-ellipsis">');

    if (!Srch.U.e(ctx.CurrentItem.DMSDocTitle) && !Srch.U.e(ctx.CurrentItem.Path))
    {
        var titleChars = Srch.U.titleTruncationLength;
        p.push('<span>', Srch.U.getTrimmedProcessedHHXMLString(ctx.CurrentItem.DMSDocTitle, titleChars), '</span>');
    }

    p.push('</div></div> ');

    p.push('<div class="ms-metadata">');
    p.push('<div class="ms-srch-hover-filetype">');
    var fileTypeId = $htmlEncode(id + "_filetype");
    p.push('<span id="', fileTypeId, '">', $htmlEncode(Srch.Res.edu_BookLabel), '</span>');
    p.push('</div></div></div>');

    p.push('<div class="ms-srch-hover-body" id="', $htmlEncode(id + HP.ids.body), '">');

    if(!Srch.U.n(ctx.CurrentItem.ViewsLifeTime))
    {
        p.push('<div class="ms-srch-hover-views" id="',
        $htmlEncode(id + HP.ids.viewsLifeTime) ,
        '" title="',
        $htmlEncode(Srch.Res.hp_Tooltip_ViewsLifeTime) ,
        '">',
        $htmlEncode(String.format(Srch.Res.hp_ViewsLifeTime, ctx.CurrentItem.ViewsLifeTime.localeFormat("N0"))) ,
        '</div>');
    }

    if(!Srch.U.e(ctx.CurrentItem.PictureThumbnailURL))
    {
        p.push('<img alt="" src="', $urlHtmlEncode(ctx.CurrentItem.PictureThumbnailURL), '"</img>');
    }

    if(!Srch.U.e(ctx.CurrentItem.DMSDocAuthor))
    {
        p.push('<div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode(Srch.Res.edu_BookAuthor), '</h3></div>');
        p.push('<div class="ms-srch-hover-text">', $htmlEncode(ctx.CurrentItem.DMSDocAuthor), '</div>');
    }

    if(!Srch.U.e(ctx.CurrentItem.owstaxidmetadataalltagsinfo))
    {
        var category = ($getItemValue(ctx, "owstaxidmetadataalltagsinfo").value)[0].entityLabel;
        p.push('<div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode(Srch.Res.edu_BookCategory), '</h3></div>');
        p.push('<div class="ms-srch-hover-text">', $htmlEncode(category), '</div>');
    }

    if(!Srch.U.e(ctx.CurrentItem.StartDate))
    {
        p.push('<div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode(Srch.Res.edu_BookReleaseDate), '</h3></div>');
        p.push('<div class="ms-srch-hover-text">', $htmlEncode(ctx.CurrentItem.StartDate), '</div>');
    }

    var rights = ctx.CurrentItem.DMSDocAccessRight;
    if(!Srch.U.e(rights))
    {
        var str = '';
        if (rights.charAt(0) == '1')
        {
            str = Srch.Res.edu_ReadPermission;
        }

        if (rights.charAt(1) == '1')
        {
            str = str + ", " + Srch.Res.edu_PrintPermission
        }

        if (rights.charAt(2) == '1')
        {
            str = str + ", " + Srch.Res.edu_WritePermission;
        }

        if (rights.charAt(3) == '1')
        {
            str = str + ", " + Srch.Res.edu_EnableScriptPermission;
        }

        if (str.length > 0)
        {
            p.push('<div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode(Srch.Res.edu_BookRights), '</h3></div>');
            p.push('<div class="ms-srch-hover-text">', $htmlEncode(str), '</div>');
        }
    }

    p.push('</div>');

    ctx['DisplayTemplateData'] = cachePreviousTemplateData;
    return p.join('');
}

if ("undefined" != typeof (Srch) && "undefined" != typeof (Srch.U) && typeof(Srch.U.registerRenderTemplateByName) == "function") {
    Srch.U.registerRenderTemplateByName("EduDetailsHoverpanel", DisplayTemplate_EduDetailsHoverpanel);
}

if ("undefined" != typeof (Srch) && "undefined" != typeof (Srch.U) && typeof(Srch.U.registerRenderTemplateByName) == "function") 
{
    Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_EducationBook_HoverPanel.js", DisplayTemplate_EduDetailsHoverpanel);
}
