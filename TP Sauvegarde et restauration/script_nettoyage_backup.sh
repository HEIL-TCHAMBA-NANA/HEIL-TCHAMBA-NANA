#!/bin/bash

echo "Entrez l'adresse IP du serveur distant sur lequel la sauvegarde sera supprimer : "
read addresse

echo "Veuillez entrer le nom du compte dans lequel la sauvegarde sera supprimer : "
read nomUtilisateur

echo "Veuiller entrer le chemin du repertoire dans le quel les fichiers de la sauvegarde complete ont ete stocker : "
read cheminRepertoire

echo "Veuiller entrer le chemin du repertoire dans le quel les fichiers de la sauvegarde differentielle seront stocker : "
read cheminRepertoireDiff

echo "Veuiller entrer le chemin du repertoire dans le quel les fichiers de la sauvegarde mensuelle seront stocker : "
read cheminRepertoireMensuel

ssh $nomUtilisateur@$addresse "
find '$cheminRepertoireDiff' -type f -mtime +7 -exec rm -f {} \; &&
find '$cheminRepertoire' -type f -mtime +28 -exec rm -f {} \; &&
find '$cheminRepertoireMensuel' -type f -mtime +180 -exec rm -f {} \;"