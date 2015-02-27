<xsl:stylesheet  
  version="1.0" 
  exclude-result-prefixes="x d ddwrt xsl msxsl" 
  xmlns:x="http://www.w3.org/2001/XMLSchema" 
  xmlns:d="http://schemas.microsoft.com/sharepoint/dsp"
  xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:msxsl="urn:schemas-microsoft-com:xslt">
  <xsl:template name="DefaultHeader" match="*" mode="header">
    <div class="groupheader item medium">
      <xsl:call-template name="OuterTemplate.GetGroupName">
        <xsl:with-param name="GroupName" select="@*[name()=$Group]"/>
        <xsl:with-param name="GroupType" select="$GroupType"/>
      </xsl:call-template>
    </div>
  </xsl:template>
  <xsl:template name="LargeText" match="*[@GroupStyle='LargeText']" mode="header">
    <div class="groupheader item large">
      <xsl:call-template name="OuterTemplate.GetGroupName">
          <xsl:with-param name="GroupName" select="@*[name()=$Group]"/>
          <xsl:with-param name="GroupType" select="$GroupType"/>
      </xsl:call-template>
    </div>
  </xsl:template>
  <xsl:template name="SmallText" match="*[@GroupStyle='SmallText']" mode="header">
    <div class="groupheader item small">
      <xsl:call-template name="OuterTemplate.GetGroupName">
          <xsl:with-param name="GroupName" select="@*[name()=$Group]"/>
          <xsl:with-param name="GroupType" select="$GroupType"/>
      </xsl:call-template>
    </div>
  </xsl:template>
  <xsl:template name="Band" match="*[@GroupStyle='Band']" mode="header">
    <div class="groupheader item band">
      <xsl:call-template name="OuterTemplate.GetGroupName">
          <xsl:with-param name="GroupName" select="@*[name()=$Group]"/>
          <xsl:with-param name="GroupType" select="$GroupType"/>
      </xsl:call-template>
    </div>
  </xsl:template>
  <xsl:template name="Centered" match="*[@GroupStyle='Centered']" mode="header">
    <div class="groupheader item centered">
      <xsl:call-template name="OuterTemplate.GetGroupName">
          <xsl:with-param name="GroupName" select="@*[name()=$Group]"/>
          <xsl:with-param name="GroupType" select="$GroupType"/>
      </xsl:call-template>
    </div>
  </xsl:template>
  <xsl:template name="Separator" match="*[@GroupStyle='Separator']" mode="header">
    <div class="separator">
      <xsl:comment>empty</xsl:comment>
    </div>
  </xsl:template>
  <xsl:template name="Whitespace" match="*[@GroupStyle='Whitespace']" mode="header">
    <div class="whitespace">
        <xsl:text>&#xA;</xsl:text>
    </div>
  </xsl:template>
</xsl:stylesheet>
