function ULSZgE(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_eDiscoveryExchangeResult.js";return o;}
function DisplayTemplate_b12eec294de549aebbc813b23ccca5a5(ctx) {ULSZgE:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_b12eec294de549aebbc813b23ccca5a5.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_eDiscoveryExchangeResult.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['Content Web Parts'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Subject':['Subject'], 'To':['ToRecipients'], 'Sender':['Sender'], 'Sent Time':['SentTime'], 'BccRecipients':['BccRecipients'], 'CcRecipients':['CcRecipients'], 'CreatedTime':['CreatedTime'], 'HasAttachment':['HasAttachment'], 'Importance':['Importance'], 'Preview':['Preview'], 'OwaLink':['OwaLink'], 'Size':['Size'], 'ExchangeType':['Kind']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSZgE:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
var subject = $getItemValue(ctx,"Subject");
var subjectRenderer = function(valueInfo)
{ULSZgE:;
    var subjectValue = $resource("edisc_NoSubject");
    if(!valueInfo.isEmpty)
    {
        subjectValue = valueInfo.value;
    }
    return $htmlEncode(subjectValue);
}
subject.overrideValueRenderer(subjectRenderer);

var owaLink = $getItemValue(ctx,"OwaLink");
owaLink.overrideValueRenderer($urlHtmlEncode);

var sender = $getItemValue(ctx,"Sender");

var multiValueEncode = function(valueInfo)
{ULSZgE:;
    var returnValue = "";
    if (!valueInfo.isNull && Srch.U.isArray(valueInfo.value) && !$isEmptyArray(valueInfo.value))
    {
        for (var i = 0; i < valueInfo.value.length; i++)
        {
            var currentItemValue = valueInfo.value[i].value;
            if(i == 0)
            {
                returnValue += currentItemValue;
            }
            else
            {
                returnValue += String.format(Srch.Res.edisc_MultiValueFormat, currentItemValue);
            }
        }
    }
    return $htmlEncode(returnValue);
}

var recipients = $getItemValue(ctx,"To");
recipients.overrideValueRenderer(multiValueEncode);

var sentTime = $getItemValue(ctx,"Sent Time");
var dateFormat = function(date)
{ULSZgE:;
    if(!(date.isNull) && !$isNull(date.value.format)) 
    {
        return $htmlEncode(date.value.localeFormat(Sys.CultureInfo.CurrentCulture.dateTimeFormat.ShortDatePattern));
    }
    else 
    {
        return "";
    }
};
sentTime.overrideValueRenderer(dateFormat);

window.eDiscIsDialog = function()
{ULSZgE:;
    return !$isNull(window.top.g_childDialog);
}

var id = ctx.ClientControl.get_nextUniqueId();
$setResultItem(id, ctx.CurrentItem);
var hoverUrl = "~sitecollection/_catalogs/masterpage/Display Templates/System/Item_eDiscoveryExchange_HoverPanel.js";
var hover_id = id + "_hover";
ms_outHtml.push(''
,'        <tr class="edisc-SearchResultItemContainer">'
,'            <td>'
,'                <div class="edisc-SearchResultItem" id="', $htmlEncode(id) ,'" name="Item" onmouseover="if (!eDiscIsDialog()) EnsureScriptParams(\'SearchUI.js\', \'HP.Init\', event, \'', $scriptEncode(id) ,'\', \'', $scriptEncode(hover_id) ,'\', \'', $scriptEncode(hoverUrl),'\');" onmouseout="if (!eDiscIsDialog()) EnsureScriptParams(\'SearchUI.js\', \'HP.Hide\');">'
,'                    <div id="', hover_id ,'" class="ms-srch-hover-outerContainer"></div>'
,'                        <div class="edisc-SubjectContainer">'
,'                            <a href="', owaLink ,'" TARGET="_blank">'
,'                                ', subject ,''
,'                            </a>'
,'                        </div>'
,'                </div>'
,'            </td>'
,'            <td>'
,'                <div class="edisc-PeopleContainer">'
,'                    ', recipients ,''
,'                </div>'
,'            </td>'
,'            <td>'
,'                <div class="edisc-PeopleContainer">'
,'                    ', sender ,''
,'                </div>'
,'            </td>'
,'            <td>'
,'                <div class="edisc-DateContainer">'
,'                    ', sentTime ,''
,'                </div>'
,'            </td>'
,'        </tr>'
,'    '
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_b12eec294de549aebbc813b23ccca5a5() {ULSZgE:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("DiscoveryResultItems", DisplayTemplate_b12eec294de549aebbc813b23ccca5a5);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_eDiscoveryExchangeResult.js", DisplayTemplate_b12eec294de549aebbc813b23ccca5a5);
}

}
RegisterTemplate_b12eec294de549aebbc813b23ccca5a5();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_eDiscoveryExchangeResult.js"), RegisterTemplate_b12eec294de549aebbc813b23ccca5a5);
}
