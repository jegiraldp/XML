<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
		<p>
			<b>Horario de: </b>
			<xsl:value-of select="//Estudiante/Nombre/text()"></xsl:value-of>
			<b> DNI: </b>
			<xsl:value-of select="//Estudiante/@*"></xsl:value-of>
			<b> Plan: </b>
			<xsl:value-of select="//Estudiante/Plan/text()"></xsl:value-of>
			<b> Semestre: </b>
			<xsl:value-of select="//Estudiante/Semestre/text()"></xsl:value-of>
		</p>

		<table border="1" width="100%" cellpadding="1" cellspacing="1">
			<tr bgcolor="DDDDAA">
				<th align="left">Hora-dia</th>
				<th align="left">Lunes</th>
				<th align="left">Martes</th>
				<th align="left">Miercoles</th>
				<th align="left">Jueves</th>
				<th align="left">Viernes</th>
				<th align="left">Sabado</th>
			</tr>
			<xsl:for-each select="//Horario/Horas">
					<tr>
						<td>
							<xsl:value-of select="Hora"/>
						</td>
						<td>
							<xsl:value-of select="Lunes"/>
						</td>
						<td>
							<xsl:value-of select="Martes"/>
						</td>
						<td>
							<xsl:value-of select="Miercoles"/>
						</td>
						<td>
							<xsl:value-of select="Jueves"/>
						</td>
						<td>
							<xsl:value-of select="Viernes"/>
						</td>
						<td>
							<xsl:value-of select="Sabado"/>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</html>
	</xsl:template>
</xsl:stylesheet>
