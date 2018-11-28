<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
	
	<xsl:template match="/">
		<html>
		<head>
			HOLA
		</head>
			<body bgcolor="#ffffcc" text="#0000ff">
			<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
			
	<xsl:template match="fichero">

			<table border="1" bgcolor="white">
					<tr>
						<td><b>id</b></td>  	<td><b>Nombre</b></td> <td><b>Mercado</b></td> <td><b>Fecha</b></td>
					</tr>
					
					
					<xsl:for-each select="cotizacion" >
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
