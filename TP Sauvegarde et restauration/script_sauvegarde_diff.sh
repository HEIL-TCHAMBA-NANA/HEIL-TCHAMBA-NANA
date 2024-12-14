#!/bin/bash

echo "Entrez l'adresse IP du serveur distant sur lequel la sauvegarde sera stockée : "
read addresse

echo "Veuillez entrer le nom du compte dans lequel seront stockées ces informations : "
read nomUtilisateur

echo "Veuiller entrer le chemin du repertoire dans le quel les fichiers de la sauvegarde complete ont ete stocker : "
read cheminRepertoire

echo "Veuiller entrer le chemin du repertoire dans le quel les fichiers de la sauvegarde differentielle seront stocker : "
read cheminRepertoireDiff

rsync -avz --progress --compare-dest=$cheminRepertoire /home/heil/Desktop/R1 $nomUtilisateur@$addresse:$cheminRepertoireDiff