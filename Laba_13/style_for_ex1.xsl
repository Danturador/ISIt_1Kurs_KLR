<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>GOW</title>
        <style>
            td {
                border: 1px solid rgb(140, 124, 103);
                padding: 5px;
                background-color: rgba(152, 188, 243, 0.7);
            }
            th {
                border: 1px solid rgb(70, 129, 136);
                padding: 5px;
                color: rgb(255, 255, 255);
                background-color: rgb(63, 63, 197);
            }
        </style>
    </head>
    <body>
        <table style="border-collapse: collapse; margin:10px;">
            <tr style ="background: rgb(160, 167, 220); font-size: 20px;">
                <th>Имя</th>
                <th>Оружие</th>
                <th>Статус</th>
                <th>Место рождения</th>
            </tr>
            <xsl:for-each select="GOW/character">
            <xsl:sort select="name"/>
            <tr style="background-color: rgb(255, 255, 255); font-size: 20px;">
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="weapon"/></td>
                <td><xsl:value-of select="status"/></td>
                <td><xsl:value-of select="bornPlace"/></td>
            </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>