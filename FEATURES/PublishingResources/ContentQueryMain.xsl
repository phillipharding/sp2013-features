<xsl:stylesheet
    version="1.0"
    exclude-result-prefixes="x xsl cmswrt cbq" 
    xmlns:x="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:cmswrt="http://schemas.microsoft.com/WebPart/v3/Publishing/runtime"
    xmlns:cbq="urn:schemas-microsoft-com:ContentByQueryWebPart">
    <xsl:output method="xml" indent="no" media-type="text/html" omit-xml-declaration="yes"/>
    <xsl:param name="cbq_isgrouping" />
    <xsl:param name="cbq_columnwidth" />
    <xsl:param name="Group" />
    <xsl:param name="GroupType" />
    <xsl:param name="cbq_iseditmode" />
    <xsl:param name="cbq_viewemptytext" />
    <xsl:param name="cbq_errortext" />
    <xsl:param name="SiteId" />
    <xsl:param name="WebUrl" />
    <xsl:param name="PageId" />
    <xsl:param name="WebPartId" />
    <xsl:param name="FeedPageUrl" />
    <xsl:param name="FeedEnabled" />
    <xsl:param name="SiteUrl" />
    <xsl:param name="BlankTitle" />
    <xsl:param name="BlankGroup" />
    <xsl:param name="UseCopyUtil" />
    <xsl:param name="DataColumnTypes" />
    <xsl:param name="ClientId" />
    <xsl:param name="Source" />
    <xsl:param name="RootSiteRef" />
    <xsl:param name="CBQPageUrl" />
    <xsl:param name="CBQPageUrlQueryStringForFilters" />
    <xsl:param name="EffectiveDeviceChannel" />
  <xsl:variable name="BeginList" select="string('&lt;ul class=&quot;dfwp-list&quot;&gt;')" />
  <xsl:variable name="EndList" select="string('&lt;/ul&gt;')" />
  <xsl:variable name="BeginListItem" select="string('&lt;li class=&quot;dfwp-item&quot;&gt;')" />
  <xsl:variable name="EndListItem" select="string('&lt;/li&gt;')" />
  <xsl:template match="/">
        <xsl:call-template name="OuterTemplate" />
    </xsl:template>
    <xsl:template name="OuterTemplate">
        <xsl:variable name="Rows" select="/dsQueryResponse/Rows/Row" />
        <xsl:variable name="RowCount" select="count($Rows)" />
        <xsl:variable name="IsEmpty" select="$RowCount = 0" />
            <div id="{concat('cbqwp', $ClientId)}" class="cbq-layout-main">
                 <xsl:if test="$cbq_iseditmode = 'True' and string-length($cbq_errortext) != 0">
                    <div class="wp-content description">
                        <xsl:value-of disable-output-escaping="yes" select="$cbq_errortext" />
                    </div>
                  </xsl:if>
                  <xsl:choose>
                      <xsl:when test="$IsEmpty">
                           <xsl:call-template name="OuterTemplate.Empty" >
                               <xsl:with-param name="EditMode" select="$cbq_iseditmode" />
                           </xsl:call-template>
                      </xsl:when>
                      <xsl:otherwise>
                           <xsl:call-template name="OuterTemplate.Body">
                               <xsl:with-param name="Rows" select="$Rows" />
                               <xsl:with-param name="FirstRow" select="1" />
                               <xsl:with-param name="LastRow" select="$RowCount" />
                          </xsl:call-template>
                      </xsl:otherwise>
                  </xsl:choose>
            </div>
            <xsl:if test="$FeedEnabled = 'True' and $PageId != ''">
                <div class="cqfeed">
                    <xsl:variable name="FeedUrl1" select="concat($SiteUrl,$FeedPageUrl,'xsl=1&amp;web=',$WebUrl,'&amp;page=',$PageId,'&amp;wp=',$WebPartId,'&amp;pageurl=',$CBQPageUrl,$CBQPageUrlQueryStringForFilters)" />
                    <a href="{cmswrt:RegisterFeedUrl( $FeedUrl1, 'application/rss+xml')}"><img src="/_layouts/15/images/rss.gif?rev=23" border="0" alt="{cmswrt:GetPublishingResource('CbqRssAlt')}"/></a>
                </div>
            </xsl:if>
    </xsl:template>
    <xsl:template name="OuterTemplate.Empty">
        <xsl:param name="EditMode" />
        <xsl:choose>
            <xsl:when test="$EditMode = 'True' and string-length($cbq_errortext) = 0">
                <div class="wp-content description">
                <xsl:value-of disable-output-escaping="yes" select="$cbq_viewemptytext" />
                </div>
            </xsl:when>
            <xsl:otherwise>
                <xsl:comment>empty</xsl:comment>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="OuterTemplate.Body">
      <xsl:param name="Rows" />
      <xsl:param name="FirstRow" />
      <xsl:param name="LastRow" />
      <xsl:variable name="BeginColumn1" select="string('&lt;ul class=&quot;dfwp-column dfwp-list&quot; style=&quot;width:')" />
      <xsl:variable name="BeginColumn2" select="string('%&quot; &gt;')" />
      <xsl:variable name="BeginColumn" select="concat($BeginColumn1, $cbq_columnwidth, $BeginColumn2)" />
      <xsl:variable name="EndColumn" select="string('&lt;/ul&gt;')" />
      <xsl:for-each select="$Rows">
            <xsl:variable name="CurPosition" select="position()" />
            <xsl:if test="($CurPosition &gt;= $FirstRow and $CurPosition &lt;= $LastRow)">
                <xsl:variable name="StartNewGroup" select="@__begingroup = 'True'" />
                <xsl:variable name="StartNewColumn" select="@__begincolumn = 'True'" />
                <xsl:choose>
                    <xsl:when test="$cbq_isgrouping != 'True'">
                        <xsl:if test="$CurPosition = $FirstRow">
                            <xsl:value-of disable-output-escaping="yes" select="$BeginColumn" />
                        </xsl:if>
                    </xsl:when>
                    <xsl:when test="$StartNewGroup and $StartNewColumn">
                        <xsl:choose>
                            <xsl:when test="$CurPosition = $FirstRow">
                                <xsl:value-of disable-output-escaping="yes" select="$BeginColumn" />
                                <xsl:call-template name="OuterTemplate.CallHeaderTemplate"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name="OuterTemplate.CallFooterTemplate"/>
                                <xsl:value-of disable-output-escaping="yes" select="concat($EndColumn, $BeginColumn)" />
                                <xsl:call-template name="OuterTemplate.CallHeaderTemplate"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="$StartNewGroup">
                        <xsl:call-template name="OuterTemplate.CallFooterTemplate"/>
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
                <xsl:call-template name="OuterTemplate.CallItemTemplate">
                    <xsl:with-param name="CurPosition" select="$CurPosition" />
                </xsl:call-template>
                <xsl:if test="$CurPosition = $LastRow">
                  <xsl:if test="$cbq_isgrouping = 'True'">
                    <xsl:call-template name="OuterTemplate.CallFooterTemplate"/>
                  </xsl:if>
                  <xsl:value-of disable-output-escaping="yes" select="$EndColumn" />
                </xsl:if>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    <xsl:template name="OuterTemplate.CallHeaderTemplate">
      <xsl:value-of disable-output-escaping="yes" select="$BeginListItem" />
      <xsl:apply-templates select="." mode="header">
        </xsl:apply-templates>
      <xsl:value-of disable-output-escaping="yes" select="$BeginList" />
    </xsl:template>
    <xsl:template name="OuterTemplate.CallItemTemplate">
    <xsl:param name="CurPosition" />
      <xsl:value-of disable-output-escaping="yes" select="$BeginListItem" />
      <xsl:choose>
              <xsl:when test="@Style='NewsRollUpItem'">
                  <xsl:apply-templates select="." mode="itemstyle">
                     <xsl:with-param name="EditMode" select="$cbq_iseditmode" />
                  </xsl:apply-templates>
              </xsl:when>
              <xsl:when test="@Style='NewsBigItem'">
                  <xsl:apply-templates select="." mode="itemstyle">
                     <xsl:with-param name="CurPos" select="$CurPosition" />
                  </xsl:apply-templates>
              </xsl:when>
              <xsl:when test="@Style='NewsCategoryItem'">
                  <xsl:apply-templates select="." mode="itemstyle">
                     <xsl:with-param name="CurPos" select="$CurPosition" />
                  </xsl:apply-templates>
              </xsl:when>
              <xsl:otherwise>
                  <xsl:apply-templates select="." mode="itemstyle">
                  </xsl:apply-templates>
              </xsl:otherwise>
          </xsl:choose>
      <xsl:value-of disable-output-escaping="yes" select="$EndListItem" />
    </xsl:template>
    <xsl:template name="OuterTemplate.CallFooterTemplate">
      <xsl:value-of disable-output-escaping="yes" select="$EndList" />
      <xsl:value-of disable-output-escaping="yes" select="$EndListItem" />
    </xsl:template>
    <xsl:template name="OuterTemplate.GetSafeLink">
        <xsl:param name="UrlColumnName"/>
        <xsl:if test="$UseCopyUtil = 'True'">
            <xsl:value-of select="concat($RootSiteRef, '/_layouts/15/CopyUtil.aspx?Use=id&amp;Action=dispform&amp;ItemId=',@ID,'&amp;ListId=',@ListId,'&amp;WebId=',@WebId,'&amp;SiteId=',$SiteId,'&amp;Source=',$Source)"/>
        </xsl:if>
        <xsl:if test="$UseCopyUtil != 'True'">
            <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
                <xsl:with-param name="UrlColumnName" select="$UrlColumnName"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetTitle">
        <xsl:param name="Title"/>
        <xsl:param name="UrlColumnName"/>
        <xsl:param name="UseFileName" select="0"/>
        <xsl:choose>
           <xsl:when test="string-length($Title) != 0 and $UseFileName = 0">
                <xsl:value-of select="$Title" />
            </xsl:when>
            <xsl:when test="$UseCopyUtil = 'True' and $UseFileName = 0">
                <xsl:value-of select="$BlankTitle" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:variable name="FileNameWithExtension">
                    <xsl:call-template name="OuterTemplate.GetPageNameFromUrl">
                        <xsl:with-param name="UrlColumnName" select="$UrlColumnName" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$UseFileName = 1">
                      <xsl:call-template name="OuterTemplate.GetFileNameWithoutExtension">
                        <xsl:with-param name="input" select="$FileNameWithExtension" />
                      </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$FileNameWithExtension" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="OuterTemplate.FormatColumnIntoUrl">
        <xsl:param name="UrlColumnName"/>
        <xsl:variable name="Value" select="@*[name()=$UrlColumnName]"/>
        <xsl:if test="contains($DataColumnTypes,concat(';',$UrlColumnName,',URL;'))">
            <xsl:call-template name="OuterTemplate.FormatValueIntoUrl">
                <xsl:with-param name="Value" select="$Value"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="not(contains($DataColumnTypes,concat(';',$UrlColumnName,',URL;')))">
            <xsl:value-of select="$Value"/>
        </xsl:if>
    </xsl:template>
    <xsl:template name="OuterTemplate.FormatValueIntoUrl">
        <xsl:param name="Value"/>
        <xsl:if test="not(contains($Value,', '))">
            <xsl:value-of select="$Value"/>
        </xsl:if>
        <xsl:if test="contains($Value,', ')">
            <xsl:call-template name="OuterTemplate.Replace">
                <xsl:with-param name="Value" select="substring-before($Value,', ')"/>
                <xsl:with-param name="Search" select="',,'"/>
                <xsl:with-param name="Replace" select="','"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    <xsl:template name="OuterTemplate.Replace">
        <xsl:param name="Value"/>
        <xsl:param name="Search"/>
        <xsl:param name="Replace"/>
        <xsl:if test="contains($Value,$Search)">
            <xsl:value-of select="concat(substring-before($Value,$Search),$Replace)"/>
            <xsl:call-template name="OuterTemplate.Replace">
                <xsl:with-param name="Value" select="substring-after($Value,$Search)"/>
                <xsl:with-param name="Search" select="$Search"/>
                <xsl:with-param name="Replace" select="$Replace"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="not(contains($Value,$Search))">
            <xsl:value-of select="$Value"/>
        </xsl:if>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetSafeStaticUrl">
        <xsl:param name="UrlColumnName"/>
        <xsl:variable name="Url">
            <xsl:call-template name="OuterTemplate.FormatColumnIntoUrl">
                <xsl:with-param name="UrlColumnName" select="$UrlColumnName"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:value-of select="cmswrt:EnsureIsAllowedProtocol($Url)"/>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetColumnDataForUnescapedOutput">
        <xsl:param name="Name"/>
        <xsl:param name="MustBeOfType"/>
        <xsl:if test="contains($DataColumnTypes,concat(';',$Name,',',$MustBeOfType,';'))">
            <xsl:value-of select="@*[name()=$Name]"/>
        </xsl:if>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetPageNameFromUrl">
        <xsl:param name="UrlColumnName"/>
        <xsl:variable name="Url">
            <xsl:call-template name="OuterTemplate.FormatColumnIntoUrl">
                <xsl:with-param name="UrlColumnName" select="$UrlColumnName"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:call-template name="OuterTemplate.GetPageNameFromUrlRecursive">
            <xsl:with-param name="Url" select="$Url"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetPageNameFromUrlRecursive">
        <xsl:param name="Url"/>
        <xsl:choose>
            <xsl:when test="contains($Url,'/') and substring($Url,string-length($Url)) != '/'">
                <xsl:call-template name="OuterTemplate.GetPageNameFromUrlRecursive">
                    <xsl:with-param name="Url" select="substring-after($Url,'/')"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$Url"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetGroupName">
        <xsl:param name="GroupName"/>
        <xsl:param name="GroupType"/>
        <xsl:choose>
            <xsl:when test="string-length(normalize-space($GroupName)) = 0">
                <xsl:value-of select="$BlankGroup"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="$GroupType='URL'">
                        <xsl:variable name="Url">
                            <xsl:call-template name="OuterTemplate.FormatValueIntoUrl">
                                <xsl:with-param name="Value" select="$GroupName"/>
                            </xsl:call-template>
                        </xsl:variable>
                        <xsl:call-template name="OuterTemplate.GetPageNameFromUrlRecursive">
                            <xsl:with-param name="Url" select="$Url"/>
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$GroupName" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="OuterTemplate.CallPresenceStatusIconTemplate">
        <xsl:if test="string-length(@SipAddress) != 0">
          <span class="ms-imnSpan">
                <a href="#" onclick="IMNImageOnClick(event);return false;" class="ms-imnlink">
                    <span class="ms-spimn-presenceWrapper ms-imnImg ms-spimn-imgSize-10x10">
                        <img src="/_layouts/15/images/spimn.png?rev=23" class="ms-spimn-img ms-spimn-presence-disconnected-10x10x32" onload="IMNRC('{@SipAddress}')" ShowOfflinePawn="1" alt="" id="{concat('MWP_pawn_',$ClientId,'_',@ID,'type=sip')}"/>
                    </span>
                </a>
            </span>
        </xsl:if>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetFileNameWithoutExtension">
        <xsl:param name="input"/>
        <xsl:variable name="extension">
          <xsl:value-of select="substring-after($input, '.')"/>
        </xsl:variable>
        <xsl:choose>
          <xsl:when test="contains($extension, '.')">
            <xsl:variable name="afterextension">
              <xsl:call-template name="OuterTemplate.GetFileNameWithoutExtension">
                <xsl:with-param name="input" select="$extension"/>
              </xsl:call-template>
            </xsl:variable>
            <xsl:value-of select="concat(substring-before($input, '.'), $afterextension)"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:choose>
              <xsl:when test="contains($input, '.')">
                <xsl:value-of select="substring-before($input, '.')"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="$input"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:template>
  </xsl:stylesheet>
