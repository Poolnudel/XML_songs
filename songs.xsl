<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xml>
<xsl:stylesheet version="1.0" xmlns:xsl="https://www.w3.org/1999/XSL/transform">
<xsl:template match="songliste">
<html>
    <head>
        <titel>Jakob's momentane Lieblingssongs</titel>
        <style type="text/css">
            body {
                background-color: #ffffff;
            }
            h1 {
                background-color: #ffffff;
                border: 2px solid #000000;
                color: #ffffff;
            }
            table {
                border: 2px solid #000000;
                font-family: consolas, monospace;
                font-size: 1.5em;
                background-color: #ffffff;
                border-collapse: collapse;
                color: #ffffff;
            }
            th {
                border: 1px solid #000000;
                padding: 0.25em;
                width: 200px;
                height: 100px;
            }
            td {
                border: 1px solid #000000;
                padding: 0.25em;
                width: 200px;
            }
            td:first-child {
                text-align: center;
            }
            img {
                display: block;
                margin: 10px;
                width: 222px;
                height: 222px;
                border: 1px solid rgb(0, 0, 0);
            }
        </style>
    </head>
    <body>
        <h1>Top 5 momentane Lieblingssongs</h1>
        <table>
            <tr>
                <th>Coverbild</th>
                <th>Titel</th>
                <th>Interpret</th>
                <th>Dauer</th>
                <th>Erschienen</th>
                <th>Link</th>
            </tr>
            <xsl:for-each select="song">
                <tr>
                    <td>
                        <!-- <xsl:value-of select="cover"/> -->
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="cover"/>
                            </xsl:attribute>
                        </img>
                    </td>
                    <td><xsl:value-of select="titel"/></td>
                    <td><xsl:value-of select="interpret"/></td>
                    <td><xsl:value-of select="laufzeit"/></td>
                    <td><xsl:value-of select="erschienen"/></td>
                    <td><xsl:value-of select="link"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>