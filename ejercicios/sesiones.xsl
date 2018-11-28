<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/">
		<table border="1" cellpadding="6">
			<tr>
				<th><xsl:text>Sesion</xsl:text></th>
				<th><xsl:text>Tema</xsl:text></th>
				<th><xsl:text>Expositor</xsl:text></th>
			</tr>
			<xsl:for-each select="sesiones//*">
				<xsl:call-template name="tabla"/>
			</xsl:for-each>
	</table>
	</xsl:template>
	<xsl:template name="tabla">
		<tr>
			<td>
				<xsl:value-of select="./@id"/>
			</td>
			<td>
				<xsl:value-of select="tema"/>
			</td>
			<td>
				<xsl:value-of select="expositor"/>
			</td>
		</tr>
	</xsl:template>
	
</xsl:stylesheet>