function ULSeIv(){var o=new Object;o.ULSTeamName="Search Server";o.ULSFileName="Item_eDiscoveryExchange_HoverPanel.js";return o;}
function DisplayTemplate_5c135f8bc39d4ef498660c894c89d7e9(ctx) {ULSeIv:;
  var ms_outHtml=[];
  var cachePreviousTemplateData = ctx['DisplayTemplateData'];
  ctx['DisplayTemplateData'] = new Object();
  DisplayTemplate_5c135f8bc39d4ef498660c894c89d7e9.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['TemplateUrl']='~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_eDiscoveryExchange_HoverPanel.js';
  ctx['DisplayTemplateData']['TemplateType']='Item';
  ctx['DisplayTemplateData']['TargetControlType']=['SearchResults'];
  this.DisplayTemplateData = ctx['DisplayTemplateData'];

  ctx['DisplayTemplateData']['ManagedPropertyMapping']={'Subject':['Subject'], 'To':['ToRecipients'], 'Sender':['Sender'], 'Sent Time':['SentTime'], 'BccRecipients':['BccRecipients'], 'CcRecipients':['CcRecipients'], 'CreatedTime':['CreatedTime'], 'HasAttachment':['HasAttachment'], 'Importance':['Importance'], 'Preview':['Preview'], 'OwaLink':['OwaLink'], 'Size':['Size'], 'ExchangeType':['Kind']};
  var cachePreviousItemValuesFunction = ctx['ItemValues'];
  ctx['ItemValues'] = function(slotOrPropName) {ULSeIv:;
    return Srch.ValueInfo.getCachedCtxItemValue(ctx, slotOrPropName)
};

ms_outHtml.push('',''
);
var id = ctx.CurrentItem.csr_id;

var subject = $getItemValue(ctx,"Subject");
var subjectRenderer = function(valueInfo)
{ULSeIv:;
    var subjectValue = $resource("edisc_NoSubject");
    if(!valueInfo.isEmpty)
    {
        subjectValue = valueInfo.value;
    }
    return $htmlEncode(subjectValue);
}
subject.overrideValueRenderer(subjectRenderer);

var path = $getItemValue(ctx, "OwaLink");
path.overrideValueRenderer($urlHtmlEncode);

var size = $getItemValue(ctx,"Size");
size.isEmpty = $isNull(size.value) || !HP.IsNumeric(size.value);
if(!size.isEmpty)
{
    var sizeInKB = Math.round(size.value / 1024);
    size.isEmpty = sizeInKB <= 0;
    var sizeRenderer = function(valueInfo)
    {ULSeIv:;
        var sizeInKB = Math.round(valueInfo.value / 1024);
        return $htmlEncode(String.format($resource("hp_Size"), sizeInKB.localeFormat("N0")));
    };
    size.overrideValueRenderer(sizeRenderer);
}

var sender = $getItemValue(ctx,"Sender");

var multiValueEncode = function(valueInfo)
{ULSeIv:;
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
                returnValue += String.format($resource("edisc_MultiValueFormat"), currentItemValue);
            }
        }
    }
    return $htmlEncode(returnValue);
}

var recipients = $getItemValue(ctx,"To");
recipients.overrideValueRenderer(multiValueEncode);

var cc = $getItemValue(ctx,"CcRecipients");
cc.overrideValueRenderer(multiValueEncode);

var bcc = $getItemValue(ctx,"BccRecipients");
bcc.overrideValueRenderer(multiValueEncode);

var preview = $getItemValue(ctx,"Preview");

var hasAttachment = $getItemValue(ctx,"HasAttachment");

var exchangeTypeLookup = 
{
    "email" :       $resource("rf_EDiscExTypeRefinerValue_Email"),
    "contacts" :    $resource("rf_EDiscExTypeRefinerValue_Contacts"),
    "meetings" :    $resource("rf_EDiscExTypeRefinerValue_Meetings"),
    "tasks" :       $resource("rf_EDiscExTypeRefinerValue_Tasks"),
    "notes" :       $resource("rf_EDiscExTypeRefinerValue_Notes"),
    "docs" :        $resource("rf_EDiscExTypeRefinerValue_Documents"),
    "journals" :    $resource("rf_EDiscExTypeRefinerValue_Journal"),
    "im" :          $resource("rf_EDiscExTypeRefinerValue_IM")
}

