<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>

            <body>
                <h1>My Phonebook</h1>
                <table border="0" bordercolor="#15b4d4">
                    <tr bgcolor="#329acd">
                        <th>Name</th>
                        <th>Last Name</th>
                        <th>Phone</th>
                        <!--
                        <th>Country</th>
                        -->
                        <th>City</th>
                        <th>Birthday</th>
                    </tr>
                    <xsl:for-each select="catalog/cd">
                        <tr>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="last_name"/>
                            </td>
                            <td>
                                <xsl:value-of select="phone"/>
                            </td>
                            <!--
                            <td>
                                <xsl:value-of select="country"/>
                            </td>
                            -->
                            <td>
                                <xsl:value-of select="city"/>
                            </td>
                            <td>
                                <xsl:value-of select="birthday"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>