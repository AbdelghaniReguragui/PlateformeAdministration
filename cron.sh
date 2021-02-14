#!/bin/bash
#!/bin/bash
a=true
while($a)
do
n=5

	echo -e "${red}Vous devez choisir un des nombres affiches${neutre}\n\n"
	echo -e "******************* Plateforme d'administration **********************\n"
	echo -e "********************* Gestion et planification des taches ***********************\n"
	echo -e "*\n"
	echo -e "* Choisissez l'intervention a faire :\n"
	echo -e "* 1) Assurer l'execution de CRON;\n"
	echo -e "* 2) Redemarrer le service CRON;\n"
	echo -e "* 3) Activer le demarrage automatique;\n"
	echo -e "* 4) Revenir a la plateforme d'administration \n"
	echo -e "* 0) Quitter!\n"
	echo -e "*			 Entrez votre choix :				\n"
	echo -e "************************************************************************\n"
	read operation

while (("$operation" >= "$n"))
do	

	echo -e "${red}\n\nVous devez choisir un des nombres affiches${neutre}\n\n"
	echo -e "******************* Plateforme d'administration **********************\n"
	echo -e "********************* Gestion des processeurs ***********************\n"
	echo -e "*\n"
	echo -e "* 1) Assurer l'execution de CRON;\n"
	echo -e "* 2) Redemarrer le service CRON;\n"
	echo -e "* 3) Activer le demarrage automatique;\n"
	echo -e "* 4) Revenir a la plateforme d'administration \n"
	echo -e "* 0) Quitter!\n"
	echo -e "*			 Entrez votre choix :				\n"
	echo -e "************************************************************************\n\n"
	read operation
 done

case $operation in
		1)
			echo -e "*\n\nL'execution de CRON\n"
			ps -aux | grep cron
			;;
		2)	
			echo -e "*\n\nRedemarrage du service CRON;\n"
			/etc/init.d/cron restart
			;;
		3)
			echo -e "*\n\nActivation du demarrage automatique;\n"
			update-rc.d cron defaults
			;;
		4)	
			echo -e "*\n\nRevenir a la plateforme d'administration \n"
			./menu.sh
			;;
		
		0)	
			exit
			;;
	esac
done
