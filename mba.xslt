<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
            <h2>Churches</h2>
            <table>
                <tr>
                    <th>Church Name</th>
                    <th>Address</th>
                </tr>
                <xsl:for-each select="//div/p/strong">
                    <tr>
                        <td><xsl:value-of select="."/></td>
                        <td><xsl:value-of select="./following-sibling::br"/></td>
                    </tr>
                </xsl:for-each>
            </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
