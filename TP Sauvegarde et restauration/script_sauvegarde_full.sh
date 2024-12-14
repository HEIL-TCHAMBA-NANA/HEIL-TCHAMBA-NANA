#!/bin/bash

echo "Entrez l'adresse IP du serveur distant sur lequel la sauvegarde sera stockée : "
read addresse

echo "Veuillez entrer le nom du compte dans lequel seront stockées ces informations : "
read nomUtilisateur

echo "Veuiller entrer le chemin du repertoire dans le quel le fichier sera stocker : "
read cheminRepertoire

rsync -avz --progress /home/heil/Desktop/R1 $nomUtilisateur@$addresse:$cheminRepertoire