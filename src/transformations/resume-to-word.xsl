<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml"
                xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint"
                xmlns:o="urn:schemas-microsoft-com:office:office">

    <xsl:output
            method="xml"
            indent="yes"
            />
    <xsl:preserve-space elements="w:t t"/>
    <xsl:template match="/">
        <xsl:processing-instruction name="mso-application">progid="Word.Document"</xsl:processing-instruction>
        <w:wordDocument
                        xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml"
                        xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint"
                        xmlns:o="urn:schemas-microsoft-com:office:office"
                        w:macrosPresent="no"
                        w:embeddedObjPresent="no"
                        w:ocxPresent="no" xml:space="preserve">
            <o:DocumentProperties>
              <o:LastAuthor><xsl:value-of select="/resume/person/name"/></o:LastAuthor>
              <o:Revision>2</o:Revision>
              <o:TotalTime>2</o:TotalTime>
              <o:Created>2012-03-12T08:06:00Z</o:Created>
              <o:LastSaved>2012-03-12T08:08:00Z</o:LastSaved>
            </o:DocumentProperties>
            <w:styles>
                <w:style w:type="character" w:styleId="Hyperlink">
                  <w:name w:val="Hyperlink"/>
                  <w:basedOn w:val="DefaultParagraphFont"/>
                  <w:rsid w:val="000672F6"/>
                  <w:rPr>
                    <w:color w:val="0000FF"/>
                    <w:u w:val="single"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="paragraph" w:styleId="Section">
                  <w:name w:val="Section"/>
                  <w:basedOn w:val="Normal"/>
                  <w:link w:val="SectionChar"/>
                  <w:rsid w:val="000265D4"/>
                  <w:pPr>
                    <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF"/>
                    <w:spacing w:before="360" w:after="115"/>
                    <w:outlineLvl w:val="1"/>
                  </w:pPr>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <wx:font wx:val="Segoe UI"/>
                    <w:color w:val="000000"/>
                    <w:sz w:val="23"/>
                    <w:sz-cs w:val="23"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="character" w:styleId="SectionChar">
                  <w:name w:val="Section Char"/>
                  <w:basedOn w:val="DefaultParagraphFont"/>
                  <w:link w:val="Section"/>
                  <w:rsid w:val="000265D4"/>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <w:color w:val="000000"/>
                    <w:sz w:val="23"/>
                    <w:sz-cs w:val="23"/>
                    <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="paragraph" w:styleId="Topic">
                  <w:name w:val="Topic"/>
                  <w:basedOn w:val="Normal"/>
                  <w:link w:val="TopicChar"/>
                  <w:rsid w:val="00044276"/>
                  <w:pPr>
                    <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF"/>
                    <w:spacing w:before="60" w:after="60"/>
                    <w:ind w:left="720"/>
                    <w:outlineLvl w:val="2"/>
                  </w:pPr>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <wx:font wx:val="Segoe UI"/>
                    <w:color w:val="000000"/>
                    <w:sz w:val="23"/>
                    <w:sz-cs w:val="23"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="character" w:styleId="TopicChar">
                  <w:name w:val="Topic Char"/>
                  <w:basedOn w:val="DefaultParagraphFont"/>
                  <w:link w:val="Topic"/>
                  <w:rsid w:val="00044276"/>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <w:color w:val="000000"/>
                    <w:sz w:val="23"/>
                    <w:sz-cs w:val="23"/>
                    <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="paragraph" w:styleId="Position">
                  <w:name w:val="Position"/>
                  <w:basedOn w:val="Normal"/>
                  <w:link w:val="PositionChar"/>
                  <w:rsid w:val="005A012C"/>
                  <w:pPr>
                      <w:spacing w:before="360" w:after="115"/>
                  </w:pPr>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <wx:font wx:val="Segoe UI"/>
                    <w:sz w:val="16"/>
                    <w:sz-cs w:val="16"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="character" w:styleId="PositionChar">
                  <w:name w:val="Position Char"/>
                  <w:basedOn w:val="DefaultParagraphFont"/>
                  <w:link w:val="Position"/>
                  <w:rsid w:val="005A012C"/>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <w:sz w:val="16"/>
                    <w:sz-cs w:val="16"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="paragraph" w:styleId="Role">
                  <w:name w:val="Role"/>
                  <w:basedOn w:val="Normal"/>
                  <w:link w:val="RoleChar"/>
                  <w:rsid w:val="00BF7024"/>
                  <w:pPr>
                    <w:spacing w:after="240"/>
                    <w:ind w:left="432"/>
                  </w:pPr>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <wx:font wx:val="Segoe UI"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="character" w:styleId="RoleChar">
                  <w:name w:val="Role Char"/>
                  <w:basedOn w:val="DefaultParagraphFont"/>
                  <w:link w:val="Role"/>
                  <w:rsid w:val="00BF7024"/>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="paragraph" w:styleId="Areas">
                  <w:name w:val="Areas"/>
                  <w:basedOn w:val="Normal"/>
                  <w:link w:val="AreasChar"/>
                  <w:rsid w:val="00671E66"/>
                  <w:pPr>
                    <w:spacing w:after="90"/>
                    <w:ind w:left="720"/>
                  </w:pPr>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <wx:font wx:val="Segoe UI"/>
                    <w:sz w:val="18"/>
                    <w:sz-cs w:val="18"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="character" w:styleId="AreasChar">
                  <w:name w:val="Areas Char"/>
                  <w:basedOn w:val="DefaultParagraphFont"/>
                  <w:link w:val="Areas"/>
                  <w:rsid w:val="00671E66"/>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <w:sz w:val="18"/>
                    <w:sz-cs w:val="18"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="paragraph" w:styleId="Area">
                  <w:name w:val="Area"/>
                  <w:basedOn w:val="Normal"/>
                  <w:link w:val="AreaChar"/>
                  <w:rsid w:val="00AA1E19"/>
                  <w:pPr>
                    <w:spacing w:after="180" w:before="180"/>
                    <w:ind w:left="320"/>
                  </w:pPr>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <wx:font wx:val="Segoe UI"/>
                    <w:sz w:val="18"/>
                    <w:sz-cs w:val="18"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="character" w:styleId="AreaChar">
                  <w:name w:val="Area Char"/>
                  <w:basedOn w:val="DefaultParagraphFont"/>
                  <w:link w:val="Area"/>
                  <w:rsid w:val="00AA1E19"/>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <w:sz w:val="18"/>
                    <w:sz-cs w:val="18"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="paragraph" w:styleId="AreaParagraph">
                  <w:name w:val="AreaParagraph"/>
                  <w:basedOn w:val="Normal"/>
                  <w:link w:val="AreaParagraphChar"/>
                  <w:rsid w:val="00002600"/>
                  <w:pPr>
                    <w:spacing w:after="90"/>
                    <w:ind w:left="720"/>
                  </w:pPr>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <wx:font wx:val="Segoe UI"/>
                    <w:sz w:val="18"/>
                    <w:sz-cs w:val="18"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="character" w:styleId="AreaParagraphChar">
                  <w:name w:val="AreaParagraph Char"/>
                  <w:basedOn w:val="DefaultParagraphFont"/>
                  <w:link w:val="AreaParagraph"/>
                  <w:rsid w:val="00002600"/>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <w:sz w:val="18"/>
                    <w:sz-cs w:val="18"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="paragraph" w:styleId="NormalText">
                  <w:name w:val="NormalText"/>
                  <w:basedOn w:val="Normal"/>
                  <w:link w:val="NormalTextChar"/>
                  <w:rsid w:val="002A0870"/>
                  <w:pPr>
                    <w:spacing w:after="90"/>
                    <w:ind w:left="432"/>
                  </w:pPr>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <wx:font wx:val="Segoe UI"/>
                    <w:sz w:val="18"/>
                    <w:sz-cs w:val="18"/>
                  </w:rPr>
                </w:style>
                <w:style w:type="character" w:styleId="NormalTextChar">
                  <w:name w:val="NormalText Char"/>
                  <w:basedOn w:val="DefaultParagraphFont"/>
                  <w:link w:val="NormalText"/>
                  <w:rsid w:val="002A0870"/>
                  <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <w:sz w:val="18"/>
                    <w:sz-cs w:val="18"/>
                  </w:rPr>
                </w:style>
            </w:styles>
            <w:docPr>
                <w:view w:val="print"/>
                <w:zoom w:percent="100"/>
                <w:embedTrueTypeFonts/>
                <w:saveSubsetFonts/>
                <w:proofState w:spelling="clean"/>
                <w:defaultTabStop w:val="720"/>
                <w:characterSpacingControl w:val="DontCompress"/>
                <w:savePreviewPicture/>
                <w:validateAgainstSchema/>
                <w:saveInvalidXML w:val="off"/>
                <w:ignoreMixedContent w:val="off"/>
                <w:alwaysShowPlaceholderText w:val="off"/>
                <w:compat>
                  <w:breakWrappedTables/>
                </w:compat>
              </w:docPr>
            <w:body>
                <xsl:apply-templates/>
                <w:sectPr>
                    <w:pgSz w:w="12240" w:h="15840"/>
                    <w:pgMar w:top="1440" w:right="1440" w:bottom="1440" w:left="1440" w:header="720" w:footer="720" w:gutter="0"/><w:cols w:space="720"/>
                    <w:docGrid w:line-pitch="360"/>
                </w:sectPr>
            </w:body>

        </w:wordDocument>

    </xsl:template>

    <xsl:template match="person">
        <w:tbl>
          <w:tblPr>
            <w:tblW w:w="0" w:type="auto"/>
            <w:tblLook w:val="04A0"/>
          </w:tblPr>
          <w:tblGrid>
            <w:gridCol w:w="4788"/>
            <w:gridCol w:w="4788"/>
          </w:tblGrid>
          <w:tr >
            <w:tc>
              <w:tcPr>
                <w:tcW w:w="4788" w:type="dxa"/>
              </w:tcPr>
                <w:p>
                    <w:r>
                          <w:rPr>
                            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                            <wx:font wx:val="Segoe UI"/>
                            <w:sz w:val="72"/>
                            <w:sz-cs w:val="72"/>
                          </w:rPr>
                        <xsl:apply-templates select="/resume/person/name" mode="inline"/>
                    </w:r>
                </w:p>
            </w:tc>
            <w:tc>
              <w:tcPr>
                <w:tcW w:w="4788" w:type="dxa"/>
              </w:tcPr>
              <w:p>
                  <w:pPr>
                    <w:jc w:val="right"/>
                  </w:pPr>
                  <w:r>
                    <w:rPr>
                        <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                        <wx:font wx:val="Segoe UI"/>
                    </w:rPr>

                    <xsl:apply-templates select="/resume/person/address" mode="inline"/>

                    <w:br/>
                      <w:hlink w:dest="mailto:{/resume/person/email}">
                        <w:r >
                          <w:rPr>
                            <w:rStyle w:val="Hyperlink"/>
                            <w:color w:val="0000FF"/>
                          </w:rPr>
                          <xsl:apply-templates select="/resume/person/email" mode="inline"/>
                        </w:r>
                      </w:hlink>
                    <w:br/>
                    <w:r>
                        <xsl:apply-templates select="/resume/person/phone" mode="inline"/>
                    </w:r>

                    <w:br/>

                    <w:hlink w:dest="mailto:{/resume/person/github}">
                        <w:r >
                          <w:rPr>
                            <w:rStyle w:val="Hyperlink"/>
                            <w:color w:val="0000FF"/>
                          </w:rPr>
                            <w:t>github.com/</w:t><xsl:apply-templates select="/resume/person/github" mode="inline"/>
                        </w:r>
                      </w:hlink>
                  </w:r>
              </w:p>
            </w:tc>
          </w:tr>
        </w:tbl>
    </xsl:template>

    <xsl:template match="objective">
        <xsl:call-template name="section">
            <xsl:with-param name="name" select="'Objective'"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="skills">
        <xsl:call-template name="section">
            <xsl:with-param name="name" select="'Skills'"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="topics">
        <xsl:param name="topic-level" select="1"/>
        <xsl:apply-templates>
            <xsl:with-param name="topic-level" select="$topic-level"/>
        </xsl:apply-templates>
    </xsl:template>

    <xsl:template match="topic">
        <xsl:param name="topic-level" select="1"/>
        <wx:sub-section>
            <w:p>
                <w:pPr>
                    <w:pStyle w:val="Topic"/>
                    <w:ind w:left="{$topic-level * 360}"/>
                    <w:outlineLvl w:val="{$topic-level}"/>
                </w:pPr>
                <w:r>
                    <w:t>
                        <xsl:value-of select="@name"/>
                    </w:t>
                </w:r>
            </w:p>
            <xsl:apply-templates>
                <xsl:with-param name="topic-level" select="$topic-level + 1" />
            </xsl:apply-templates>

            <xsl:if test="count(item) > 0">
                <w:p>
                    <w:pPr>
                        <w:ind w:left="{ 360 * ( $topic-level + 1 )}"/>
                    </w:pPr>
                    <w:r>
                        <w:rPr>
                            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                            <wx:font wx:val="Segoe UI"/>
                            <w:color w:val="000000"/>
                            <w:b/>
                            <w:sz w:val="18"/>
                            <w:sz-cs w:val="18"/>
                        </w:rPr>
                        <w:t>
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
                        </w:t>
                    </w:r>
                </w:p>
            </xsl:if>
        </wx:sub-section>
    </xsl:template>

    <xsl:template match="employment">
        <xsl:call-template name="section">
            <xsl:with-param name="name" select="'Employment'"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="position">
        <w:p>
            <w:pPr>
              <w:pStyle w:val="Position"/>
            </w:pPr>
            <w:r>
                <w:rPr>
                    <w:b/>
                </w:rPr>
            <w:t>
                <xsl:value-of select="from"/> - <xsl:value-of select="to"/>
            </w:t>
            <w:br/>
            <w:t>
                <xsl:value-of select="title"/>
            </w:t>
            </w:r>
            <w:r>
                <w:t>, <xsl:value-of select="company"/></w:t>
            </w:r>
        </w:p>
        <xsl:apply-templates select="details"/>
    </xsl:template>

    <xsl:template match="role">
        <w:p>
            <w:pPr>
                <w:pStyle w:val="Role"/>
            </w:pPr>
            <xsl:apply-templates select="description" mode="inline"/>
        </w:p>
        <xsl:apply-templates select="areas"/>
    </xsl:template>

    <xsl:template match="areas">
        <w:tbl>
          <w:tblPr>
            <w:tblW w:w="0" w:type="auto"/>
            <w:tblInd w:w="604" w:type="dxa"/>
            <w:tblBorders>
              <w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF"/>
            </w:tblBorders>
            <w:tblLook w:val="04A0"/>
          </w:tblPr>
          <w:tblGrid>
            <w:gridCol w:w="8972"/>
          </w:tblGrid>
          <w:tr>
            <w:tc>
              <w:tcPr>
                <w:tcW w:w="9576" w:type="dxa"/>
              </w:tcPr>
                <xsl:apply-templates/>
            </w:tc>
          </w:tr>
        </w:tbl>
    </xsl:template>

    <xsl:template match="area">
        <w:p>
            <w:pPr>
                <w:pStyle w:val="Area"/>
            </w:pPr>
            <w:r>
                <w:t><xsl:value-of select="@name"/></w:t>
            </w:r>
        </w:p>
        <xsl:apply-templates>
            <xsl:with-param name="style" select="'AreaParagraph'"/>
        </xsl:apply-templates>
    </xsl:template>

    <xsl:template match="education">
        <xsl:call-template name="section">
            <xsl:with-param name="name" select="'Education'"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="history">
        <w:p>
            <w:pPr>
                <w:pStyle w:val="NormalText"/>
            </w:pPr>
            <xsl:apply-templates mode="inline"/>
        </w:p>
    </xsl:template>

    <xsl:template match="open-source-work">
        <xsl:call-template name="section">
            <xsl:with-param name="name" select="'Open-Source Work'"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="references">
        <xsl:call-template name="section">
            <xsl:with-param name="name" select="'References'"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="section">
        <xsl:param name="name"/>
        <wx:sub-section>
            <wx:sub-section>
                <w:p>
                    <w:pPr>
                        <w:pStyle w:val="Section"/>
                    </w:pPr>
                    <w:r>
                        <w:rPr>
                            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                            <wx:font wx:val="Segoe UI"/>
                            <w:color w:val="000000"/>
                            <w:sz w:val="23"/>
                            <w:sz-cs w:val="23"/>
                        </w:rPr>
                        <w:t><xsl:value-of select="$name"/></w:t>
                    </w:r>
                </w:p>
                <xsl:apply-templates/>
            </wx:sub-section>
        </wx:sub-section>
    </xsl:template>

    <xsl:template match="p">
        <xsl:param name="style"/>
        <w:p>
            <w:pPr>
                <xsl:choose>
                    <xsl:when test="string($style)">
                        <w:pStyle w:val="{$style}"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <w:spacing w:after="90"/>
                        <w:ind w:left="432"/>
                    </xsl:otherwise>
                </xsl:choose>
                <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <wx:font wx:val="Segoe UI"/>
                </w:rPr>
            </w:pPr>
            <w:r>
                <w:rPr>
                    <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI"/>
                    <wx:font wx:val="Segoe UI"/>
                    <w:sz w:val="18"/>
                    <w:sz-cs w:val="18"/>
                </w:rPr>
                <xsl:apply-templates mode="inline"/>
            </w:r>
        </w:p>
    </xsl:template>

    <xsl:template match="important" mode="inline">
        <w:r>
            <w:rPr>
                <w:b/>
            </w:rPr>
            <xsl:apply-templates mode="inline"/>
        </w:r>
    </xsl:template>

    <xsl:template match="a" mode="inline">
            <w:r><w:t><xsl:text> </xsl:text></w:t></w:r>
            <w:hlink w:dest="{@href}">
                <w:r>
                    <w:rPr>
                        <w:rStyle w:val="Hyperlink"/>
                    </w:rPr>
                    <w:t><xsl:apply-templates/></w:t>
                </w:r>
            </w:hlink>
            <w:r><w:t><xsl:text> </xsl:text></w:t></w:r>
    </xsl:template>


    <xsl:template match="text()" mode="inline">
        <xsl:if test="normalize-space(.)">
            <w:r><w:t><xsl:value-of select="normalize-space(.)"/></w:t></w:r>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>