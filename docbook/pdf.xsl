<?xml version='1.0' encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'>

<xsl:param name="latex.class.book">arkivverketbook</xsl:param>

<xsl:param name="latex.encoding">utf8</xsl:param>
<xsl:param name="latex.unicode.use">1</xsl:param>

<xsl:param name="double.sided">1</xsl:param>
<xsl:param name="page.width">21cm</xsl:param>
<xsl:param name="page.height">29cm</xsl:param>
<xsl:param name="page.margin.inner">0.8in</xsl:param>
<xsl:param name="page.margin.outer">0.55in</xsl:param>
<xsl:param name="page.margin.top">0.55in</xsl:param>
<xsl:param name="page.margin.bottom">0.55in</xsl:param>
<xsl:param name="latex.class.options">a4paper,openright,twoside</xsl:param>

<!-- Place table titles at the top -->
<xsl:param name="table.title.top">1</xsl:param>

<!-- Place figure titles at the top -->
<xsl:param name="figure.title.top">1</xsl:param>

<!-- Make sure tables do not float away from their proper location. -->
<xsl:param name="table.in.float">0</xsl:param>

<xsl:param name="toc.section.depth">2</xsl:param>

<!-- Drop aligned right text border to be visually similar to other
     documents from the Norwegian National Archive. -->
<xsl:param name="doc.alignment">left</xsl:param>

<!-- Fiks manglende oversettelse av '(continued)' -->
<xsl:param name="table.continue.caption">(fra forrige side)</xsl:param>

</xsl:stylesheet>
