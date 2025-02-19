# Transformación XSLT para Facturas Electrónicas

Este archivo XSLT transforma un XML de factura en una página HTML formateada.

## Estructura del XSLT

- **Encabezado XML**: Define la versión y codificación.
- **`<xsl:stylesheet>`**: Declara el espacio de nombres XSLT.
- **`<xsl:output>`**: Especifica la salida en formato HTML.
- **Plantilla raíz (`/`)**:
  - Genera la estructura HTML base.
  - Aplica las plantillas a los elementos del XML.

### Plantilla de `Factura`
- Extrae y muestra:
  - **Número de Factura**
  - **Fecha**
  - **Datos del Cliente** (Nombre, Dirección, Ciudad, Código Postal)
- Genera una tabla con los productos:
  - **Descripción**
  - **Cantidad**
  - **Precio Unitario**
  - **Total**
- Muestra el **Total de la Factura**.

## Ejemplo de Transformación

Dado el siguiente XML:

