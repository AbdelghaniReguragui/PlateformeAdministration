#!/bin/bash
n=8
a=$true
while($a)
do
echo -e "******************* Plateforme d'administration **********************\n"
echo -e "********************* Gestion des fichiers ***********************\n"
echo -e "*\n"
echo -e "* Choisissez l'intervention a faire :\n"
echo -e "* 1) Afficher les fichiers;\n"
echo -e "* 2) Ajouter un fichier;\n"
echo -e "* 3) Supprimer un fichier;\n"
echo -e "* 4) Faire une copie d'un fichier sous un autre nom;\n"
echo -e "* 5) Renommer un fichier ;\n"
echo -e "* 6) Renommer et deplacer un fichier ;\n"
echo -e "* 7) Afficher le répertoire où l'on se trouve ;\n"
echo -e "* 8)Revenir a la plateforme d'administration \n"
echo -e "* 0)Quitter!\n"
echo -e "*			 Entrez votre choix :				\n"
echo -e "************************************************************************\n"
read operation



while (("$operation" > "$n"))
do	

	echo -e "${red}Vous devez choisir un des nombres affiches${neutre}\n\n"
	echo -e "******************* Plateforme d'administration **********************\n"
	echo -e "********************* Gestion des utilisateurs ***********************\n"
	echo -e "*\n"
	echo -e "* Choisissez l'intervention a faire :\n"
	echo -e "* 1) Afficher les fichiers;\n"
	echo -e "* 2) Ajouter un fichier;\n"
	echo -e "* 3) Supprimer un fichier;\n"
	echo -e "* 4) Faire une copie d'un fichier sous un autre nom;\n"
	echo -e "* 5) Renommer un fichier ;\n"
	echo -e "* 6) Renommer et deplacer un fichier ;\n"
	echo -e "* 7) afficher le répertoire où l'on se trouve ;\n"
	echo -e "* 8)Revenir a la plateforme d'administration \n"
	echo -e "* 0) Quitter!\n"
	echo -e "*			 Entrez votre choix :				\n"
	echo -e "************************************************************************\n"
	read operation
 done
 
 
 
 case $operation in
		1)
			echo "Affichage des fichiers"
			ls -lsha
			./gestion_fichiers.sh
			;;
			
		2)	
			echo "Ajout d'un fichier"
			echo "Saisir le nom du fichier a ajouter"
			read fichier
			touch $fichier
			;;
		3)
			echo "Suppression d'un fichier"
			echo "Saisir le nom du fichier a supprimer"
			read fichier
			rm $fichier
			;;
		4)	
			echo "Faire une copie d'un fichier sous un autre nom"
			echo "Saisir le nom du fichier a copier"
			read fichier
			echo "Saisir le nouveau nom du fichier a copier"
			read nv_fichier
			cp $fichier $nv_fichier
			;;
		5)
			echo "Renomme d'un fichier"
			echo "Saisir le nom du fichier a renommer"
			read fichier
			echo "Saisir le nouveau nom du fichier"
			read nv_fichier
			mv $fichier $nv_fichier
			
			;;
		6)
			echo "Renommer et deplacer un fichier"
			echo "Saisir le nom du fichier a deplacer"
			read fichier
			echo "Saisir le nom du dossier a deplacer"
			read dossier
			mv $fichier $dossier
			;;
		7)
			echo "Afficher le répertoire où l'on se trouve"
			pwd
			;;
		8)
			./menu.sh
			;;
		0)	
			exit
			;;
	esac
done
 
 
 
