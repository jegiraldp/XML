<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h2 align="center">Documento XML del Trabajo de Grado</h2>
<p><b>Titulo: </b> <i><xsl:value-of select="//titulo"/></i></p>
<p><b>Autores: </b> <i><xsl:value-of select="//autor[1]"/></i> --  <i><xsl:value-of select="//autor[2]"/></i></p>
<p><b>Grado: </b> <i><xsl:value-of select="//grado"/></i></p>
<p><b>Promoción: </b> <i><xsl:value-of select="//promocion"/></i></p>
<p><b>Institución: </b> <i><xsl:value-of select="//ie"/></i></p>
<p><b>Ciudad: </b> <i><a href="http://www.politecnicojic.edu.co"><xsl:value-of select="//ciudad"/></a></i></p>
<p><b>Contacto: </b> <i><xsl:value-of select="//contacto"/></i></p>
</body>
</html>
</xsl:template>
</xsl:stylesheet>