<xsl:stylesheet
    version="1.0" 
    exclude-result-prefixes="x ddwrt xsl msxsl slwp cmswrt" 
    xmlns:x="http://www.w3.org/2001/XMLSchema"
    xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" 
    xmlns:slwp="urn:schemas-microsoft-com:SummaryLinkWebPart"
    xmlns:cmswrt="http://schemas.microsoft.com/WebPart/v3/Publishing/runtime"
	xmlns:pcm="urn:PageContentManager">
    <xsl:output method="xml" indent="no" media-type="text/html" omit-xml-declaration="yes"/>
    <xsl:param name="slw_columnwidth" />
    <xsl:param name="slw_webpartpostback" />
    <xsl:param name="slw_iseditmode" />
    <xsl:param name="slw_isungroupedmode" />
    <xsl:param name="slw_viewemptytext" />
    <xsl:param name="slw_clientid" />
    <xsl:param name="EffectiveDeviceChannel" />
    <xsl:variable name="Group" select="'Title'" />
    <xsl:variable name="GroupType" select="''" />
    <xsl:variable name="BeginList" select="string('&lt;ul class=&quot;dfwp-list&quot;&gt;')" />
    <xsl:variable name="EndList" select="string('&lt;/ul&gt;')" />
  <xsl:template match="/">
        <xsl:variable name="Rows" select="/dsQueryResponse/Rows/Row" />
        <xsl:variable name="RowCount" select="count($Rows)" />
        <xsl:variable name="IsEmpty" select="$RowCount = 0" />
        <xsl:if test="$slw_iseditmode = 'True' and not($IsEmpty)">
            <xsl:text disable-output-escaping="yes">
                &lt;%@ Register Tagprefix=&quot;SharePoint&quot; Namespace=&quot;Microsoft.SharePoint.WebControls&quot; Assembly=&quot;Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c&quot; %&gt;
                &lt;SharePoint:MenuTemplate ID=&quot;SummaryLinkItemMenuTemplate&quot; runat=&quot;server&quot;&gt;
                    &lt;SharePoint:MenuItemTemplate ID=&quot;SlwpEditLink&quot; Text=&quot;</xsl:text><xsl:value-of select="cmswrt:GetPublishingResource('SummaryLinkEcbMenuItemEdit')"/><xsl:text disable-output-escaping="yes">&quot; ImageUrl=&quot;/_layouts/images/EditItem.gif&quot; ClientOnClickScript=&quot;popupAddEditLinkDialog('%mode%','%loginname%', '%sipaddress%','%title%', '%description%', '%linkurl%', '%linktooltip%', '%imageurl%', '%imagealttext%', '%group%', '%linkid%', '%groups%', '%styles%', '%style%', '%openinnewwindow%', '%postBackReference%')&quot; runat=&quot;server&quot; /&gt;
                    &lt;SharePoint:MenuItemTemplate ID=&quot;SlwpDeleteLink&quot; Text=&quot;</xsl:text><xsl:value-of select="cmswrt:GetPublishingResource('SummaryLinkEcbMenuItemDelete')"/><xsl:text disable-output-escaping="yes">&quot; ImageUrl=&quot;/_layouts/images/DelItem.gif&quot; ClientOnClickScript=&quot;deleteSummaryLink('%linkid%','%postBackReference%')&quot; runat=&quot;server&quot; /&gt;
                &lt;/SharePoint:MenuTemplate&gt;
                &lt;SharePoint:MenuTemplate ID=&quot;SummaryLinkGroupMenuTemplate&quot; runat=&quot;server&quot;&gt;
                    &lt;SharePoint:MenuItemTemplate ID=&quot;SlwpEditGroup&quot; Text=&quot;</xsl:text><xsl:value-of select="cmswrt:GetPublishingResource('SummaryLinkEcbMenuGroupEdit')"/><xsl:text disable-output-escaping="yes">&quot; ImageUrl=&quot;/_layouts/images/EditItem.gif&quot; ClientOnClickScript=&quot;popupAddEditGroupDialog('%mode%','%group%','%linkid%','%groups%','%postBackReference%')&quot; runat=&quot;server&quot; /&gt;
                    &lt;SharePoint:MenuItemTemplate ID=&quot;SlwpDeleteGroup&quot; Text=&quot;</xsl:text><xsl:value-of select="cmswrt:GetPublishingResource('SummaryLinkEcbMenuGroupDelete')"/><xsl:text disable-output-escaping="yes">&quot; ImageUrl=&quot;/_layouts/images/DelItem.gif&quot; ClientOnClickScript=&quot;deleteSummaryLinkGroup('%linkid%','%postBackReference%')&quot; runat=&quot;server&quot; /&gt;
                &lt;/SharePoint:MenuTemplate&gt;
            </xsl:text>
        </xsl:if>
        <xsl:call-template name="OuterTemplate" >
            <xsl:with-param name="Rows" select="$Rows" />
            <xsl:with-param name="FirstRow" select="1" />
            <xsl:with-param name="LastRow" select="$RowCount" />
            <xsl:with-param name="IsEmpty" select="$IsEmpty" />
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="OuterTemplate">
        <xsl:param name="Rows" />
        <xsl:param name="FirstRow" />
        <xsl:param name="LastRow" />
        <xsl:param name="IsEmpty" />
        <xsl:if test="$slw_iseditmode='True'">
            <xsl:variable name="linksscript1">
                var slwp;
                if (slwp == null) slwp = new Array();
                slwp['<xsl:value-of select="$slw_clientid" />'] = "<xsl:value-of select="$slw_webpartpostback" />";
                var groupMap = new Object();
            </xsl:variable>
            <xsl:value-of select="pcm:RegisterScriptBlock(concat('linksscript1', $slw_clientid), string($linksscript1))"/>
        </xsl:if>
      <div id="slwp_{$slw_clientid}" class="slm-layout-main slwpmarker">
        <xsl:choose>
          <xsl:when test="not($IsEmpty)">
            <xsl:call-template name="OuterTemplate.Body">
              <xsl:with-param name="Rows" select="$Rows" />
              <xsl:with-param name="FirstRow" select="$FirstRow" />
              <xsl:with-param name="LastRow" select="$LastRow" />
            </xsl:call-template>
          </xsl:when>
          <xsl:when test="$slw_iseditmode='True'">
            <xsl:call-template name="OuterTemplate.Empty" />
          </xsl:when>
            <xsl:otherwise>
                <xsl:comment>empty</xsl:comment>
            </xsl:otherwise>
        </xsl:choose>
      </div>
    </xsl:template>
    <xsl:template name="OuterTemplate.Empty">
        <div class="wp-content description">
          <xsl:value-of select="$slw_viewemptytext" />
        </div>
    </xsl:template>
    <xsl:template name="OuterTemplate.Body">
        <xsl:param name="Rows" />
        <xsl:param name="FirstRow" />
        <xsl:param name="LastRow" />
        <xsl:variable name="BeginColumn1" select="string('&lt;div class=&quot;dfwp-column&quot; style=&quot;width:')" />
        <xsl:variable name="BeginColumn2" select="string('%&quot; &gt;')" />
        <xsl:variable name="BeginColumn" select="concat($BeginColumn1, $slw_columnwidth, $BeginColumn2)" />
        <xsl:variable name="EndColumn" select="string('&lt;/div&gt;')" />
        <xsl:variable name="EndGroup" select="string('&lt;/div&gt;')" />
      <xsl:for-each select="$Rows">
            <xsl:variable name="CurPosition" select="position()" />
            <xsl:if test="($CurPosition &gt;= $FirstRow and $CurPosition &lt;= $LastRow)">
                <xsl:variable name="StartNewGroup" select="@IsGroupHeader = 'True' or $CurPosition = $FirstRow" />
                <xsl:variable name="StartNewColumn" select="@BeginColumn = 'True'" />
                <xsl:choose>
                    <xsl:when test="$StartNewGroup and $StartNewColumn">
                        <xsl:choose>
                            <xsl:when test="$CurPosition = $FirstRow">
                                <xsl:value-of disable-output-escaping="yes" select="$BeginColumn"/>
                                <xsl:call-template name="EmitBeginGroupTag"/>
                                <xsl:call-template name="OuterTemplate.CallHeaderTemplate"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name="OuterTemplate.CallFooterTemplate"/>
                                <xsl:value-of disable-output-escaping="yes" select="concat($EndGroup, $EndColumn, $BeginColumn)"/>
                                <xsl:call-template name="EmitBeginGroupTag"/>
                                <xsl:call-template name="OuterTemplate.CallHeaderTemplate"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="$StartNewGroup">
                        <xsl:call-template name="OuterTemplate.CallFooterTemplate"/>
                        <xsl:value-of disable-output-escaping="yes" select="$EndGroup" />
                        <xsl:call-template name="EmitBeginGroupTag"/>
                        <xsl:call-template name="OuterTemplate.CallHeaderTemplate"/>
                    </xsl:when>
                    <xsl:when test="$StartNewColumn">
                        <xsl:choose>
                            <xsl:when test="$CurPosition = $FirstRow">
                                <xsl:value-of disable-output-escaping="yes" select="$BeginColumn" />
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of disable-output-escaping="yes" select="concat($EndColumn, $BeginColumn)" />
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:if test="@IsGroupHeader = 'False'">
                    <xsl:choose>
                        <xsl:when test="$slw_iseditmode = 'True'">
                          <li class="slm-layout-main" id="item_{@Order}">
                            <div class="item slm-edit-ecb">
                              <xsl:text disable-output-escaping="yes">
                                        &lt;%@ Register Tagprefix=&quot;PublishingWebControls&quot; Namespace=&quot;Microsoft.SharePoint.Publishing.Internal.WebControls&quot; Assembly=&quot;Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c&quot;%&gt;
                                        &lt;PublishingWebControls:SummaryLinkItemEcbMenu UseMaximumWidth=false MenuFormat=ArrowOnHover TemplateId=&quot;SummaryLinkItemMenuTemplate&quot; ItemId=&quot;</xsl:text>
                              <xsl:value-of disable-output-escaping="yes" select="@Order" />
                              <xsl:text disable-output-escaping="yes">&quot; ImageUrl=&quot;/_layouts/images/EditItem.gif&quot; runat=&quot;server&quot;  &gt;&lt;/PublishingWebControls:SummaryLinkItemEcbMenu&gt;
                                      </xsl:text>
                            </div>
                            <div class="slm-dragdrop-source slm-edit-link dragsourcemarker itemmarker">
                              <xsl:call-template name="OuterTemplate.CallItemTemplate">
                                <xsl:with-param name="EmitLiTag" select="false"/>
                              </xsl:call-template>
                            </div>
                          </li>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:call-template name="OuterTemplate.CallItemTemplate"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
                <xsl:if test="$CurPosition = $LastRow">
                    <xsl:call-template name="OuterTemplate.CallFooterTemplate"/>
                    <xsl:value-of disable-output-escaping="yes" select="$EndGroup" />
                    <xsl:value-of disable-output-escaping="yes" select="$EndColumn" />
                </xsl:if>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    <xsl:template name="OuterTemplate.CallHeaderTemplate">
        <xsl:choose>
            <xsl:when test="$slw_isungroupedmode = 'True'">
            </xsl:when>
            <xsl:when test="$slw_iseditmode = 'True'">
                <div class="slm-layout-main">
                    <span class="item slm-edit-ecb">
                    <xsl:text disable-output-escaping="yes">
                                &lt;%@ Register Tagprefix=&quot;PublishingWebControls&quot; Namespace=&quot;Microsoft.SharePoint.Publishing.Internal.WebControls&quot; Assembly=&quot;Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c&quot;%&gt;
                                &lt;PublishingWebControls:SummaryLinkGroupEcbMenu UseMaximumWidth=false MenuFormat=ArrowOnHover TemplateId=&quot;SummaryLinkGroupMenuTemplate&quot; ItemId=&quot;</xsl:text><xsl:value-of disable-output-escaping="yes" select="@Order" /><xsl:text disable-output-escaping="yes">&quot; ImageUrl=&quot;/_layouts/images/EditItem.gif&quot; runat=&quot;server&quot;  &gt;&lt;/PublishingWebControls:SummaryLinkGroupEcbMenu&gt;
                    </xsl:text>
                    </span>
                    <div class="slm-dragdrop-source slm-edit-link dragsourcemarker headermarker">
                        <xsl:apply-templates select="." mode="header">
                            </xsl:apply-templates>
                    </div>
                </div>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="." mode="header">
                </xsl:apply-templates>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of disable-output-escaping="yes" select="$BeginList" />
    </xsl:template>
    <xsl:template name="EscapeQuote">
        <xsl:param name="input" />
        <xsl:variable name="quote">
             <xsl:call-template name="EscapeGeneric">
                <xsl:with-param name="input" select="$input" />
                <xsl:with-param name="charToEscape" select="'&quot;'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="openSymbol">
             <xsl:call-template name="EscapeGeneric">
                <xsl:with-param name="input" select="$quote" />
                <xsl:with-param name="charToEscape" select="'&lt;'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="closedSymbol">
             <xsl:call-template name="EscapeGeneric">
                <xsl:with-param name="input" select="$openSymbol" />
                <xsl:with-param name="charToEscape" select="'&gt;'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:value-of select="$closedSymbol" />
    </xsl:template>
    <xsl:template name="EscapeGeneric">
        <xsl:param name="input" />
        <xsl:param name="charToEscape" />
            <xsl:choose>
                <xsl:when test='contains($input, $charToEscape)' >
                    <xsl:value-of select="substring-before($input, $charToEscape)" />
                    <xsl:choose>
                        <xsl:when test="charToEscape = '&quot;'">
                            <xsl:text>\"</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>~</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:call-template name="EscapeGeneric">
                        <xsl:with-param name="input" select="substring-after($input, $charToEscape)" />
                        <xsl:with-param name="charToEscape" select="$charToEscape" />
                    </xsl:call-template>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$input" />
                </xsl:otherwise>
            </xsl:choose>
    </xsl:template>
    <xsl:template name="EmitBeginGroupTag">
        <xsl:choose>
            <xsl:when test="$slw_iseditmode = 'True'">
                <xsl:variable name="BeginGroup1" select="string('&lt;div class=&quot;slm-layout-main groupmarker&quot; id=&quot;group_')" />
                <xsl:variable name="BeginGroup2" select="string('&quot;&gt;')" />
                <xsl:variable name="GroupID">
                    <xsl:number count="Row[@IsGroupHeader = 'True']"/>
                    <xsl:value-of select="$slw_clientid"/>
                </xsl:variable>
                <xsl:variable name="EscapedGroupName">
                    <xsl:call-template name="EscapeQuote">
                        <xsl:with-param name="input" select="@Title"/>
                    </xsl:call-template>
                </xsl:variable>
                <xsl:value-of disable-output-escaping="yes" select="concat($BeginGroup1, $GroupID, $BeginGroup2)" />
                <xsl:variable name="linksscript2">
                    groupMap['group_<xsl:value-of select="$GroupID"/>'] = "<xsl:value-of select="$EscapedGroupName"/>";
                </xsl:variable>
                <xsl:value-of select="pcm:RegisterScriptBlock(concat('linksscript2', $slw_clientid), string($linksscript2))"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of disable-output-escaping="yes" select="string('&lt;div class=&quot;slm-layout-main groupmarker&quot;&gt;')" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="OuterTemplate.CallItemTemplate">
      <xsl:param name="EmitLiTag" select="'true'" />
      <xsl:if test="$EmitLiTag = 'true'">
        <xsl:value-of disable-output-escaping="yes" select="string('&lt;li&gt;')" />
      </xsl:if>
      <xsl:apply-templates select="." mode="itemstyle">
      </xsl:apply-templates>
      <xsl:if test="$EmitLiTag = 'true'">
        <xsl:value-of disable-output-escaping="yes" select="string('&lt;/li &gt;')" />
      </xsl:if>
    </xsl:template>
    <xsl:template name="OuterTemplate.CallFooterTemplate">
        <xsl:value-of disable-output-escaping="yes" select="$EndList" />
        <div class="footermarker">
            <xsl:comment>empty</xsl:comment>            
        </div>
    </xsl:template>
    <xsl:template name="OuterTemplate.CallPresenceStatusIconTemplate">
        <xsl:variable name="prefix">IMNRC('</xsl:variable>
        <xsl:variable name="suffix">')</xsl:variable>
        <xsl:variable name="id" select="@Order"/>        
        <xsl:if test="string-length(@SipAddress) != 0">
            <span class="ms-imnSpan">
                <a href="#" onclick="IMNImageOnClick(event);return false;" class="ms-imnlink">
                    <span class="ms-spimn-presenceWrapper ms-imnImg ms-spimn-imgSize-10x10">
                        <img src="/_layouts/15/images/spimn.png?rev=23" class="ms-spimn-img ms-spimn-presence-disconnected-10x10x32" onload="{concat($prefix, @SipAddress, $suffix)}" ShowOfflinePawn="1" alt="" id="{concat('MWP_pawn_',$slw_clientid,'_',$id,',type=sip')}"/>
                    </span>
                </a>
            </span>
        </xsl:if>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetGroupName">
        <xsl:param name="GroupName"/>
        <xsl:param name="GroupType"/>
        <xsl:choose>
            <xsl:when test="string-length(normalize-space($GroupName)) = 0">
                <br/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$GroupName" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetTitle">
        <xsl:param name="Title"/>
        <xsl:value-of select="$Title"/>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetSafeLink">
        <xsl:param name="UrlColumnName"/>
        <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
            <xsl:with-param name="UrlColumnName" select="$UrlColumnName"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetSafeStaticUrl">
        <xsl:param name="UrlColumnName"/>
        <xsl:value-of select="@*[name()=$UrlColumnName]"/>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetColumnDataForUnescapedOutput">
    </xsl:template>
</xsl:stylesheet>
