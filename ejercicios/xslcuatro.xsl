<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="nombre|apellido">
		<div>
			<xsl:text>[etiqueta: </xsl:text>
			<xsl:value-of select="name()"/>
			<xsl:text> valor =  </xsl:text>
			<xsl:apply-templates/>
			<xsl:text> ]</xsl:text>
		</div>
	</xsl:template>
</xsl:stylesheet>
