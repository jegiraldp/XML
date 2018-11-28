<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
	<xsl:template match="/">
		<html>
			<head>
				<h3 style="color:red">Práctica 1, XSL..</h3>
			</head>
			<body bgcolor="#ffffcc" text="#0000ff">
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="fichero">
		<table border="1" bgcolor="white">
			<tr>
				<th>
					<b>id</b>
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
			<xsl:for-each select="cotizacion">
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
	</xsl:template>
</xsl:stylesheet>
