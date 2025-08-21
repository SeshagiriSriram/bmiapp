<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Checkstyle Report</title>
        <style>
          body { font-family: Arial, sans-serif; }
          table { border-collapse: collapse; width: 100%; }
          th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
          th { background-color: #f2f2f2; }
          .error { color: red; }
          .warning { color: orange; }
          .info { color: green; }
        </style>
      </head>
      <body>
        <h2>Checkstyle Report</h2>
        <table>
          <tr>
            <th>File</th>
            <th>Line</th>
            <th>Severity</th>
            <th>Message</th>
            <th>Source</th>
          </tr>
          <xsl:for-each select="checkstyle/file/error">
            <tr>
              <td><xsl:value-of select="../@name"/></td>
              <td><xsl:value-of select="@line"/></td>
              <td class="{@severity}"><xsl:value-of select="@severity"/></td>
              <td><xsl:value-of select="@message"/></td>
              <td><xsl:value-of select="@source"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>