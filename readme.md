

Name des Knotens:

	<xsl:value-of select="name(.)" />-

Name des Vaterknotens:

	<xsl:value-of select="name(..)" />-

Erstellen des rst Dokuments

	xsltproc imgProcTLS.xsl imgProcTLS.xml > imgProcTLS.rst



# Änderungswünsche

Damit das XSLT noch einfacher wird wären folgende Änderungen sehr hilfreich:

1. die Parameter unter <structs>.<\*>.<M_*> auch mit <\*Parameter> klammern,
1. den Text unter <hint> besser mit einem eigenen Knoten klammern statt mit weiteren Knoten zu mischen.
1. Keine HTML-Zeichen in den Text oder zwischen die Knoten. Im Text besser \n verwenden und durch den Parser ersetzen.
1. keine unnötigen Leerzeichen im Text.


<xsl:template match="structs | InputParameter | OutputParameter">

<xsl:sort select="translate (@name, $uppercase, $lowercase )"/>