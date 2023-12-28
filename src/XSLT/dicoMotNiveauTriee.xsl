<?xml version="1.0" encoding="UTF-8"?>
<!-- Feuille de style XSL pour transformer un document XML de dictionnaire -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:cdn="http://www.dictionnaire.fr"
                version="1.0">
    
    <!-- Définition du format de sortie en HTML -->
    <xsl:output method="html"/>
    
    <!-- Modèle de correspondance pour l'élément racine du document XML -->
    <xsl:template match="/">
        <html>
            <head>
                <title>dicoMotNiveauTriee.xsl</title>
            </head>
            <body>
                <h1>Mots regroupés par niveau et triés par ordre alphabétique</h1>
                <table>
                    <!-- En-tête du tableau -->
                    <tr>
                        <td>Mot</td>
                        <td>Niveau</td>
                    </tr>
                    
                    <!-- Sélection des mots de niveau 1, triés par ordre alphabétique -->
                    <tr>
                        <td>NIVEAU 1</td>
                    </tr>
                    <xsl:apply-templates select="//cdn:mot[@niveau = 1]">
                        <xsl:sort select="text()" order="ascending"/>
                    </xsl:apply-templates>
                    
                    <!-- Sélection des mots de niveau 2, triés par ordre alphabétique -->
                    <tr>
                        <td>NIVEAU 2</td>
                    </tr>
                    <xsl:apply-templates select="//cdn:mot[@niveau = 2]">
                        <xsl:sort select="text()" order="ascending"/>
                    </xsl:apply-templates>
                    
                    <!-- Sélection des mots de niveau 3, triés par ordre alphabétique -->
                    <tr>
                        <td>NIVEAU 3</td>
                    </tr>
                    <xsl:apply-templates select="//cdn:mot[@niveau = 3]">
                        <xsl:sort select="text()" order="ascending"/>
                    </xsl:apply-templates>
                    
                    <!-- Sélection des mots de niveau 4, triés par ordre alphabétique -->
                    <tr>
                        <td>NIVEAU 4</td>
                    </tr>
                    <xsl:apply-templates select="//cdn:mot[@niveau = 4]">
                        <xsl:sort select="text()" order="ascending"/>
                    </xsl:apply-templates>
                    
                    <!-- Sélection des mots de niveau 5, triés par ordre alphabétique -->
                    <tr>
                        <td>NIVEAU 5</td>
                    </tr>
                    <xsl:apply-templates select="//cdn:mot[@niveau = 5]">
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

