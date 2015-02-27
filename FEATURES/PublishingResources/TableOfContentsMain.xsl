<xsl:stylesheet
    version="1.0" 
    exclude-result-prefixes="x d ddwrt slwrt xsl msxsl slwp cmswrt" 
    xmlns:x="http://www.w3.org/2001/XMLSchema" 
    xmlns:d="http://schemas.microsoft.com/sharepoint/dsp"
    xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" 
    xmlns:slwrt="http://schemas.microsoft.com/WebPart/v3/SummaryLink/runtime"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    xmlns:slwp="urn:schemas-microsoft-com:TableOfContentsWebPart"
    xmlns:cmswrt="http://schemas.microsoft.com/WebPart/v3/Publishing/runtime">
    <xsl:output method="xml" indent="no" media-type="text/html" omit-xml-declaration="yes"/>
    <xsl:param name="slw_columnwidth" />
    <xsl:param name="slw_iseditmode" />
    <xsl:param name="slw_viewemptytext" />
    <xsl:param name="Alignment" />
    <xsl:param name="EffectiveDeviceChannel" />
    <xsl:variable name="Group" select="'Group'" />
    <xsl:variable name="GroupType" select="''" />
    <xsl:variable name="nbsp" select="string('&amp;nbsp;')" />
    <xsl:template match="/Levels">
        <xsl:variable name="HeaderText" select="@Group" />
        <div class="toc-layout-main">
            <xsl:if test="string-length(normalize-space($HeaderText)) != 0">
                <xsl:call-template name="CallHeaderTemplate"/>
            </xsl:if>
            <xsl:call-template name="OuterTemplate" />
        </div>
    </xsl:template>
    <xsl:template name="list-template">
        <xsl:choose>
            <xsl:when test="count(child::Level) > 0">
                <ul class="dfwp-list">
                    <xsl:apply-templates select="Level" />
                </ul>
            </xsl:when>
            <xsl:when test="count(child::Item) > 0">
                <ul class="dfwp-list level-item-pos level-item">
                    <xsl:apply-templates select="Item" />
                </ul>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="OuterTemplate">
        <xsl:choose>
            <xsl:when test="count(child::Level) > 0">
                <ul class="dfwp-list">
                    <xsl:apply-templates select="Level" />
                </ul>
            </xsl:when>
            <xsl:when test="count(child::Item) > 0">
                <ul class="dfwp-list level-item-pos level-item">
                    <xsl:apply-templates select="Item" />
                </ul>
            </xsl:when>
            <xsl:when test="count(child::Level) = 0 and $slw_iseditmode = 'True'">
                <xsl:call-template name="OuterTemplate.EmptyEditMode" />
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="OuterTemplate.EmptyEditMode">
      <div class="toc-layout-main">
        <span class="wp-content description">
          <xsl:value-of disable-output-escaping="yes" select="$slw_viewemptytext" />
        </span>
      </div>
    </xsl:template>
    <xsl:template name="OuterTemplate.EmptyRuntimeMode">
      <div class="toc-layout-main">
      </div>
    </xsl:template>
  <xsl:template name="OuterTemplate.Body">
      <xsl:variable name="BeginColumn1" select="string('&lt;ul class=&quot;dfwp-column dfwp-list&quot; style=&quot;width:')" />
      <xsl:variable name="BeginColumn2" select="string('%&quot; &gt;')" />
      <xsl:variable name="BeginColumn" select="concat($BeginColumn1, $slw_columnwidth, $BeginColumn2)" />
      <xsl:variable name="EndColumn" select="string('&lt;/ul &gt;')" />
      <div class="toc-layout-main">
          <xsl:for-each select="Level">
              <xsl:variable name="StartNewColumn" select="@BeginColumn = 'true'" />
              <xsl:variable name="CurPosition" select="position()" />
              <xsl:if test="$StartNewColumn">
                  <xsl:choose>
                      <xsl:when test="$CurPosition = 1">
                          <xsl:value-of disable-output-escaping="yes" select="$BeginColumn" />
                      </xsl:when>
                      <xsl:otherwise>
                          <xsl:value-of disable-output-escaping="yes" select="concat($EndColumn, $BeginColumn)" />
                      </xsl:otherwise>
                  </xsl:choose>
              </xsl:if>
              <xsl:apply-templates select="." />
              <xsl:call-template name="OuterTemplate.RecurseLevel"/>
          </xsl:for-each>
          <xsl:value-of disable-output-escaping="yes" select="$EndColumn" />
      </div>
    </xsl:template>
    <xsl:template name="OuterTemplate.RecurseLevel">
      <xsl:variable name="BeginColumn1" select="string('&lt;ul class=&quot;dfwp-column dfwp-list&quot; style=&quot;width:')" />
      <xsl:variable name="BeginColumn2" select="string('%&quot; &gt;')" />
      <xsl:variable name="BeginColumn" select="concat($BeginColumn1, $slw_columnwidth, $BeginColumn2)" />
      <xsl:variable name="EndColumn" select="string('&lt;/ul &gt;')" />
      <xsl:for-each select="Level">
          <xsl:variable name="StartNewColumn" select="@BeginColumn = 'true'" />
          <xsl:variable name="CurPosition" select="position()" />
          <xsl:if test="$StartNewColumn">
              <xsl:value-of disable-output-escaping="yes" select="concat($EndColumn, $BeginColumn)" />
          </xsl:if>
          <xsl:apply-templates select="." />
          <xsl:call-template name="OuterTemplate.RecurseLevel"/>
      </xsl:for-each>
    </xsl:template>
    <xsl:template name="CallHeaderTemplate">
      <div>
      <xsl:apply-templates select="." mode="header" />
      </div>
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
    <xsl:template name="OuterTemplate.GetColumnDataForUnescapedOutput">
    </xsl:template>
</xsl:stylesheet>
