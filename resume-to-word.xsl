<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output
            method="xml"
            indent="yes" />

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
            <w:body>
                <w:sectPr ><w:pgSz w:w="12240" w:h="15840"/><w:pgMar w:top="1440" w:right="1440" w:bottom="1440" w:left="1440" w:header="720" w:footer="720" w:gutter="0"/><w:cols w:space="720"/><w:docGrid w:line-pitch="360"/></w:sectPr></w:body>

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
                                <w:t><xsl:value-of select="/resume/person/name"/></w:t>
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
                            <w:t><xsl:apply-templates select="/resume/person/address"/></w:t>

                            <w:br/>
                              <w:hlink w:dest="mailto:{/resume/person/email}">
                                <w:r >
                                  <w:rPr>
                                    <w:rStyle w:val="Hyperlink"/>
                                    <w:color w:val="0000FF"/>
                                  </w:rPr>
                                  <w:t><xsl:value-of select="/resume/person/email"/></w:t>
                                </w:r>
                              </w:hlink>
                            <w:br/>
                            <w:r>
                                <w:t><xsl:apply-templates select="/resume/person/phone"/></w:t>
                            </w:r>

                          </w:r>
                      </w:p>
                    </w:tc>
                  </w:tr>
                </w:tbl>

        </w:wordDocument>

    </xsl:template>

</xsl:stylesheet>