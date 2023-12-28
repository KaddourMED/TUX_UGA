<?xml version="1.0" encoding="UTF-8"?>
<!-- Feuille de style XSL pour transformer un document XML de profil de jeu en une page HTML -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:prf="http://myGame/tux"
                version="1.0">
    
    <!-- Définition du format de sortie en HTML -->
    <xsl:output method="html"/>

    <!-- Modèle de correspondance pour l'élément racine du document XML -->
    <xsl:template match="/">
        <html>
            <head>
                <title>profil.xsl</title>
                <!-- Lien vers la feuille de style CSS externe -->
                <link rel="stylesheet" type="text/css" href="profil.css" />
            </head>
            <body>
                
                <!-- Affichage des informations générales du profil -->
                <p>Nom du profil :  <xsl:value-of select="//prf:nom/text()"/> </p>
                <p>Avatar :  <xsl:value-of select="//prf:avatar/text()"/> </p>
                <p>Date de naissance :  <xsl:value-of select="//prf:anniversaire/text()"/> </p>

                <!-- En-tête du tableau des parties -->
                <h2>Liste des parties</h2>
                <table>
                    <tr>
                        <td>Date</td>
                        <td>Temps</td>
                        <td>Niveau</td>
                        <td>Mot</td>
                        <td>% trouvé</td>
                    </tr>
                    <!-- Application du modèle pour chaque élément 'partie' -->
                    <xsl:apply-templates select="//prf:partie"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <!-- Modèle de correspondance pour l'élément 'partie' -->
    <xsl:template match="prf:partie">
        <tr>
            <!-- Affichage des informations de chaque partie dans une ligne du tableau -->
            <td><xsl:value-of select="@date"/></td>
            <td><xsl:value-of select="prf:temps/text()"/></td>
            <td><xsl:value-of select="prf:mot/@niveau"/></td>
            <td><xsl:value-of select="prf:mot/text()"/></td>
            <td><xsl:value-of select="@trouvé"/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>

