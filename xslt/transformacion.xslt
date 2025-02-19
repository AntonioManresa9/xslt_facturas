<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Factura Electrónica</title>
      </head>
      <body>
        <h1>Factura Electrónica</h1>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="Factura">
    <div>
      <h2>Datos de la Factura</h2>
      <p>Número de Factura: <xsl:value-of select="NumeroFactura"/></p>
      <p>Fecha: <xsl:value-of select="Fecha"/></p>
      <p>Cliente: <xsl:value-of select="Cliente/Nombre"/></p>
      <p>Dirección: <xsl:value-of select="Cliente/Direccion"/></p>
      <p>Ciudad: <xsl:value-of select="Cliente/Ciudad"/></p>
      <p>Código Postal: <xsl:value-of select="Cliente/CodigoPostal"/></p>
      <h2>Productos</h2>
      <table border="1">
        <tr>
          <th>Descripción</th>
          <th>Cantidad</th>
          <th>Precio Unitario</th>
          <th>Total</th>
        </tr>
        <xsl:for-each select="Productos/Producto">
          <tr>
            <td><xsl:value-of select="Descripcion"/></td>
            <td><xsl:value-of select="Cantidad"/></td>
            <td><xsl:value-of select="PrecioUnitario"/></td>
            <td><xsl:value-of select="Total"/></td>
          </tr>
        </xsl:for-each>
      </table>
      <h2>Total Factura: <xsl:value-of select="Total"/></h2>
    </div>
  </xsl:template>
</xsl:stylesheet>