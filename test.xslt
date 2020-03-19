<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:tei="http://www.tei-c.org/ns/1.0" 
  xmlns="http://www.tei-c.org/ns/1.0"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0">
<xsl:template match="/">


<html> 
<body>
  <h2>Stuff</h2>
  <xsl:for-each select="tei:TEI">
    <xsl:for-each select="tei:teiHeader">
      <xsl:for-each select="tei:fileDesc">
        "<xsl:value-of select="tei:titleStmt/tei:title"/>"
      </xsl:for-each>
    </xsl:for-each>
  </xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

