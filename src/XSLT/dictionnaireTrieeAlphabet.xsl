<?xml version="1.0" encoding="UTF-8"?>
<!-- Feuille de style XSL pour transformer un document XML de dictionnaire trié par ordre alphabétique -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:cdn="http://www.dictionnaire.fr"
                version="1.0">
    
    <!-- Définition du format de sortie en HTML -->
    <xsl:output method="html"/>
    
    <!-- Modèle de correspondance pour l'élément racine du document XML -->
    <xsl:template match="/">
        <html>
            <head>
                <title>dictionnaireTrieeAlphabet.xsl</title>
            </head>
            <body>
                <h1>Dictionnaire trié selon l'alphabet</h1>
                <table>
                    <!-- En-tête du tableau -->
                    <tr>
                        <td>Mot</td>
                        <td>Niveau</td>
                    </tr>
                    
                    <!-- Application du modèle pour chaque élément 'mot', trié par ordre alphabétique -->
                    <xsl:apply-templates select="//cdn:mot">
                        <xsl:sort select="text()" order="ascending"/>
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <!-- Modèle de correspondance pour l'élément 'mot' -->
    <xsl:template match="cdn:mot">
        <tr>
            <!-- Affichage du mot -->
            <td>        
                <xsl:value-of select="text()"/>
            </td>
            <!-- Affichage du niveau du mot -->
            <td>        
                <xsl:value-of select="@niveau"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>

