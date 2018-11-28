<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="itinerario">
		<html>
			<body>
					<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="itinerario">
		<table style="border: white 1px solid;">
			<tr style=" background: blue; color=white;">
				<th>Logo</th>
				<th>Aerolinea</th>
				<th>Origen</th>
				<th>Hora Programada</th>
				<th>Hora Estimada</th>
				<th>Estatus</th>
			</tr>
			<xsl:for-each select="document('vuelos.xml')//vuelo">
				<tr style="background: pink;">
					<td>
						<img width="40px" hieght="15px">
							<xsl:attribute name="src">
								<xsl:value-of select="logo" />
							</xsl:attribute>
						</img> 
					</td>
					<td>
						<xsl:value-of select="aerolinea"/>
					</td>
					<td>
						<xsl:value-of select="origen"/>
					</td>
					<td>
						<xsl:value-of select="horaprogramada"/>
					</td>
					<td>
						<xsl:value-of select="horaestimada"/>
					</td>
					<td>
						<xsl:choose>
							<xsl:when test="estatus/@estado='OnTime'">
								<div style="color: green; font-weight:bold;">
									<xsl:value-of select="estatus/@estado"/>
								</div>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="estatus/@estado"/>
							</xsl:otherwise>
						</xsl:choose>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>
