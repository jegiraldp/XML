<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<h1>
	<xsl:variable name="test">a</xsl:variable> 

	<xsl:element name="{$test}"> 
	<xsl:attribute name="href"><xsl:value-of select="//autor"/></xsl:attribute> 
	<xsl:text>Jorge es muy teso</xsl:text> 
	</xsl:element> 
			
		</h1>
		
	</xsl:template>
</xsl:stylesheet>
