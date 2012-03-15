<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output
            method="html"
            indent="yes" />

    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <link rel="stylesheet" type="text/css" href="src/resources/cssreset-min.css"/>
                <link rel="stylesheet" type="text/css" href="src/resources/resume.css"/>

                <title><xsl:value-of select="/resume/person/name"/>'s resume</title>
            </head>
            <body>
                <div id="content">
                    <xsl:apply-templates/>
                </div>
                <div id="footer">
                    This resume was generated from it's XML source by <a href="https://github.com/mbergal/resume">https://github.com/mbergal/resume</a>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="person">
        <div id="contact_info">
            <span style="text-wrap: none;"><xsl:value-of select="address"/></span><br/>
            <a href="mailto:{email}"><xsl:value-of select="email"/></a><br/>
            <xsl:value-of select="phone"/><br/>
            <a href="http://github.com/{github}">github.com/<xsl:value-of select="github"/></a>
        </div>

        <h1><xsl:value-of select="/resume/person/name"/></h1>
    </xsl:template>

    <xsl:template match="objective">
        <xsl:call-template name="section">
            <xsl:with-param name="name" select="'Objective'"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="section">
        <xsl:param name="name"/>
        <xsl:param name="enclose-in-ul" select="false()"/>
        <div class="section">
            <xsl:attribute name="id">
                <xsl:value-of select='translate( $name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")'/>
            </xsl:attribute>
            <h2><xsl:value-of select="$name"/></h2>
            <div class="section-content">
                <xsl:choose>
                    <xsl:when test="$enclose-in-ul">
                        <ul>
                            <xsl:apply-templates/>
                        </ul>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates/>
                    </xsl:otherwise>
                </xsl:choose>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="skills">
        <xsl:call-template name="section">
            <xsl:with-param name="name" select="'Skills'"/>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template match="employment">
        <div class="section">
            <h2>Employment</h2>

            <div>
                    <table>
                        <xsl:apply-templates/>
                    </table>
            </div>

        </div>
    </xsl:template>

    <xsl:template match="position">
        <tr valign="top">
            <td width="80px">
                <b><xsl:value-of select="from"/> - <xsl:value-of select="to"/></b>,
                <div>
                    <b><xsl:value-of select="title"/></b>
                </div>
                <xsl:value-of select="company"/>
            </td>
            <td width="100%">
                <xsl:apply-templates select="details"/>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="details">
        <div class="employment_details" style="float:left">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="role">
        <h3><xsl:apply-templates select="description"/></h3>
        <xsl:apply-templates select="areas"/>
    </xsl:template>

    <xsl:template match="areas">
        <ul style="border-left: 1px solid silver;padding-left:20px;margin-bottom: 20px">
            <xsl:apply-templates/>
        </ul>
    </xsl:template>

    <xsl:template match="area">
        <li class="area">
            <h4><xsl:value-of select="@name"/></h4>
            <xsl:apply-templates/>
         </li>
    </xsl:template>

    <xsl:template match="open-source-work">
        <xsl:call-template name="section">
            <xsl:with-param name="name" select="'Open-Source work'"/>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template match="education">
        <xsl:call-template name="section">
            <xsl:with-param name="name" select="'Education'"/>
            <xsl:with-param name="enclose-in-ul" select="true()"/>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template match="history">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="references">
        <div id="references" class="section">
            <h2>References</h2>
            <ul>
                <xsl:apply-templates/>
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="reference">
        <li>
            <p class="reference">
                <xsl:apply-templates select="name"/>, <xsl:apply-templates select="title"/><br/>
                <xsl:apply-templates select="company"/><br/>
                Email: <a href="mailto:{email}"><xsl:apply-templates select="email"/></a><br/>
                Phone: <xsl:apply-templates select="phone"/>
             </p>
        </li>
    </xsl:template>
    <xsl:template match="topics">
        <ul>
            <xsl:apply-templates/>
        </ul>
    </xsl:template>

    <xsl:template match="topic">
        <li>
            <xsl:value-of select="@name"/>:
            <xsl:apply-templates/>
            <span class="important">
                <xsl:if test="count(item) > 0">
                    <div class="items">
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
                    </div>
                </xsl:if>
            </span>
        </li>
    </xsl:template>

    <xsl:template match="item">
    </xsl:template>

    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="a">
        <xsl:copy-of select="." />
    </xsl:template>
    <xsl:template match="important">
        <span class="important"><xsl:apply-templates/></span>
    </xsl:template>

</xsl:stylesheet>