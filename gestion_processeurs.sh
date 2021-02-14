#!/bin/bash
#!/bin/bash
a=true
while($a)
do
n=5

	echo -e "${red}Vous devez choisir un des nombres affiches${neutre}\n\n"
	echo -e "******************* Plateforme d'administration **********************\n"
	echo -e "********************* Gestion des processeurs ***********************\n"
	echo -e "*\n"
	echo -e "* Choisissez l'intervention a faire :\n"
	echo -e "* 1) Creation d un processeurs;\n"
	echo -e "* 2) Destruction d un processeurs;\n"
	echo -e "* 3) Terminer un processeurs;\n"
	echo -e "* 4) Afficher les processeurs;\n"
	echo -e "* 5) Revenir a la plateforme d'administration \n"
	echo -e "* 0) Quitter!\n"
	echo -e "*			 Entrez votre choix :				\n"
	echo -e "************************************************************************\n"
	read operation

while (("$operation" >= "$n"))
do	

	echo -e "${red}Vous devez choisir un des nombres affiches${neutre}\n\n"
	echo -e "******************* Plateforme d'administration **********************\n"
	echo -e "********************* Gestion des processeurs ***********************\n"
	echo -e "*\n"
	echo -e "* Choisissez l'intervention a faire :\n"
	echo -e "* 1) Creation d un processeurs;\n"
	echo -e "* 2) Destruction d un processeurs;\n"
	echo -e "* 3) Terminer un processeurs;\n"
	echo -e "* 4) Afficher les processeurs;\n"
	echo -e "* 5) Revenir a la plateforme d'administration \n"
	echo -e "* 0) Quitter!\n"
	echo -e "*			 Entrez votre choix :				\n"
	echo -e "************************************************************************\n"
	read operation
 done

case $operation in
		1)
			echo "Creation d un processeurs"
			./fork.exe&
			;;
			
		2)	
			echo "Destruction d un processeurs"
			echo "Saisir le PID de processeurs a supprimer"
			read pid
			echo "Apres la suppression le plateform sera fermee"
			kill -2 $pid
			
			;;
		3)
			echo "Terminer un processeur"
		       echo "PID serial"
		       echo "Saisir le PID de processeur"
			read pid
		       wait $pid
			;;
		4)	
			echo "Afficher les processeurs"
			ps
			
			
			;;
		5)
			./menu.sh
			;;
		0)	
			exit
			;;
	esac
done
