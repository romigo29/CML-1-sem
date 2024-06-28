<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
  <title>Accereditation</title>
  </head>
  <body bgcolor="honeydew">
  
    <h2><xsl:value-of select = "accreditation/list"/></h2>

  <table border="1">
  <tr bgcolor="silver">
    <th>№</th>
    <th>Student</th>
    <th>Belorussian</th>
    <th>English</th>
    <th>Math</th>
  </tr>
    <xsl:for-each select="accreditation/student">

      <tr>
        <td width="60px" align = "center"><xsl:value-of select="@rollno"/></td>
        <td width="200px"><xsl:value-of select="name"/></td>
        
        
        <xsl:choose>
        <xsl:when test="bel &lt; 4"><td width="70px" align="center" bgcolor="red"><xsl:value-of select="bel"/></td></xsl:when>
        <xsl:when test="bel &gt; 8"><td width="70px" align="center" bgcolor="yellowgreen"><xsl:value-of select="bel"/></td></xsl:when>
        <xsl:otherwise>
        <td width="70px" align="center"><xsl:value-of select="bel"/></td></xsl:otherwise>
        </xsl:choose>

        <xsl:choose>
        <xsl:when test="eng &lt; 4"><td width="70px" align="center" bgcolor="crimson"><xsl:value-of select="eng"/></td></xsl:when>
        <xsl:when test="eng &gt; 8"><td width="70px" align="center" bgcolor="yellowgreen"><xsl:value-of select="eng"/></td></xsl:when>
        <xsl:otherwise>
        <td width="70px" align="center"><xsl:value-of select="eng"/></td></xsl:otherwise>
        </xsl:choose>

        <xsl:choose>
        <xsl:when test="math &lt; 4"><td width="70px" align="center" bgcolor="crimson"><xsl:value-of select="math"/></td></xsl:when>
        <xsl:when test="math &gt; 8"><td width="70px" align="center" bgcolor="yellowgreen"><xsl:value-of select="math"/></td></xsl:when>
        <xsl:otherwise>
        <td width="70px" align="center"><xsl:value-of select="math"/></td></xsl:otherwise>
        </xsl:choose>
    </tr>  
    </xsl:for-each>
    </table>
</body> 
</html> 
</xsl:template>  
</xsl:stylesheet>