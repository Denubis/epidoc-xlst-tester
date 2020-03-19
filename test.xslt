<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:t="http://www.tei-c.org/ns/1.0" 
  xmlns="http://www.tei-c.org/ns/1.0"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0">
  <xsl:output method="xml" indent="yes" encoding="UTF-8" doctype-system="about:legacy-compat"/>
  



  <xsl:template match="/">
    <html> 
      <head>
        <xsl:for-each select="t:TEI">
          <xsl:for-each select="t:teiHeader">
            <xsl:for-each select="t:fileDesc">
              <h1><xsl:value-of select="t:titleStmt/t:title"/></h1>
              <xsl:for-each select="t:publicationStmt">
              ID: <xsl:value-of select="t:idno"/><br/>
              Author: <xsl:value-of select="t:authority"/><br/>
              License: <xsl:value-of select="t:availability/t:license"/> <b>Does not work!</b>
              <br/>
              <br/>
            </xsl:for-each>
          </xsl:for-each>
        </xsl:for-each>
        </xsl:for-each>
      </head>


      <body>
        <xsl:apply-templates/>
      </body>
    </html>



 </xsl:template>


</xsl:stylesheet>

