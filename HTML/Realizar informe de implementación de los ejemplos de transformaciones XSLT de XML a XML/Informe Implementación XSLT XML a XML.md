# Implementación de Transformaciones XSLT de XML a XML


Fundamentos de XSLT

XSLT es un lenguaje para transformar documentos XML en otros formatos, como HTML, texto plano, u otros documentos XML. Fue desarrollado por el W3C y es parte de la familia de tecnologías XML.

## XML de entrada:

```xml
<catalogo>
  
  <cd>
    <titulo>El mar que no cesa</titulo>
    <artista>Heroes del silencio</artista>
    <pais>España</pais>
    <compania>Dro</compania>
    <precio>5,60</precio>
    <anio>1989</anio>
  </cd>
  
  <cd>
    <titulo>París</titulo>
    <artista>Supertramp</artista>
    <pais>Inglaterra</pais>
    <compania>Columbia</compania>
    <precio>10,80</precio>
    <anio>2000</anio>
  </cd>
  
  <cd>
    <titulo>Bulerías</titulo>
    <artista>Manolo Escobar</artista>
    <pais>España</pais>
    <compania>Dro</compania>
    <precio>5,60</precio>
    <anio>1976</anio>
  </cd>
  
  <cd>
    <titulo>Manolo</titulo>
    <artista>El Fary</artista>
    <pais>España</pais>
    <compania>Dro</compania>
    <precio>4,80</precio>
    <anio>1950</anio>
  </cd>
  
</catalogo>
```

## Transformación XSLT

```xml
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes" />

  <xsl:template match="/">
    <catalogo>
      <xsl:for-each select="//cd">
        <cd>
          <xsl:value-of select="titulo" />
          <xsl:value-of select="artista" />
          <xsl:value-of select="pais" />
        </cd>
      </xsl:for-each>
    </catalogo>
  </xsl:template>

</xsl:stylesheet>
```

## Resultado

```xml
<catalogo>
  <cd>
    <titulo>El mar que no cesa</titulo>
    <artista>Heroes del silencio</artista>
    <pais>España</pais>
  </cd>
  <cd>
    <titulo>París</titulo>
    <artista>Supertramp</artista>
    <pais>Inglaterra</pais>
  </cd>
  <cd>
    <titulo>Bulerías</titulo>
    <artista>Manolo Escobar</artista>
    <pais>España</pais>
  </cd>
  <cd>
    <titulo>Manolo</titulo>
    <artista>El Fary</artista>
    <pais>España</pais>
  </cd>
</catalogo>
```