<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="/">

Misha Bergal's Resume
=====================
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="person">
<xsl:call-template name="newline"/>
<xsl:value-of select="address"/><xsl:text>  </xsl:text><xsl:call-template name="newline"/>
<xsl:value-of select="phone"/><xsl:text>  </xsl:text><xsl:call-template name="newline"/>
<xsl:value-of select="email"/><xsl:text>  </xsl:text><xsl:call-template name="newline"/>
    </xsl:template>

    <xsl:template match="objective">
        <xsl:call-template name="output-text">
            <xsl:with-param name="value" select="'Objective'"/>
        </xsl:call-template>
        <xsl:call-template name="newline"/>
        <xsl:call-template name="output-text">
            <xsl:with-param name="value" select="'---------'"/>
        </xsl:call-template>
        <xsl:call-template name="newline"/>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template name="output-text" xml:space="default">
        <xsl:param name="value"/>
        <xsl:value-of select="$value"/>
    </xsl:template>

    <xsl:template match="skills">
Skills
---------
<xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="topics">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="topic">
        <xsl:param name="level" select="1"/>
        <xsl:call-template name="output-text">
            <xsl:with-param name="value">* </xsl:with-param>
        </xsl:call-template>
        <xsl:value-of select="@name"/>
        <xsl:apply-templates select="*[local-name(.) != 'item']"/>
        <xsl:if test="count(item) > 0">
            <xsl:call-template name="newline"/>
            <xsl:call-template name="newline"/>
            <xsl:call-template name="output-text">
                <xsl:with-param name="value">**</xsl:with-param>
            </xsl:call-template>
            <xsl:for-each select="item">
                <xsl:value-of select="."/>
                <xsl:choose>
                    <xsl:when test="position() = last()">
                        <xsl:text>.</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>, </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
            <xsl:call-template name="output-text">
                <xsl:with-param name="value">**</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="newline"/>
            <xsl:call-template name="newline"/>
        </xsl:if>
    </xsl:template>

<xsl:template match="important">
**<xsl:apply-templates/>**
</xsl:template>
    
<xsl:template match="p">
<xsl:text>
</xsl:text>
<xsl:apply-templates/>
<xsl:text>
</xsl:text>
</xsl:template>

<xsl:template match="text()">
    <xsl:if test="normalize-space(.)">
<xsl:value-of select="normalize-space(.)"/>
    </xsl:if>
</xsl:template>

<xsl:template name="newline">
<xsl:text>
</xsl:text>
</xsl:template>

</xsl:stylesheet>