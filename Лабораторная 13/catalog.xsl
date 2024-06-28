<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
  <title>Online products</title>
  </head>
  <body bgcolor="seashell">
  
  <table border="1">
  <tr bgcolor="cornsilk">
    <th>name</th>
    <th>technique</th>
    <th>price</th>
  </tr>
    <xsl:for-each select="products/model">
    <xsl:sort select="name" order="ascending"/>
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td width="700px"><xsl:value-of select="technique"/></td>
        <td><xsl:value-of select="price"/></td> 
      </tr>  
    </xsl:for-each>
  </table>
  </body> 
  </html> 
</xsl:template>  
</xsl:stylesheet>