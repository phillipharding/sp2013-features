<xsl:stylesheet
    version="1.0" 
    exclude-result-prefixes="x d cmswrt xsl msxsl" 
    xmlns:x="http://www.w3.org/2001/XMLSchema" 
    xmlns:d="http://schemas.microsoft.com/sharepoint/dsp"
    xmlns:cmswrt="http://schemas.microsoft.com/WebPart/v3/Publishing/runtime"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:msxsl="urn:schemas-microsoft-com:xslt">
    <xsl:template name="node-template">
        <xsl:param name="is-horizontal" select="false()" />
        <xsl:param name="div-class" select="'level-header'" />
        <xsl:param name="span-class" select="'headertitle headermarker'" />
        <xsl:param name="include-description" select="false()" />
        <xsl:variable name="class">
            <xsl:choose>
                <xsl:when test="$is-horizontal=false()">level-section</xsl:when>
                <xsl:otherwise>dfwp-column</xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="is-item" select="local-name() = 'Item' or count(../Item) > 0" />
        <xsl:if test="$is-horizontal and position() != 1 and $is-item">
            <li class="{$class} level-separator"> | </li>
        </xsl:if>
        <li>
            <xsl:attribute name="class">
                <xsl:value-of select="$class"/>
                <xsl:if test="$is-item"> level-item-pos level-item<xsl:if test="$is-horizontal = false() and local-name() = 'Item'"> level-bullet</xsl:if></xsl:if>
            </xsl:attribute>
            <div class="{$div-class}">
                <span class="{$span-class}">
                    <xsl:choose>
                        <xsl:when test="string-length(@Path) > 0">
                            <a href="{cmswrt:EnsureIsAllowedProtocol(@Path)}">
                                <xsl:if test="@Description != ''">
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="@Description"/>
                                    </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="@Title"/>
                            </a>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="@Title"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </span>
            </div>
            <xsl:if test="count(child::Level) > 0 or count(child::Item) > 0">
                <ul class="dfwp-list">
                    <xsl:apply-templates select="Level|Item" />
                </ul>
            </xsl:if>
            <xsl:if test="$include-description">
                <div class="level-description-padding level-description">
                    <xsl:value-of select="@Description" />
                </div>
            </xsl:if>
        </li>
    </xsl:template>
    <xsl:template name="Vertical" match="Level[@LevelTemplate='Vertical']|Item[@LevelTemplate='Vertical']">
        <xsl:call-template name="node-template" />
    </xsl:template>
    <xsl:template name="VerticalBoxedTitle" match="Level[@LevelTemplate='VerticalBoxedTitle']|Item[@LevelTemplate='VerticalBoxedTitle']">
        <xsl:call-template name="node-template">
            <xsl:with-param name="div-class" select="'level-band'" />
            <xsl:with-param name="span-class" select="'headertitle-band headermarker'" />
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="VerticalLargeTitle" match="Level[@LevelTemplate='VerticalLargeTitle']|Item[@LevelTemplate='VerticalLargeTitle']">
        <xsl:call-template name="node-template">
            <xsl:with-param name="span-class" select="'headertitle-large headermarker'" />
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="VerticalSmallTitle" match="Level[@LevelTemplate='VerticalSmallTitle']|Item[@LevelTemplate='VerticalSmallTitle']">
        <xsl:call-template name="node-template">
            <xsl:with-param name="span-class" select="'headertitle-small headermarker'" />
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="VerticalDescriptions" match="Level[@LevelTemplate='VerticalDescriptions']|Item[@LevelTemplate='VerticalDescriptions']">
        <xsl:call-template name="node-template">
            <xsl:with-param name="include-description" select="true()" />
        </xsl:call-template>        
    </xsl:template>
    <xsl:template name="Horizontal" match="Level[@LevelTemplate='Horizontal']|Item[@LevelTemplate='Horizontal']">
        <xsl:call-template name="node-template">
            <xsl:with-param name="is-horizontal" select="true()" />
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="HorizontalBoxedTitle" match="Level[@LevelTemplate='HorizontalBoxedTitle']|Item[@LevelTemplate='HorizontalBoxedTitle']">
        <xsl:call-template name="node-template">
            <xsl:with-param name="is-horizontal" select="true()" />
            <xsl:with-param name="div-class" select="'level-band'" />
            <xsl:with-param name="span-class" select="'headertitle-band headermarker'" />
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="HorizontalLargeTitle" match="Level[@LevelTemplate='HorizontalLargeTitle']|Item[@LevelTemplate='HorizontalLargeTitle']">
        <xsl:call-template name="node-template">
            <xsl:with-param name="is-horizontal" select="true()" />
            <xsl:with-param name="span-class" select="'headertitle-large headermarker'" />
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="HorizontalSmallTitle" match="Level[@LevelTemplate='HorizontalSmallTitle']|Item[@LevelTemplate='HorizontalSmallTitle']">
        <xsl:call-template name="node-template">
            <xsl:with-param name="is-horizontal" select="true()" />
            <xsl:with-param name="span-class" select="'headertitle-small headermarker'" />
        </xsl:call-template>
    </xsl:template>
</xsl:stylesheet>
