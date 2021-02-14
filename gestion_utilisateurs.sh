#!/bin/bash
a=true
while($a)
do
n=9

	echo -e "${red}Vous devez choisir un des nombres affiches${neutre}\n\n"
	echo -e "******************* Plateforme d'administration **********************\n"
	echo -e "********************* Gestion des utilisateurs ***********************\n"
	echo -e "*\n"
	echo -e "* Choisissez l'intervention a faire :\n"
	echo -e "* 1) Afficher les utilisateurs;\n"
	echo -e "* 2) Ajouter un utilisateur;\n"
	echo -e "* 3) Supprimer un utilisateur;\n"
	echo -e "* 4) Afficher les groupes;\n"
	echo -e "* 5) Ajouter un groupe ;\n"
	echo -e "* 6) Supprimer un groupe;\n"
	echo -e "* 7) Changer de groupe ;\n"
	echo -e "* 8) Surveiller les quotas;\n"
	echo -e "* 9)Revenir a la plateforme d'administration \n"
	echo -e "* 0) Quitter!\n"
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
	echo -e "* 1) Afficher les utilisateurs;\n"
	echo -e "* 2) Ajouter un utilisateur;\n"
	echo -e "* 3) Supprimer un utilisateur;\n"
	echo -e "* 4) Afficher les groupes;\n"
	echo -e "* 5) Ajouter un groupe ;\n"
	echo -e "* 6) Supprimer un groupe;\n"
	echo -e "* 7) Changer de groupe ;\n"
	echo -e "* 8) Surveiller les quotas;\n"
	echo -e "* 9)Revenir a la plateforme d'administration \n"
	echo -e "* 0) Quitter!\n"
	echo -e "*			 Entrez votre choix :				\n"
	echo -e "************************************************************************\n"
	read operation
 done

case $operation in
		1)
			echo "Affichage des utilisateurs"
			cat /etc/passwd | awk -F: '{print $ 1}'
			;;
			
		2)	
			echo "Ajout d'un utilisateur"
			echo "Saisir le nom d'utilisateur a ajouter"
			read nom
			sudo useradd $nom
			;;
		3)
			echo "Suppression d'un utilisateur"
			echo "Saisir le nom d'utilisateur a supprimer"
			read nom
			sudo deluser $nom
			;;
		4)	
			echo "Affichage des groupes"
			cat /etc/group | awk -F: '{print $ 1}'
			;;
		5)
			echo "Ajout d'un groupe"
			echo "Saisir le nom du groupe a ajouter"
			read nom
			sudo groupadd $nom
			;;
		6)
			echo "Suppression d'un groupe"
			echo "Saisir le nom du groupe a supprimer"
			read nom
			sudo delgroup $nom
			;;
		7)
			echo "Changement d'un groupe"
			echo "Saisir le nom du groupe"
			read nom_actuel
			echo "Saisir le nouveau nom du groupe"
			read nouveau_nom
			 sudo groupmod -n $nouveau_nom $nom_actuel
			;;
		8)
			echo "Surveille des quotas"
			repquota -a 
			;;
		9)
			./menu.sh
			;;
		0)	
			exit
			;;
	esac
done
