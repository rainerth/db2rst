<xsl:stylesheet version="1.0"
	xmlns:str="http://exslt.org/strings"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />

<xsl:output method="text" />




<xsl:template match="PluginListing/structs">
<xsl:text>&#13;&#10;</xsl:text>
.. _ref-api-<xsl:value-of select="translate( name(.), $uppercase, $lowercase )" />:

************
|VL| Structs
************

<xsl:for-each select="*">
<xsl:text>&#13;&#10;</xsl:text>
.. _ref-api-<xsl:value-of select="name(..)" />-<xsl:value-of select="translate (@name, $uppercase, $lowercase )" />:

``<xsl:value-of select="@name" />``
==================================

<xsl:text>&#13;&#10;</xsl:text>


<xsl:for-each select="*">

<xsl:text>&#13;&#10;</xsl:text>
<xsl:value-of select="@text" />  \[<xsl:value-of select="@internal_name" />\]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. rst-class:: right-align-left-col
.. list-table::
	:widths: 20 80
	:header-rows: 0
	:stub-columns: 1

	*	-	internal_name
		-	<xsl:value-of select="@internal_name" />
	*	-	allowed
		-	<xsl:value-of select="@allowed" />
	*	-	default
		-	<xsl:value-of select="@default" />
	*	-	dialogtype
		-	<xsl:value-of select="@dialogtyp" />
	*	-	min
		-	<xsl:value-of select="@min" />
	*	-	max
		-	<xsl:value-of select="@max" />
	*	-	password
		-	<xsl:value-of select="@password" />
	*	-	readonly
		-	<xsl:value-of select="@readonly" />
	*	-	text
		-	<xsl:value-of select="@text" />
	*	-	typ
		-	<xsl:value-of select="@typ" />
	*	-	visible
		-	<xsl:value-of select="@visible" />
<xsl:text>&#13;&#10;</xsl:text>

<xsl:if test="hint != ''">
.. hint::

	<xsl:value-of select="str:replace ( hint, '&lt;BR&gt;&amp;nbsp;', '&#13;&#10;&#13;&#10;&#09;')" />
</xsl:if>

<xsl:text>&#13;&#10;</xsl:text>

</xsl:for-each>

</xsl:for-each>
</xsl:template>



<xsl:template match="PluginListing/functions">
<xsl:text>&#13;&#10;</xsl:text>
.. _ref-api-<xsl:value-of select="name(.)" />:

**************
|VL| Functions
**************

<xsl:for-each select="*">
<xsl:text>&#13;&#10;</xsl:text>

.. _ref-api-<xsl:value-of select="name(..)" />-<xsl:value-of select="translate (@name, $uppercase, $lowercase )" />:

<xsl:value-of select="@text" /> ``<xsl:value-of select="@name" />()``
=====================================================================

.. rst-class:: right-align-left-col
.. list-table::
	:widths: 20 80
	:header-rows: 0
	:stub-columns: 1

	*	-	Class.. rst-class:: right-align-left-col

		-	<xsl:value-of select="@klasse" />
	*	-	Name
		-	<xsl:value-of select="@name" />
	*	-	Text
		-	<xsl:value-of select="@text" />
	*	-	ExecutionText
		-	.. code-block:: lua

				<xsl:value-of select="@executionText" />

	*	-	Level
		-	<xsl:value-of select="@level" />
	*	-	Icon
		-	<xsl:value-of select="@icon" />

<xsl:text>&#13;&#10;</xsl:text>

<xsl:if test="hint != ''">
.. hint::

	<xsl:value-of select="hint" />
</xsl:if>




<xsl:text>&#13;&#10;</xsl:text>
.. _ref-api-input-<xsl:value-of select="translate (@name, $uppercase, $lowercase )" />:

Input Parameters
----------------

::

	<xsl:value-of select=" str:replace ( InputParameter, '&lt;BR&gt;&amp;nbsp;', '&#13;&#10;&#09;')" />

<xsl:text>&#13;&#10;</xsl:text>

<xsl:apply-templates select="InputParameter"/>




<xsl:text>&#13;&#10;</xsl:text>
.. _ref-api-output-<xsl:value-of select="translate (@name, $uppercase, $lowercase )" />:

Output Parameters
-----------------

::

	<xsl:value-of select=" str:replace ( OutputParameter, '&lt;BR&gt;&amp;nbsp;', '&#13;&#10;')" />

<xsl:text>&#13;&#10;</xsl:text>

<xsl:apply-templates select="OutputParameter"/>

</xsl:for-each>
</xsl:template>




<xsl:template match="InputParameter | OutputParameter">

<xsl:for-each select="*">

<xsl:text>&#13;&#10;</xsl:text>
<xsl:value-of select="@internal_name" />
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. list-table::
	:widths: 20 80
	:header-rows: 0
	:stub-columns: 1

	*	-	internal_name
		-	<xsl:value-of select="@internal_name" />
	*	-	allowed
		-	<xsl:value-of select="@allowed" />
	*	-	default
		-	<xsl:value-of select="@default" />
	*	-	dialogtype
		-	<xsl:value-of select="@dialogtyp" />
	*	-	min
		-	<xsl:value-of select="@min" />
	*	-	max
		-	<xsl:value-of select="@max" />
	*	-	password
		-	<xsl:value-of select="@password" />
	*	-	readonly
		-	<xsl:value-of select="@readonly" />
	*	-	text
		-	<xsl:value-of select="@text" />
	*	-	typ
		-	:ref:`<xsl:value-of select="@typ" /> &lt;ref-api-structs-<xsl:value-of select="translate (@typ, $uppercase, $lowercase )" />&gt;`
	*	-	visible
		-	<xsl:value-of select="@visible" />
<xsl:text>&#13;&#10;</xsl:text>

<xsl:if test="hint != ''">
.. hint::

	<xsl:value-of select="str:replace ( hint/text(), '&lt;BR&gt;&amp;nbsp;', '&#13;&#10;&#13;&#10;&#09;')" />

<xsl:if test="hint/row[1] != ''">
Row (X):
	<xsl:value-of select="hint/row[1]" />
</xsl:if>

<xsl:if test="hint/col[1] != ''">
Col (Y):
	<xsl:value-of select="hint/col[1]" />
</xsl:if>

<xsl:if test="hint/row[2] != ''">
Row (X) 2:
	<xsl:value-of select="hint/row[2]" />
</xsl:if>

<xsl:if test="hint/col[2] != ''">
Col (Y) 2:
	<xsl:value-of select="hint/col[2]" />
</xsl:if>

<xsl:if test="hint/hight != ''">
Height:
	<xsl:value-of select="hint/hight" />
</xsl:if>

<xsl:if test="hint/width != ''">
Width:
	<xsl:value-of select="hint/width" />
</xsl:if>

<xsl:if test="hint/angle != ''">
Angle:
	<xsl:value-of select="hint/angle" />
</xsl:if>

</xsl:if>

<xsl:text>&#13;&#10;</xsl:text>

</xsl:for-each>
</xsl:template>



</xsl:stylesheet>
