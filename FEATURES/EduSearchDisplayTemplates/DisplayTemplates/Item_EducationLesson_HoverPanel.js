function DisplayTemplate_EduLessonHoverpanel(ctx)
{
    var p=[];
    var cachePreviousTemplateData = ctx['DisplayTemplateData'];
    ctx['DisplayTemplateData'] = new Object();
    DisplayTemplate_EduLessonHoverpanel.DisplayTemplateData = ctx['DisplayTemplateData'];

    ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_EducationLesson_HoverPanel.js';
    ctx['DisplayTemplateData']['TemplateType']='Item';
    ctx['DisplayTemplateData']['Title']='EduLessonHoverpanel';
    ctx['DisplayTemplateData']['Description']='';
    ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
    this.DisplayTemplateData = ctx['DisplayTemplateData'];

    ctx['DisplayTemplateData']['ManagedPropertyMapping']={'WorkId':['WorkId'], 'Rank':['Rank'], 'Title':['Title'], 'Size':['Size'], 'Path':['Path'], 'Description':['Description'], 'SiteName':['SiteName'], 'HitHighlightedSummary':['HitHighlightedSummary'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'ViewsLifeTime':['ViewsLifeTime'], 'EduEntityId':['EduEntityId']};

    p.push('');
    var id = ctx.CurrentItem.id;
    var closeId = $htmlEncode(id + HP.ids.close);

    p.push('<div class="ms-srch-hover-innerContainer ms-srch-hover-standardSize" id="', $htmlEncode(id + HP.ids.inner), '">');

    p.push('<div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder), '"></div>');

    p.push('<div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow), '"></div>');

    p.push('<div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content), '" data-displaytemplate="EduLessonHoverpanel">');

    p.push('<div class="ms-srch-hover-header"><div>');

    p.push('<div class="ms-srch-hover-close"><a href="javascript:HP.Close()" id="', closeId, '" title="', $htmlEncode(Srch.Res.hp_Tooltip_Close), '"><img src="',
            $urlHtmlEncode(SP.Utilities.VersionUtility.getImageUrl(Srch.SU.closeImage)) ,
            '" /></a></div>');

    p.push('<div class="ms-srch-hover-title ms-dlg-heading ms-srch-ellipsis">');

    var titleChars = Srch.U.titleTruncationLength;
    var path;
    if (!Srch.U.e(ctx.CurrentItem.Title) && !Srch.U.e(ctx.CurrentItem.Path))
    {
        if(!Srch.U.e(ctx.CurrentItem.EduEntityId))
        {
            var webUrl = GetParentRelativeUrl(ctx.CurrentItem.Path);
            path = webUrl + "SitePages/Edu/View.aspx?sp_edu_lp_type=1&sp_edu_lp_id=" + ctx.CurrentItem.EduEntityId;
        }
        else
        {
            path = ctx.CurrentItem.Path;
        }

        p.push('<a clicktype="Result" id="TitleLink" href="',
            $urlHtmlEncode(path) ,
            '" title="',
            $htmlEncode(ctx.CurrentItem.Title) ,
            '">',
            Srch.U.getTrimmedProcessedHHXMLString(ctx.CurrentItem.Title, titleChars) ,
            '</a> ');
    }

    p.push('</div></div> ');

    p.push('<div class="ms-metadata">');
    p.push('<div class="ms-srch-hover-filetype">');
    var fileTypeId = $htmlEncode(id + "_filetype");
    p.push('<span id="', fileTypeId, '">', $htmlEncode(Srch.Res.edu_LessonLabel), '</span>');
    p.push('</div></div></div>');

    p.push('<div class="ms-srch-hover-body" id="', $htmlEncode(id + HP.ids.body), '">');

    if (!Srch.U.n(ctx.CurrentItem.Size) && HP.IsNumeric(ctx.CurrentItem.Size))
    {
        p.push('<div class="ms-srch-hover-filetype ms-metadata">');
        var size = Math.round(ctx.CurrentItem.Size / 1024);
        if (size > 0)
        {
            p.push('', $htmlEncode(String.format(Srch.Res.hp_Size, size.localeFormat("N0"))) ,' ');
        }
        p.push('</div>');
    }

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

    if(!Srch.U.e(ctx.CurrentItem.Path))
    {

        var path = ctx.CurrentItem.Path.toUpperCase();
        var pos1 = path.indexOf("LISTS");
        var parentPath = ctx.CurrentItem.Path.substr(0, pos1 - 1);
        var pos2 = parentPath.lastIndexOf("/");
        var className = parentPath.substr(pos2 + 1);
        p.push('<div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode(Srch.Res.edu_Class), '</h3></div>');
        p.push('<div class="ms-srch-hover-text">',
                '<a clicktype="Result" id="ClassTitleLink" href="',
                $urlHtmlEncode(ctx.CurrentItem.SiteName),
                '" title="',
                $htmlEncode(className),
                '">',
                Srch.U.getTrimmedProcessedHHXMLString(className, titleChars) ,
                '</a></div>');
    }

    p.push('</div>');

    p.push('</div>');
    p.push('</div>');

    ctx['DisplayTemplateData'] = cachePreviousTemplateData;
    return p.join('');
}

function RegisterTemplate_EduLessonHoverpanel()
{
    if ("undefined" != typeof (Srch) && "undefined" != typeof (Srch.U) && typeof(Srch.U.registerRenderTemplateByName) == "function") {
      Srch.U.registerRenderTemplateByName("EduLessonHoverpanel", DisplayTemplate_EduLessonHoverpanel);
    }

    if ("undefined" != typeof (Srch) && "undefined" != typeof (Srch.U) && typeof(Srch.U.registerRenderTemplateByName) == "function") {
      Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_EducationLesson_HoverPanel.js", DisplayTemplate_EduLessonHoverpanel);
    }
}

RegisterTemplate_EduLessonHoverpanel();

if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
    RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_EducationLesson_HoverPanel.js"), RegisterTemplate_EduLessonHoverpanel);
}
