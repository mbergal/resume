<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="/">
[Word Version Of This Document ](https://github.com/mbergal/resume/blob/master/bin/Resume.docx?raw=true)
| [PDF Version Of This Document ](https://github.com/mbergal/resume/blob/master/bin/Resume.pdf?raw=true)

Misha Bergal
============
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
        <xsl:call-template name="output-text">
            <xsl:with-param name="value">Skills</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="newline"/>
        <xsl:call-template name="output-text">
            <xsl:with-param name="value">------</xsl:with-param>
        </xsl:call-template>

        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="topics">
        <xsl:param name="level" select="1"/>
        <xsl:apply-templates>
            <xsl:with-param name="level" select="$level"/>
        </xsl:apply-templates>
    </xsl:template>

    <xsl:template match="topic">
        <xsl:param name="level" select="1"/>
        <xsl:call-template name="newline"/>
        <xsl:message><xsl:value-of select="$level"></xsl:value-of></xsl:message>
        <xsl:call-template name="indent">
            <xsl:with-param name="indent" select="$level"/>
        </xsl:call-template>
        <xsl:call-template name="output-text">
            <xsl:with-param name="value">* </xsl:with-param>
        </xsl:call-template>
        <xsl:value-of select="@name"/>
        <xsl:call-template name="newline"/>
        <xsl:apply-templates select="*[local-name(.) != 'item']">
            <xsl:with-param name="level" select="$level + 1 "/>
        </xsl:apply-templates>
        <xsl:if test="count(item) > 0">
            <xsl:call-template name="newline"/>
            <xsl:call-template name="indent">
                <xsl:with-param name="indent" select="$level + 1"/>
            </xsl:call-template>
            <xsl:for-each select="item">
                <xsl:call-template name="output-text">
                    <xsl:with-param name="value">**</xsl:with-param>
                </xsl:call-template>
                <xsl:value-of select="."/>
                <xsl:call-template name="output-text">
                    <xsl:with-param name="value">**</xsl:with-param>
                </xsl:call-template>
                <xsl:choose>
                    <xsl:when test="position() = last()">
                        <xsl:text>.</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>, </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
            <xsl:call-template name="newline"/>
        </xsl:if>
    </xsl:template>

    <xsl:template match="employment">
        <xsl:call-template name="newline"/>
        <xsl:call-template name="output-text">
            <xsl:with-param name="value">Employment</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="newline"/>
        <xsl:call-template name="output-text">
            <xsl:with-param name="value">----------</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="newline"/>

        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="position">
        <xsl:value-of select="from"/><xsl:text> - </xsl:text><xsl:value-of select="to"/><xsl:text>, </xsl:text>
        <xsl:value-of select="title"/><xsl:text>, </xsl:text>
        <xsl:call-template name="newline"/>
        <xsl:value-of select="company"/>
        <xsl:call-template name="newline"/>

        <xsl:apply-templates select="details"/>
    </xsl:template>


    <xsl:template match="role">
        <xsl:call-template name="newline"/>
        <xsl:text>###</xsl:text><xsl:apply-templates select="description"/>
        <xsl:call-template name="newline"/>
        <xsl:apply-templates select="areas"/>
    </xsl:template>
    
    
    <xsl:template match="area">
        <xsl:call-template name="newline"/>
        <xsl:text>####</xsl:text><xsl:value-of select="@name"/>
        <xsl:call-template name="newline"/>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="header">
        <xsl:call-template name="newline"/>
        <xsl:text>#####</xsl:text><xsl:value-of select="text()"/>
        <xsl:call-template name="newline"/>
    </xsl:template>


    <xsl:template match="open-source-work">
        <xsl:call-template name="newline"/>
        <xsl:text>### Open-Source Work</xsl:text>
        <xsl:call-template name="newline"/>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="education">
        <xsl:call-template name="newline"/>
        <xsl:text>### Education</xsl:text>
        <xsl:call-template name="newline"/>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="references">
        <xsl:call-template name="newline"/>
        <xsl:text>### References</xsl:text>
        <xsl:call-template name="newline"/>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="reference">
        <xsl:call-template name="newline"/>
        <xsl:value-of select="name"/><xsl:text>  </xsl:text><xsl:call-template name="newline"/>
        <xsl:value-of select="company"/><xsl:text>  </xsl:text><xsl:call-template name="newline"/>
        <xsl:value-of select="email"/><xsl:text>  </xsl:text><xsl:call-template name="newline"/>
        <xsl:value-of select="phone"/><xsl:text>  </xsl:text><xsl:call-template name="newline"/>
    </xsl:template>

    <xsl:template match="history">
        <xsl:call-template name="newline"/>
        <xsl:apply-templates/>
        <xsl:call-template name="newline"/>
    </xsl:template>

    <xsl:template name="indent">
        <xsl:param name="indent"/>
        <xsl:value-of select="substring('                          ', 1, ( $indent - 1 )* 4 )"/>
    </xsl:template>

    <xsl:template match="important">
        <xsl:text>**</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>**</xsl:text>
    </xsl:template>
    
    <xsl:template match="p">
        <xsl:call-template name="newline"/>
        <xsl:apply-templates/>
        <xsl:call-template name="newline"/>
    </xsl:template>

    <xsl:template match="a">
        <xsl:text>[</xsl:text><xsl:value-of select="text()" /><xsl:text>]</xsl:text>
        <xsl:text>(</xsl:text>
        <xsl:value-of select="@href" />
        <xsl:text>)</xsl:text>
    </xsl:template>

    <xsl:template match="text()">
        <xsl:if test="normalize-space(.)">
            <xsl:if test="starts-with( ., ' ')">
                <xsl:text> </xsl:text>
            </xsl:if>
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:if test="substring( ., (string-length(.) - string-length(' ')) + 1) = ' '">
                <xsl:text> </xsl:text>
            </xsl:if>
        </xsl:if>
    </xsl:template>

<xsl:template name="newline">
<xsl:text>
</xsl:text>
</xsl:template>

</xsl:stylesheet>