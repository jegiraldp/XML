<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Horario Ruben Villa - Estudiante T&#243;picos Avanzados en Ingenier&#237;a de Software</h1>
				<table border="1">
					<tr bgcolor="skyblue">
						<th align="left">Hora-dia</th>
						<th align="left">Lunes</th>
						<th align="left">Martes</th>
						<th align="left">Miercoles</th>
						<th align="left">Jueves</th>
						<th align="left">Viernes</th>
						<th align="left">Sabado</th>
						<th align="left">Domingo</th>
					</tr>
					<xsl:for-each select="horario/horas">
						<tr>
							<td>
								<xsl:value-of select="hora"/>
							</td>
							<td>
								<xsl:value-of select="lunes"/>
							</td>
							<td>
								<xsl:value-of select="martes"/>
							</td>
							<td>
								<xsl:value-of select="miercoles"/>
							</td>
							<td>
								<xsl:value-of select="jueves"/>
							</td>
							<td>
								<xsl:value-of select="viernes"/>
							</td>
							<td>
								<xsl:value-of select="sabado"/>
							</td>
							<td>
								<xsl:value-of select="domingo"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
