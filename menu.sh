#!/bin/bash

((n = 6))
echo -e "******************* Plateforme d'administration **********************\n"
echo -e "**********************************************************************\n"
echo -e "*\n"
echo -e "* Choisissez le type de l'intervention a faire :\n"
echo -e "* 1) Gestion des utilisateurs ;\n"
echo -e "* 2) Gestion des fichiers ;\n"
echo -e "* 3) Gestion de processeurs ;\n"
echo -e "* 4) Gestion et planification des taches (CRON) ;\n"
echo -e "* 5)  ;\n"
echo -e "* 6)  ;\n"
echo -e "* 0) Quitter!\n"
echo -e "*			 Entrez votre choix :				\n"
echo -e ""

read operation

while (("$operation" > "$n"))
do	
	echo -e "${red}Vous devez choisir un des nombres affiches${neutre}\n\n"
	echo -e "******************* Plateforme d'administration **********************\n"
	echo -e "**********************************************************************\n"
	echo -e "*\n"
	echo -e "* Choisissez le type de l'intervention a faire :\n"
	echo -e "* 1) Gestion des utilisateurs ;\n"
	echo -e "* 2) Gestion des fichiers ;\n"
	echo -e "* 3) Gestion de processeurs ;\n"
	echo -e "* 4) Gestion et planification des taches (CRON) ;\n"
	echo -e "* 5)  ;\n"
	echo -e "* 6)  ;\n"
	echo -e "* 0) Quitter!\n"
	echo -e "*			 Entrez votre choix :				\n"
	echo -e ""
	read operation
done

case $operation in
	1)
		echo "Gestion des utilisateurs"
		sudo ./gestion_utilisateurs.sh;;
	2)
		echo "Gestion des fichiers"
		sudo ./gestion_fichiers.sh
		;;
	3)
		echo "Gestion des processeurs"
		sudo ./gestion_processeurs.sh
		;;
	4)
		echo "Gestion et planification des taches (CRON)"
		sudo ./cron.sh
		;;
	5)
		echo "";;
	6)
		echo "";;
	0)
		echo "Quitter"
			exit;;
esac 

