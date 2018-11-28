<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
	<xsl:template match="/">
		
		<table border="1" bgcolor="white">
		<tr>
				<th>
					<xsl:value-of select="/*/*/@edad"/>
				</th>
				<th>
					<b>Nombre</b>
				</th>
				<th>
					<b>Mercado</b>
				</th>
				<th>
					<b>Fecha</b>
				</th>
			</tr>
			</table>
		
	</xsl:template>
</xsl:stylesheet>
