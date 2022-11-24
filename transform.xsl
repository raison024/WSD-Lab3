<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">

<xsl:template match="/">
  <html>
    <head>
      <link rel="stylesheet" href="style.css"/>
    </head>
  <body>
    <h1><span class="blue"></span>Movies and Shows<span class="blue"></span></h1>
    <table class="container">
      <thead>
      <tr>
          <th>Name</th>
          <th>Lead</th>
          <th>Genre</th>
          <th>Release Date</th>
          <th>Rating</th>
          <th>Category</th>
          <th>Comment</th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="catalog/program">
        <xsl:sort select="rating" />
        <tr>
          <td><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="lead"/></td>
          <td><xsl:value-of select="genre"/></td>
          <td><xsl:value-of select="release"/></td>
          <td><xsl:value-of select="rating"/></td>
          <td><xsl:value-of select="cat"/></td>
          <xsl:choose>
            <xsl:when test="rating &gt; 3">
              <td>Good</td>
            </xsl:when>
            <xsl:otherwise>
              <td>Okay</td>
            </xsl:otherwise>
          </xsl:choose>
        </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>