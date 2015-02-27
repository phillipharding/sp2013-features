function ULSaRe(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_Person_CompactHorizontal.js";return o;}
function DisplayTemplate_5a8ae7dac54b4390a456f8d80f19b233(ctx) {ULSaRe:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_5a8ae7dac54b4390a456f8d80f19b233.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Person_CompactHorizontal.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'AboutMe':['AboutMe'], 'AccountName':['AccountName'], 'BaseOfficeLocation':['BaseOfficeLocation'], 'Department':['Department'], 'HitHighlightedProperties':['HitHighlightedProperties'], 'Interests':['Interests'], 'JobTitle':['JobTitle'], 'LastModifiedTime':['LastModifiedTime'], 'Memberships':['Memberships'], 'PastProjects':['PastProjects'], 'Path':['Path'], 'PictureURL':['PictureURL'], 'PreferredName':['PreferredName'], 'Responsibilities':['Responsibilities'], 'Schools':['Schools'], 'ServiceApplicationID':['ServiceApplicationID'], 'SipAddress':['SipAddress'], 'Skills':['Skills'], 'UserProfile_GUID':['UserProfile_GUID'], 'WorkEmail':['WorkEmail'], 'WorkId':['WorkId'], 'YomiDisplayName':['YomiDisplayName']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSaRe:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);  
                if(!$isNull(ctx.CurrentItem) && !$isNull(ctx.ClientControl)){
                var id = ctx.ClientControl.get_nextUniqueId();
                var itemId = id + Srch.U.Ids.item;
                $setResultItem(itemId, ctx.CurrentItem); 
ms_outHtml.push(''
);  
                if (!Srch.U.n(ctx.CurrentItem.ParentTableReference) && ctx.CurrentItem.ParentTableReference.TotalRows > 1) {
ms_outHtml.push(''
);  
                    var hhProps = Srch.U.createXMLDocument("<root>" + ctx.CurrentItem.HitHighlightedProperties + "</root>");
                    var pathEncoded = $urlHtmlEncode(ctx.CurrentItem.Path);
                    var haspn = !$isEmptyString(ctx.CurrentItem.PreferredName);
                    var hassip = !$isEmptyString(ctx.CurrentItem.SipAddress);
                    var hasemail = !$isEmptyString(ctx.CurrentItem.WorkEmail);
                    var hasjt = !$isEmptyString(ctx.CurrentItem.JobTitle);
                    var hasdp = !$isEmptyString(ctx.CurrentItem.Department); 
                    var uSip = ctx.CurrentItem.SipAddress;
                    var uEmail = ctx.CurrentItem.WorkEmail;
                    var uName = ctx.CurrentItem.PreferredName;
                    var uPicUrl = ctx.CurrentItem.PictureURL;
                    var userPersonaId = $htmlEncode(id) + "_peopleUserPersona";
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(itemId) ,'" name="Item" class="ms-srch-people-intentItem">'
,'                        <div id="UserPersona">'
,'                            <div id="', userPersonaId ,'"></div>'
,'                        </div>'
,'                        <div id="ContactInfo">'
,'                            <ul id="ContactCard">'
,'                                <li id="NameField">'
);  
                                    var encodedName = (haspn == true) ? $htmlEncode(ctx.CurrentItem.PreferredName) : $htmlEncode(ctx.CurrentItem.YomiDisplayName);
                                    var displayName = Srch.U.getSingleHHXMLNodeValue(hhProps, "preferredname");
                                    if ($isEmptyString(displayName)) { displayName = encodedName }
ms_outHtml.push(''
,'                                        <a clicktype="Result" href="', pathEncoded ,'" title="', encodedName ,'"> '
,'                                            <div id="NameValue" class="ms-srch-ellipsis">', displayName ,' </div>'
,'                                        </a>'
,'                                </li>'
);  
                                if(hasjt == true) {
ms_outHtml.push(''
,'                                    <li id="JobTitleField">'
);  
                                        var encodedJtitle = $htmlEncode(ctx.CurrentItem.JobTitle);
                                        var displayJtitle = Srch.U.getSingleHHXMLNodeValue(hhProps, "jobtitle");
                                        if ($isEmptyString(displayJtitle)) { displayJtitle = encodedJtitle }
ms_outHtml.push(' '
,'                                        <div id="JobTitleValue" class="ms-textSmall ms-srch-ellipsis" title="', encodedJtitle ,'"> ', displayJtitle ,' </div>'
,'                                    </li>'
);  
                                }
ms_outHtml.push(''
);  
                                if(hasdp == true) {
ms_outHtml.push(''
,'                                    <li id="DepartmentField">'
);  
                                        var encodedDept = $htmlEncode(ctx.CurrentItem.Department);
                                        var displayDept = Srch.U.getSingleHHXMLNodeValue(hhProps, "department");
                                        if ($isEmptyString(displayDept)) { displayDept = encodedDept }
ms_outHtml.push(' '
,'                                        <div id="DepartmentValue" class="ms-textSmall ms-srch-ellipsis" title="', encodedDept ,'"> ', displayDept ,' </div>'
,'                                    </li>'
);  
                                } 
ms_outHtml.push(''
,'                            </ul>'
,'                        </div>'
,'                    </div>'
);  
                } else {
ms_outHtml.push(''
); 
                    var hoverId = id + Srch.U.Ids.hover;
                    var container_id = id + "_peopleContainer";
                    var hhProps = Srch.U.createXMLDocument("<root>" + ctx.CurrentItem.HitHighlightedProperties + "</root>");
                    var encodedPath = $urlHtmlEncode(ctx.CurrentItem.Path);
                    var has_pn = !$isEmptyString(ctx.CurrentItem.PreferredName);
                    var has_sip = !$isEmptyString(ctx.CurrentItem.SipAddress);
                    var has_email = !$isEmptyString(ctx.CurrentItem.WorkEmail);
                    var has_jt = !$isEmptyString(ctx.CurrentItem.JobTitle);
                    var has_dp = !$isEmptyString(ctx.CurrentItem.Department);
                    var has_abme = !$isEmptyString(ctx.CurrentItem.AboutMe);
                    var has_resp = !$isEmptyString(ctx.CurrentItem.Responsibilities);
                    var has_pp = !$isEmptyString(ctx.CurrentItem.PastProjects);
                    var has_ski = !$isEmptyString(ctx.CurrentItem.Skills);
                    var has_sch = !$isEmptyString(ctx.CurrentItem.Schools);
                    var has_int = !$isEmptyString(ctx.CurrentItem.Interests);
                    var has_vlm = !$isEmptyString(ctx.CurrentItem.ProfileViewsLastMonth);
                    var has_vlw = !$isEmptyString(ctx.CurrentItem.ProfileViewsLastWeek);
                    var has_query = !$isEmptyString(ctx.CurrentItem.ProfileQueriesFoundYou); 
                    var isSelfSrch = (has_vlm == true || has_vlw == true || has_query == true);
                    var delimiter = "";
                    var uSip = ctx.CurrentItem.SipAddress;
                    var uEmail = ctx.CurrentItem.WorkEmail;
                    var uName = ctx.CurrentItem.PreferredName;
                    var uPicUrl = ctx.CurrentItem.PictureURL;
                    var userPersonaId = $htmlEncode(id) + "_peopleUserPersona";
                    var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_Person_HoverPanel.js";
ms_outHtml.push(''
,'                    <div id="', $htmlEncode(container_id) ,'" class="ms-srch-people-outerContainer ms-srch-resultHover">'
,'                        <div id="', $htmlEncode(itemId) ,'" name="Item" class="ms-srch-people-item" onmouseover="EnsureScriptParams(\'SearchUI.js\', \'HP.Init\', event, \'',$scriptEncode(itemId) ,'\', \'',$scriptEncode(hoverId) ,'\', \'',$scriptEncode(hoverUrl) ,'\');" onmouseout="EnsureScriptParams(\'SearchUI.js\', \'HP.Hide\');">'
,'                        <div id="', $htmlEncode(hoverId) ,'" class="ms-srch-hover-outerContainer"></div>'
,'                            <div id="UserPersonaContainer">'
,'                                <div id="UserPersona">'
,'                                    <div id="', userPersonaId ,'"></div>'
,'                                </div>'
,'                            </div>'
,'                            <div id="UserInfoContainer">'
,'                                <div id="ContactInfo">'
,'                                    <div id="NameField">'
); 
                                        var encodedName = (has_pn == true) ? $htmlEncode(ctx.CurrentItem.PreferredName) : $htmlEncode(ctx.CurrentItem.YomiDisplayName);
                                        var displayName = Srch.U.getSingleHHXMLNodeValue(hhProps, "preferredname");
                                        if ($isEmptyString(displayName)) { displayName = encodedName }
ms_outHtml.push(''
,'                                        <div id="NameValue" class="ms-srch-ellipsis ms-textLarge">'
,'                                            <a clicktype="Result" id="NameFieldLink" href="', encodedPath ,'" title="', encodedName ,'">', displayName ,'</a>'
,'                                        </div>'
,'                                    </div>'
); 
                                    if(has_jt == true) {
ms_outHtml.push(''
,'                                        <div id="JobTitleField">'
); 
                                            var encodedJtitle = $htmlEncode(ctx.CurrentItem.JobTitle);
                                            var displayJtitle = Srch.U.getSingleHHXMLNodeValue(hhProps, "jobtitle");
                                            if ($isEmptyString(displayJtitle)) { displayJtitle = encodedJtitle }
ms_outHtml.push(' '
,'                                            <div id="JobTitleValue" class="ms-srch-ellipsis" title="', encodedJtitle ,'"> ', displayJtitle ,' </div>'
,'                                        </div>'
); 
                                    }
ms_outHtml.push(''
); 
                                    if(has_dp == true) {
ms_outHtml.push(''
,'                                        <div id="DepartmentField">'
); 
                                            var encodedDept = $htmlEncode(ctx.CurrentItem.Department);
                                            var displayDept = Srch.U.getSingleHHXMLNodeValue(hhProps, "department");
                                            if ($isEmptyString(displayDept)) { displayDept = encodedDept }
ms_outHtml.push(' '
,'                                            <div id="DepartmentValue" class="ms-srch-ellipsis" title="', encodedDept ,'"> ', displayDept ,' </div>'
,'                                        </div>'
); 
                                    }
ms_outHtml.push(''
,'                                </div>'
); 
                                if(has_resp == true || has_ski == true || has_pp == true || has_int == true || has_sch == true) {
ms_outHtml.push(''
,'                                    <div id="MoreInfoShort">'
); 
                                        if(has_resp == true) {
                                            var encodedVal = Srch.U.getMultipleHHXMLNodeValues(hhProps, "responsibilities", 3, delimiter);
                                            if (Srch.U.e(encodedVal)) { encodedVal = $htmlEncode(Srch.U.getUnEncodedMultiValuedResults(ctx.CurrentItem.Responsibilities, 3, delimiter))}
                                            if (!Srch.U.e(encodedVal)) {
ms_outHtml.push(''
,'                                                <div id="ResponsibilitiesValue" class="ms-srch-ellipsis"> '
,'                                                    <span id="FieldTitle" class="ms-soften"> ', $htmlEncode(Srch.Res.item_People_Responsibilities) ,' </span>'
,'                                                    ', encodedVal ,' '
,'                                                 </div>'
); 
                                            }
ms_outHtml.push(''
); 
                                        } else if(has_ski == true) {
                                            var encodedVal = Srch.U.getMultipleHHXMLNodeValues(hhProps, "skills", 3, delimiter);
                                            if (Srch.U.e(encodedVal)) { encodedVal = $htmlEncode(Srch.U.getUnEncodedMultiValuedResults(ctx.CurrentItem.Skills, 3, delimiter))}
                                            if (!Srch.U.e(encodedVal)) {
ms_outHtml.push(''
,'                                                <div id="SkillsValue" class="ms-srch-ellipsis"> '
,'                                                    <span id="FieldTitle" class="ms-soften"> ', $htmlEncode(Srch.Res.item_People_Skills) ,' </span>'
,'                                                    ', encodedVal ,' '
,'                                                </div>'
); 
                                            } 
ms_outHtml.push(''
); 
                                        } else if(has_pp == true) {
                                            var encodedVal = Srch.U.getMultipleHHXMLNodeValues(hhProps, "pastprojects", 3, delimiter);
                                            if (Srch.U.e(encodedVal)) { encodedVal = $htmlEncode(Srch.U.getUnEncodedMultiValuedResults(ctx.CurrentItem.PastProjects, 3, delimiter))}
                                            if (!Srch.U.e(encodedVal)) {
ms_outHtml.push(''
,'                                                <div id="PastProjectsValue" class="ms-srch-ellipsis"> '
,'                                                    <span id="FieldTitle" class="ms-soften"> ', $htmlEncode(Srch.Res.item_People_PastProjects) ,' </span>'
,'                                                    ', encodedVal ,' '
,'                                                </div>'
); 
                                            } 
ms_outHtml.push(''
); 
                                        } else if(has_int == true) {
                                            var encodedVal = Srch.U.getMultipleHHXMLNodeValues(hhProps, "interests", 3, delimiter);
                                            if (Srch.U.e(encodedVal)) { encodedVal = $htmlEncode(Srch.U.getUnEncodedMultiValuedResults(ctx.CurrentItem.Interests, 3, delimiter))}
                                            if (!Srch.U.e(encodedVal)) {
ms_outHtml.push(''
,'                                                <div id="InterestsValue" class="ms-srch-ellipsis"> '
,'                                                    <span id="FieldTitle" class="ms-soften"> ', $htmlEncode(Srch.Res.item_People_Interests) ,' </span>'
,'                                                    ', encodedVal ,' '
,'                                                </div>'
); 
                                            } 
ms_outHtml.push(''
); 
                                        } else if(has_sch == true){
                                            var encodedVal = Srch.U.getMultipleHHXMLNodeValues(hhProps, "schools", 3, delimiter);
                                            if (Srch.U.e(encodedVal)) { encodedVal = $htmlEncode(Srch.U.getUnEncodedMultiValuedResults(ctx.CurrentItem.Schools, 3, delimiter))}
                                            if (!Srch.U.e(encodedVal)) {
ms_outHtml.push(''
,'                                                <div id="SchoolsValue" class="ms-srch-ellipsis"> '
,'                                                    <span id="FieldTitle" class="ms-soften"> ', $htmlEncode(Srch.Res.item_People_Schools) ,' </span>'
,'                                                    ', encodedVal ,' '
,'                                                </div>'
); 
                                            } 
ms_outHtml.push(''
); 
                                        } 
ms_outHtml.push(''
,'                                    </div>'
); 
                                } 
ms_outHtml.push(''
); 
                                if(has_abme == true || has_ski == true || has_pp == true || has_int == true) {
ms_outHtml.push('                                '
,'                                    <div id="MoreInfoLong">'
); 
                                        if(has_abme == true) {
                                            var encodedVal = Srch.U.getTrimmedProcessedHHXMLString(Srch.U.getSingleHHXMLNodeValue(hhProps, "aboutme"), 125);
                                            if (Srch.U.e(encodedVal)) { encodedVal = $htmlEncode(Srch.U.getTrimmedString(ctx.CurrentItem.AboutMe, 125)) }
                                            if (!Srch.U.e(encodedVal)) {
ms_outHtml.push(''
,'                                                ', encodedVal ,' '
); 
                                            } 
ms_outHtml.push(''
); 
                                        } else if(has_ski == true && has_resp == true) {
                                            var encodedVal = Srch.U.getTrimmedProcessedHHXMLString(Srch.U.getMultipleHHXMLNodeValues(hhProps, "skills", 3, delimiter), 125);
                                            if (Srch.U.e(encodedVal)) { encodedVal = $htmlEncode(Srch.U.getTrimmedString(Srch.U.getUnEncodedMultiValuedResults(ctx.CurrentItem.Skills, 3, delimiter), 125)) }
                                            if (!Srch.U.e(encodedVal)) {
ms_outHtml.push(''
,'                                                <span id="FieldTitle" class="ms-soften"> ', $htmlEncode(Srch.Res.item_People_Skills) ,' </span> '
,'                                                ', encodedVal ,' '
); 
                                            } 
ms_outHtml.push(''
); 
                                        } else if(has_pp == true && (has_ski == true || has_resp == true)) {
                                            var encodedVal = Srch.U.getTrimmedProcessedHHXMLString(Srch.U.getMultipleHHXMLNodeValues(hhProps, "pastprojects", 3, delimiter), 125);
                                            if (Srch.U.e(encodedVal)) { encodedVal = $htmlEncode(Srch.U.getTrimmedString(Srch.U.getUnEncodedMultiValuedResults(ctx.CurrentItem.PastProjects, 3, delimiter), 125)) }
                                            if (!Srch.U.e(encodedVal)) {
ms_outHtml.push(''
,'                                                <span id="FieldTitle" class="ms-soften"> ', $htmlEncode(Srch.Res.item_People_PastProjects) ,' </span>'
,'                                                ', encodedVal ,' '
); 
                                            } 
ms_outHtml.push(''
); 
                                        } else if(has_int == true && (has_pp == true || has_ski == true || has_resp == true)) {
                                            var encodedVal = Srch.U.getTrimmedProcessedHHXMLString(Srch.U.getMultipleHHXMLNodeValues(hhProps, "interests", 3, delimiter), 125);
                                            if (Srch.U.e(encodedVal)) { encodedVal = $htmlEncode(Srch.U.getTrimmedString(Srch.U.getUnEncodedMultiValuedResults(ctx.CurrentItem.Interests, 3, delimiter), 125)) }
                                            if (!Srch.U.e(encodedVal)) {
ms_outHtml.push(''
,'                                                <span id="FieldTitle" class="ms-soften"> ', $htmlEncode(Srch.Res.item_People_Interests) ,' </span>'
,'                                                ', encodedVal ,''
); 
                                            } 
ms_outHtml.push(''
); 
                                        } 
ms_outHtml.push(''
,'                                    </div>'
); 
                                } 
ms_outHtml.push(''
); 
                                if(isSelfSrch == true) {
ms_outHtml.push(''
,'                                    <hr class="ms-srch-people-item-separator" />'
,'                                    <div id="SelfSearchInfo">'
,'                                        <div id="Heading">'
,'                                            <a id="EditProfileLink" href="', $urlHtmlEncode(ctx.CurrentItem.EditProfileUrl) ,'"> ', $htmlEncode(Srch.Res.item_People_EditProfileLink) ,' </a>'
,'                                        </div>'
,'                                        <div id="Frequency">'
,'                                            <span id="FieldTitle" class="ms-soften"> ', $htmlEncode(Srch.Res.item_People_SelfSearchFrequency) ,' </span>'
,'                                            <ul id="FrequencyCard">'
,'                                                <li id="MonthlyViews">'
); 
                                                    var encodedVal = (ctx.CurrentItem.ProfileViewsLastMonth == 1) ? $htmlEncode(String.format(Srch.Res.item_People_SelfSearchFrequency_ViewsMonths_Singular, ctx.CurrentItem.ProfileViewsLastMonth)) : 
                                                        $htmlEncode(String.format(Srch.Res.item_People_SelfSearchFrequency_ViewsMonths_Plural, ctx.CurrentItem.ProfileViewsLastMonth));
ms_outHtml.push(''
,'                                                       ', encodedVal ,'  '
,'                                                </li>'
,'                                                <li id="DailyViews">'
); 
                                                    var encodedVal = (ctx.CurrentItem.ProfileViewsLastWeek == 1) ? $htmlEncode(String.format(Srch.Res.item_People_SelfSearchFrequency_ViewsWeeks_Singular, ctx.CurrentItem.ProfileViewsLastWeek)) :
                                                        $htmlEncode(String.format(Srch.Res.item_People_SelfSearchFrequency_ViewsWeeks_Plural, ctx.CurrentItem.ProfileViewsLastWeek));
ms_outHtml.push(''
,'                                                    ', encodedVal ,'  '
,'                                                </li>'
,'                                            </ul>'
,'                                        </div>'
); 
                                        if(has_query == true) {
ms_outHtml.push('                                        '
,'                                            <div id="Keywords">'
,'                                                <span id="FieldTitle" class="ms-soften"> ', $htmlEncode(Srch.Res.item_People_SelfSearchKeywords) ,' </span>'
); 
                                                var encodedVal = $htmlEncode(Srch.U.getTrimmedString(Srch.U.getUnEncodedMultiValuedResults(ctx.CurrentItem.ProfileQueriesFoundYou, 5, delimiter), 84));
                                                if (!Srch.U.e(encodedVal)) {
ms_outHtml.push(''
,'                                                    ', encodedVal ,''
); 
                                                } 
ms_outHtml.push(''
,'                                            </div>    '
); 
                                        } 
ms_outHtml.push(''
); 
                                        if(!Srch.U.n(ctx.CurrentItem.LastModifiedTime))
                                        {
                                            var lastModifiedTime = ctx.CurrentItem.LastModifiedTime;
                                            var encodedLastModifiedTimeId = $htmlEncode(id + "_lastModifiedTime");
                                            AddPostRenderCallback(ctx, function()
                                            {ULSaRe:;
                                                Srch.U.renderFriendlyTimeIntervalString(lastModifiedTime, encodedLastModifiedTimeId);
                                            });
ms_outHtml.push(''
,'                                            <div id="LastModifiedTime"> '
,'                                                <span class="ms-textSmall">', $htmlEncode(Srch.Res.item_People_LastModified) ,'</span>'
,'                                                <span id="', encodedLastModifiedTimeId ,'" class="ms-textSmall ms-srch-ellipsis"></span>'
,'                                            </div>'
);
                                        }
ms_outHtml.push(''
,'                                    </div>'
); 
                                } 
ms_outHtml.push(''
,'                            </div> '
,'                        </div>'
,'                    </div>'
);  
                }
ms_outHtml.push('           '
);
                    AddPostRenderCallback(ctx, function(){ULSaRe:;
                        EnsureScriptFunc("clienttemplates.js", "RenderUserFieldWorker", function() {ULSaRe:;
                            var getUserPersona = function() {ULSaRe:;
                                var renderCtx = new ContextInfo();
                                renderCtx.Templates = {};
                                renderCtx.Templates["Fields"] = {};
                                var fieldSchemaData = { "PictureOnly":"1", "PictureSize": "Size_72px"};
                                var listSchema = {"EffectivePresenceEnabled": "1", "PresenceAlt": Srch.Res.item_People_NoPresenceAvailable};
                                var userData = {"title": uName, "email": uEmail, "picture": uPicUrl, "sip": uSip};
                                var personaControlElement = document.getElementById(userPersonaId);
                                if (!Srch.U.n(personaControlElement))
                                {
                                    personaControlElement.innerHTML = RenderUserFieldWorker(renderCtx, fieldSchemaData, userData, listSchema);
                                }
                                if(typeof(ctx.EnqueueImnRequest) == "undefined") { ctx.EnqueueImnRequest = false; }
                                if (ctx.EnqueueImnRequest == false) {
                                    ctx.ClientControl.add_oneTimeResultRendered(function(){ULSaRe:; if (typeof(ProcessImn) != "undefined") { ProcessImn(); } });
                                    ctx.EnqueueImnRequest = true;
                                 }
                            };
                            getUserPersona();
                        });
                    });
ms_outHtml.push(' '
);  
            } 
ms_outHtml.push(''
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_5a8ae7dac54b4390a456f8d80f19b233() {ULSaRe:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_Person_CompactHorizontal", DisplayTemplate_5a8ae7dac54b4390a456f8d80f19b233);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Person_CompactHorizontal.js", DisplayTemplate_5a8ae7dac54b4390a456f8d80f19b233);
}

}
RegisterTemplate_5a8ae7dac54b4390a456f8d80f19b233();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSearch\u002fItem_Person_CompactHorizontal.js"), RegisterTemplate_5a8ae7dac54b4390a456f8d80f19b233);
}
