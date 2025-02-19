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
                <table border="1">
                    <tr>
                        <th>Número de Factura</th>
                        <th>Fecha</th>
                        <th>Emisor</th>
                        <th>Receptor</th>
                        <th>Importe Total</th>
                        <th>IVA</th>
                        <th>Total a Pagar</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="Facturae/Cabecera/NumeroFactura"/></td>
                        <td><xsl:value-of select="Facturae/Cabecera/FechaFactura"/></td>
                        <td><xsl:value-of select="Facturae/Cabecera/Emisor/Nombre"/> (<xsl:value-of select="Facturae/Cabecera/Emisor/NIF"/>)</td>
                        <td><xsl:value-of select="Facturae/Cabecera/Receptor/Nombre"/> (<xsl:value-of select="Facturae/Cabecera/Receptor/NIF"/>)</td>
                        <td><xsl:value-of select="Facturae/DatosFactura/ImporteTotal"/></td>
                        <td><xsl:value-of select="Facturae/DatosFactura/IVA"/></td>
                        <td><xsl:value-of select="Facturae/DatosFactura/TotalAPagar"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>