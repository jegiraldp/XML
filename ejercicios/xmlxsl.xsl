<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
	<xsl:template match="/">
		<html>
			
			<body>
				<table border="1">
					<tr>
						<td>
							<b>ID</b>
						</td>
						<td>
							<b>Nombre</b>
						</td>
						<td>
							<b>Mercado</b>
						</td>
						<td>
							<b>Fecha</b>
						</td>
					</tr>
					<xsl:for-each select="*/cotizacion" order-by="id">
						<tr>
							<td>
								<xsl:value-of select="@id"/>
							</td>
							<td>
								<xsl:value-of select="nombre"/>
							</td>
							<td>
								<xsl:value-of select="mercado"/>
							</td>
							<td>
								<xsl:value-of select="fecha/dia"/>
								<xsl:value-of select="fecha/mes"/>
								<xsl:value-of select="fecha/year"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
