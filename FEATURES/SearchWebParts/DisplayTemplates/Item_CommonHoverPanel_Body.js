function ULShXN(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_CommonHoverPanel_Body.js";return o;}
function DisplayTemplate_b007b3d1a82d484096f53dcf86fc83d2(ctx) {ULShXN:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_b007b3d1a82d484096f53dcf86fc83d2.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_CommonHoverPanel_Body.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchHoverPanel'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULShXN:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
        var id = ctx.CurrentItem.csr_id;
        var dataShown = false;
        var changedBySnippetShown = false;

        if (ctx.currentItem_ShowChangedBySnippet &&
            !Srch.U.n(ctx.CurrentItem.LastModifiedTime) &&
            !$isEmptyString(ctx.CurrentItem.EditorOWSUSER))
        {
            var changedById = id + "_ChangedBy";
            var editorIdentifiers = ctx.CurrentItem.EditorOWSUSER.split(" | ");
            var editorEmail = "";
            if(!$isNull(editorIdentifiers[0]))
            {
                editorEmail = editorIdentifiers[0];
            }

            var editorDisplayName = "";
            if(!$isNull(editorIdentifiers[1]))
            {
                editorDisplayName = editorIdentifiers[1];
            }

            AddPostRenderCallback(ctx, function()
            {ULShXN:;
                EnsureScriptFunc("clienttemplates.js", "RenderUserFieldWorker", function()
                {ULShXN:;
                    EnsureScriptFunc("sp.datetimeutil.js", "SP.DateTimeUtil.SPRelativeDateTime", function()
                    {ULShXN:;
                        var renderCtx = new ContextInfo();
                        renderCtx.Templates = {};
                        renderCtx.Templates["Fields"] = {};

                        var field =
                        {
                            "FieldType" : "User",
                            "DefaultRender" : "1",
                            "HasUserLink" : "1",
                            "Type" : "User"
                        };

                        var listItem =
                        {
                            "id" : "",
                            "title" : editorDisplayName,
                            "email" : editorEmail
                        };

                        var listSchema =
                        {
                            "EffectivePresenceEnabled" : "1",
                            "PresenceAlt" : "No presence information",
                            "UserDispUrl" : "/_layouts/15/userdisp.aspx"
                        };

                        var htmlUserPresence = RenderUserFieldWorker(renderCtx, field, listItem, listSchema);
                        var convertedDate = SP.DateTimeUtil.IntlDate.createFromJsLocalDate(ctx.CurrentItem.LastModifiedTime, Srch.U.getCalendarType());
                        var changedDate = convertedDate.format("d", Sys.CultureInfo.CurrentCulture.name);
                        var changedTime = convertedDate.format("t", Sys.CultureInfo.CurrentCulture.name);

                        var encodedChangedBySnippet = String.format(
                            $htmlEncode(Srch.Res.hp_ChangedByAuthorDate),
                            htmlUserPresence,
                            $htmlEncode(changedDate),
                            $htmlEncode(changedTime));

                        var targetElement = document.getElementById(changedById);
                        if(targetElement)
                        {
                            targetElement.innerHTML = encodedChangedBySnippet;
                        }

                        ProcessImn();
                    });
                });
            });
ms_outHtml.push(''
,'            <div class="ms-srch-hover-subTitle ms-srch-hover-text ms-srch-ellipsis" id="', $htmlEncode(changedById) ,'"></div>'
);
            dataShown = true;
            changedBySnippetShown = true;
        }

        if(ctx.currentItem_ShowChangedBySnippet &&
           !changedBySnippetShown &&
           !ctx.currentItem_NeverFallbackToAuthor)
        {
            ctx.CurrentItem.csr_ShowLastModifiedTime = true;
            ctx.CurrentItem.csr_ShowAuthors = true;
        }

        if (!Srch.U.n(ctx.CurrentItem.LastModifiedTime) &&
            ctx.CurrentItem.csr_ShowLastModifiedTime)
        {
            var lastModifiedTimeId = id + HP.ids.modifiedDate;
            AddPostRenderCallback(ctx, function()
            {ULShXN:;
                Srch.U.renderFriendlyTimeIntervalString(ctx.CurrentItem.LastModifiedTime, lastModifiedTimeId);
            });

ms_outHtml.push(''
,'            <div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode(Srch.Res.hp_LastModified) ,'</h3></div>'
,'            <div class="ms-srch-hover-text ms-srch-ellipsis" id="', $htmlEncode(lastModifiedTimeId) ,'"></div>'
);
            dataShown = true;
        }

        if (!$isEmptyString(ctx.CurrentItem.DisplayAuthor) &&
            ctx.CurrentItem.csr_ShowAuthors)
        {
            var authorsLabel = $resource("hp_RecentlyEdited");
            if(!$isEmptyString(ctx.CurrentItem.csr_AuthorsLabel))
            {
                authorsLabel = ctx.CurrentItem.csr_AuthorsLabel;
            }

            var authors = Srch.U.getArray(ctx.CurrentItem.DisplayAuthor);
ms_outHtml.push(''
,'            <div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode(authorsLabel) ,'</h3></div>'
,'				<div class="ms-srch-hover-text">'
,'					', HP.GetAuthorsHtml(id, authors) ,''
,'				</div>'
);
            dataShown = true;
        }

        if(!ctx.CurrentItem.csr_DataShown && !dataShown)
        {
ms_outHtml.push(''
,'            <div class="ms-srch-hover-noContent" id="', $htmlEncode(id + HP.ids.noData) ,'">', $htmlEncode(Srch.Res.hp_NoData) ,'</div>'
);
        }
ms_outHtml.push(''
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_b007b3d1a82d484096f53dcf86fc83d2() {ULShXN:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_CommonHoverPanel_Body", DisplayTemplate_b007b3d1a82d484096f53dcf86fc83d2);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_CommonHoverPanel_Body.js", DisplayTemplate_b007b3d1a82d484096f53dcf86fc83d2);
}

}
RegisterTemplate_b007b3d1a82d484096f53dcf86fc83d2();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_CommonHoverPanel_Body.js"), RegisterTemplate_b007b3d1a82d484096f53dcf86fc83d2);
}