var exchangeType = $getItemValue(ctx,"ExchangeType");
if(!exchangeType.isEmpty)
{
    exchangeType.isEmpty = $isEmptyString(exchangeTypeLookup[exchangeType.value]);
    var exchangeTypeRenderer = function(valueInfo)
    {ULSeIv:;
        return $htmlEncode(exchangeTypeLookup[exchangeType.value]);
    };
    exchangeType.overrideValueRenderer(exchangeTypeRenderer);
}

var innerContainerId = id + HP.ids.inner;
if(!preview.isEmpty) {
    $addRenderContextCallback(ctx, "OnPostRender", function(){ULSeIv:;
        HP.SetWidth(id, innerContainerId, 500);
    });
}

var dataShown = !sender.isEmpty || !recipients.isEpmty || !cc.isEmpty || !bcc.isEmpty || !preview.isEmpty;
ms_outHtml.push(''
,'    <div class="ms-srch-hover-innerContainer ms-srch-hover-wacSize" id="', $htmlEncode(innerContainerId) ,'">'
,'        <div class="ms-srch-hover-arrowBorder" id="', $htmlEncode(id + HP.ids.arrowBorder) ,'"></div>'
,'        <div class="ms-srch-hover-arrow" id="', $htmlEncode(id + HP.ids.arrow) ,'"></div>'
,'        <div class="ms-srch-hover-content" id="', $htmlEncode(id + HP.ids.content) ,'" data-displaytemplate="DiscoveryExchangeHoverPanel">'
,'            <div id="', $htmlEncode(id + HP.ids.header) ,'" class="ms-srch-hover-header">'
,'                <div>'
,'                    <div class="ms-srch-hover-close">'
,'                        <a href="javascript:HP.Close()" id="', $htmlEncode(id + HP.ids.close) ,'" title="', $htmlEncode($resource('hp_Tooltip_Close')) ,'">'
,'                            <img src="', $urlHtmlEncode(SP.Utilities.VersionUtility.getImageUrl(Srch.SU.closeImage)) ,'" alt="', $htmlEncode($resource('hp_Tooltip_Close')) ,'" />'
,'                        </a>'
,'                    </div>'
);
if (!path.isEmpty) 
{
ms_outHtml.push(''
,'                    <div class="ms-srch-hover-title">'
,'                        <a clicktype="Result" id="', $htmlEncode(id + HP.ids.title) ,'" title="', subject ,'" href="', path ,'">'
);
    if(!hasAttachment.isEmpty && hasAttachment.value == true)
    {
ms_outHtml.push(''
,'                            <img class="ms-srch-item-icon ms-positionRelative" alt="', $htmlEncode($resource('hp_EDisc_AttachmentsTooltip')) ,'" id="', $htmlEncode(id + Srch.U.Ids.icon) ,'" onload="this.style.display=\'inline\';this.style.bottom=\'-5px\';" src="', $urlHtmlEncode(SP.Utilities.VersionUtility.getImageUrl('attach16.png')) ,'" onerror="this.style.display=\'none\';" />'
);
    }
ms_outHtml.push(''
,'                            <h2 class="ms-accentText ms-srch-ellipsis">', subject ,'</h2>'
,'                        </a>'
,'                    </div>'
);
}
ms_outHtml.push(''
,'                </div>'
,'                <div class="ms-srch-hover-filedata ms-metadata">'
,'                    <div class="ms-srch-hover-filetype">'
);
if (!exchangeType.isEmpty)
{
ms_outHtml.push(''
,'                        <span id="', $htmlEncode(id + HP.ids.fileType) ,'">'
,'                            ', exchangeType ,' &#160;'
,'                        </span>'
);
}
if (!size.isEmpty)
{
ms_outHtml.push(''
,'                        <span id="', $htmlEncode(id + HP.ids.size) ,'">'
,'                            ', size ,''
,'                        </span>'
);
}
ms_outHtml.push(''
,'                    </div>'
,'                </div>'
,'            </div>'
,'            <div id="', $htmlEncode(id + HP.ids.body) ,'" class="ms-srch-hover-body">'
);
if(!sender.isEmpty)
{
ms_outHtml.push(''
,'                <div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode($resource('hp_EDisc_From')) ,'</h3></div>'
,'                <div class="ms-srch-hover-text ms-srch-ellipsis" id="', $htmlEncode(id + '_hp_sender') ,'" title="', sender ,'">'
,'                    ', sender ,''
,'                </div>'
);
}
if(!recipients.isEpmty)
{
ms_outHtml.push(''
,'                <div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode($resource('hp_EDisc_To')) ,'</h3></div>'
,'                <div class="ms-srch-hover-text ms-srch-ellipsis" id="', $htmlEncode(id + '_hp_recipients') ,'" title="', recipients ,'">'
,'                    ', recipients ,''
,'                </div>'
);
}
if(!cc.isEmpty)
{
ms_outHtml.push(''
,'                <div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode($resource('hp_EDisc_Cc')) ,'</h3></div>'
,'                <div class="ms-srch-hover-text ms-srch-ellipsis" id="', $htmlEncode(id + '_hp_cc') ,'" title="', cc ,'">'
,'                    ', cc ,''
,'                </div>'
);
}
if(!bcc.isEmpty)
{
ms_outHtml.push(''
,'                <div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode($resource('hp_EDisc_Bcc')) ,'</h3></div>'
,'                <div class="ms-srch-hover-text ms-srch-ellipsis" id="', $htmlEncode(id + '_hp_bcc') ,'" title="', bcc ,'">'
,'                    ', bcc ,''
,'                </div>'
);
}
if(!preview.isEmpty)
{
ms_outHtml.push(''
,'                <div class="ms-srch-hover-subTitle"><h3 class="ms-soften">', $htmlEncode($resource('hp_Summary')) ,'</h3></div>'
,'                <div class="ms-srch-hover-text" id="', $htmlEncode(id + HP.ids.summary) ,'" title="', preview ,'">'
,'                    ', preview ,''
,'                </div>'
);
}
if(!dataShown)
{
ms_outHtml.push(''
,'                <div class="ms-srch-hover-text" id="', $htmlEncode(id + HP.ids.noData) ,'">', $htmlEncode($resource('hp_NoData')) ,'</div>'
);
}
ms_outHtml.push(''
,'            </div>'
,'        </div>'
,'    </div>'
);

  ctx['ItemValues'] = cachePreviousItemValuesFunction;
  ctx['DisplayTemplateData'] = cachePreviousTemplateData;
  return ms_outHtml.join('');
}
function RegisterTemplate_5c135f8bc39d4ef498660c894c89d7e9() {ULSeIv:;

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("Item_eDiscoveryExchange_HoverPanel", DisplayTemplate_5c135f8bc39d4ef498660c894c89d7e9);
}

if ("undefined" != typeof (Srch) &&"undefined" != typeof (Srch.U) &&typeof(Srch.U.registerRenderTemplateByName) == "function") {
  Srch.U.registerRenderTemplateByName("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_eDiscoveryExchange_HoverPanel.js", DisplayTemplate_5c135f8bc39d4ef498660c894c89d7e9);
}

}
RegisterTemplate_5c135f8bc39d4ef498660c894c89d7e9();
if (typeof(RegisterModuleInit) == "function" && typeof(Srch.U.replaceUrlTokens) == "function") {
  RegisterModuleInit(Srch.U.replaceUrlTokens("~sitecollection\u002f_catalogs\u002fmasterpage\u002fDisplay Templates\u002fSystem\u002fItem_eDiscoveryExchange_HoverPanel.js"), RegisterTemplate_5c135f8bc39d4ef498660c894c89d7e9);
}
