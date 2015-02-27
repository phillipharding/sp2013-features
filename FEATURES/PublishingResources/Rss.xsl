<xsl:stylesheet xmlns:x="http://www.w3.org/2001/XMLSchema"
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:cmswrt="http://schemas.microsoft.com/WebPart/v3/Publishing/runtime"
    exclude-result-prefixes="xsl cmswrt x">
    <xsl:output method="xml" indent="no" />
    <xsl:param name="SiteId" />
    <xsl:param name="FeedTitle" />
    <xsl:param name="FeedDescription" />
    <xsl:param name="PageUrl" />
    <xsl:param name="BlankTitle" />
    <xsl:param name="UseCopyUtil" />
    <xsl:param name="SiteUrl" />
    <xsl:template match="/">
        <xsl:call-template name="OuterTemplate" />
    </xsl:template>
    <xsl:template name="OuterTemplate">
        <xsl:variable name="Rows" select="/dsQueryResponse/Rows/Row" />
        <xsl:variable name="RowCount" select="count($Rows)" />
        <xsl:variable name="IsEmpty" select="$RowCount = 0" />
        <rss version="2.0">
            <channel>
                <title><xsl:value-of select="$FeedTitle"/></title> 
                <xsl:value-of select="'&lt;link&gt;'" disable-output-escaping="yes" />
                <xsl:value-of select="$PageUrl"/>
                <xsl:value-of select="'&lt;/link&gt;'" disable-output-escaping="yes" />    
                <description><xsl:value-of select="$FeedDescription"/></description> 
                <ttl>60</ttl>
                <xsl:for-each select="$Rows">
                    <item>
                        <title>
                            <xsl:if test="string-length(@Title) != 0">
                                <xsl:value-of select="@Title" />
                            </xsl:if>
                            <xsl:if test="string-length(@Title) = 0">
                                <xsl:value-of select="$BlankTitle"/>
                            </xsl:if>
                        </title>
                        <xsl:value-of select="'&lt;link&gt;'" disable-output-escaping="yes" />
                            <xsl:call-template name="OuterTemplate.GetSafeLink">
                                <xsl:with-param name="Url" select="@LinkUrl" />
                            </xsl:call-template>
                        <xsl:value-of select="'&lt;/link&gt;'" disable-output-escaping="yes" />                 
                        <description>
                            <xsl:if test="string-length(@Description) != 0">
                                <xsl:value-of disable-output-escaping="no" select="@Description" />
                            </xsl:if>
                        </description>
                        <pubDate>
                            <xsl:value-of disable-output-escaping="no" select="@PubDate" />
                        </pubDate>
                        <xsl:if test="string-length(@FileExtension) != 0 and string-length(@FileSize) != 0">
                            <xsl:variable name="Url">
                                <xsl:call-template name="OuterTemplate.GetSafeLink">
                                    <xsl:with-param name="Url" select="@LinkUrl"/>
                                </xsl:call-template>
                            </xsl:variable>
                            <xsl:variable name="FileExtensionInLowCase" select="translate(@FileExtension, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz')" />
                            <xsl:if test="starts-with($Url, 'http://')">
                                <xsl:choose>
                                    <xsl:when test="$FileExtensionInLowCase='wma'">
                                        <enclosure>
                                            <xsl:attribute name = "url" >
                                                <xsl:value-of select="$Url"/>
                                            </xsl:attribute>
                                            <xsl:attribute name = "length" >
                                                <xsl:value-of select="@FileSize"/>
                                            </xsl:attribute>
                                            <xsl:attribute name = "type" >
                                                <xsl:value-of select="string('audio/x-ms-wma')"/>
                                            </xsl:attribute>
                                        </enclosure>
                                    </xsl:when>
                                    <xsl:when test="$FileExtensionInLowCase='wmv'">
                                        <enclosure>
                                            <xsl:attribute name = "url" >
                                                <xsl:value-of select="$Url"/>
                                            </xsl:attribute>
                                            <xsl:attribute name = "length" >
                                                <xsl:value-of select="@FileSize"/>
                                            </xsl:attribute>
                                            <xsl:attribute name = "type" >
                                                <xsl:value-of select="string('audio/x-ms-wmv')"/>
                                            </xsl:attribute>
                                        </enclosure>
                                    </xsl:when>
                                    <xsl:when test="$FileExtensionInLowCase='mp3'">
                                        <enclosure>
                                            <xsl:attribute name = "url" >
                                                <xsl:value-of select="$Url"/>
                                            </xsl:attribute>
                                            <xsl:attribute name = "length" >
                                                <xsl:value-of select="@FileSize"/>
                                            </xsl:attribute>
                                            <xsl:attribute name = "type" >
                                                <xsl:value-of select="string('audio/mpeg')"/>
                                            </xsl:attribute>
                                        </enclosure>
                                    </xsl:when>
                                    <xsl:when test="$FileExtensionInLowCase='aspx'">
                                    </xsl:when>
                                    <xsl:when test="$FileExtensionInLowCase='asp'">
                                    </xsl:when>
                                    <xsl:when test="$FileExtensionInLowCase='php'">
                                    </xsl:when>
                                    <xsl:when test="$FileExtensionInLowCase='asmx'">
                                    </xsl:when>
                                    <xsl:when test="$FileExtensionInLowCase='html' or $FileExtensionInLowCase='htm'">
                                    </xsl:when>
                                    <xsl:otherwise >
                                        <enclosure>
                                            <xsl:attribute name = "url" >
                                                <xsl:value-of select="$Url"/>
                                            </xsl:attribute>
                                            <xsl:attribute name = "length" >
                                                <xsl:value-of select="@FileSize"/>
                                            </xsl:attribute>
                                            <xsl:attribute name = "type" >
                                                <xsl:value-of select="string('application/octet-stream')"/>
                                            </xsl:attribute>
                                        </enclosure>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:if>
                        </xsl:if>
                    </item>
                </xsl:for-each>
            </channel>
        </rss>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetSafeLink">
        <xsl:param name="Url"/>
        <xsl:if test="$UseCopyUtil = 'True'">
            <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
                <xsl:with-param name="Url" select="concat($SiteUrl,'/_layouts/15/CopyUtil.aspx?Use=id&amp;Action=dispform&amp;ItemId=',@ID,'&amp;ListId=',@ListId,'&amp;WebId=',@WebId,'&amp;SiteId=',$SiteId)"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="$UseCopyUtil != 'True'">
            <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
                <xsl:with-param name="Url" select="$Url"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetSafeStaticUrl">
        <xsl:param name="Url"/>
        <xsl:value-of select="cmswrt:EnsureIsAllowedProtocol($Url)"/>
    </xsl:template>
</xsl:stylesheet>
