<xsl:stylesheet version = '1.0'  xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:wsdl='http://schemas.xmlsoap.org/wsdl/'>
<xsl:template match="wsdl:message"> 
     <h1> 
          <xsl:value-of select="wsdl:part"/> 
     </h1> 
    </xsl:template>
</xsl:stylesheet> 