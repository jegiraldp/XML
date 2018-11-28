<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<p><b>Titulo: </b> <i><xsl:value-of select="/tais/curso"/></i></p>
<p><b>Tematica: </b> <i><xsl:value-of select="/tais/tematica"/></i></p>
<p><b>Docente: </b> <i><xsl:value-of select="/tais/docente"/></i></p>

<p><u>Estudiantes</u></p>
<table border="1">
<tr><th>Nombres</th><th>Apellidos</th><th>Documento</th></tr>

<xsl:for-each select="//estudiantes/estudiante">
<tr>
<td><xsl:value-of select="./nombres"/></td>
<td><xsl:value-of select="./apellidos"/></td>
<td><xsl:value-of select="./@cc"/></td>
</tr>


</xsl:for-each>
</table>


</body>
</html>
</xsl:template>
</xsl:stylesheet>