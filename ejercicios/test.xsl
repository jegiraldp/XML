<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
	<xsl:template match="/">
		<h2>
			<font color="red">
				<xsl:value-of select="//nombre[0]"/>
			</font>
		</h2>
		<h2>
			<xsl:value-of select="//fecha[0]/year"/>
		</h2>
	</xsl:template>
</xsl:stylesheet>
