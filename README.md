# SportLudique

- CONTEXTE: 
  - L'entreprise SportLudique a vu son CA baissé de 300 000 € en trois ans, l'objectif de l'entreprise et de 
rattraper ce chiffre d’affaires dès la 1ere année. C’est pourquoi elle souhaite lancer une boutique en ligne. La 
boutique devra être bien référencé afin que chaque type de page (catégorie, fiche produit et accueil) soit 
dans le top 3 google sur les requêtes ciblées. Un client pourra voir plusieurs produits, chaque produit en 
détail et réalisé son panier d’achat. L’administrateur quant à lui pourra gérer les utilisateurs, les produits, les 
catégories directement sur son interface d’administrateur.

- DESCRIPTION DE LA DEMANDE:
  - SportLudique souhaite se lancer dans le business en ligne et ouvrir sa plateforme e-commerce. La boutique
  ligne devra être bien référencé afin que chaque type de page (catégories, fiche produit et accueil) doit être harmonieuse
  entre les supports. Un client pourra voir un produit, rechercher un produit ou encore mettre un avis sur un produit qu'il
  a acheté. L'administrateur du site pourra ajouter, modifier et/ou supprimer des produits. Le chargé d'entrepot doit pouvoir
  commander des produits et être alerté sur les stocks.

- PRE-REQUIS:
	- Serveur local (WAMP ou XAMPP) avec PhpMyAdmin
	- Php -v 7.3.21
	- Composer
	- Symfony

- CONTRIBUANTS:
  - Élèves de BTS SIO option SLAM du lycée Fulbert
    -  Gabriel Harfouche - chef de projet/développeur
	
- Période de réalisation : Mars 2022 - Mai 2022

- NOTICE D'INSTALLATION:
	- téléchargez l'application au format .zip
	- Dézippez le fichier;
	- 2 choix s'offrent à vous, vous pouvez soit récupérer la base de données vierge avec les commandes suivantes :
		- Ouvrez un invité de commande à la racine du projet pour effectuer la migration de celui-ci et de sa base de données
		- Tapez les commandes suivantes : 
			- composer install
			- symfony console doctrine:database:create
			- symfony console make:migration (faite entrer pour répondre yes)
			- symfony console doctrine:migrations:migrate (faite entrer pour répondre yes) 
	
	- Ou alors aller sur PhpMyAdmin de votre serveur local et créez une base de données : "sportludique";
		-Aller sur la section "Importer", puis importer le fichier "sportludique.sql" présent dans le fichier dézipper;
	- Pour allumer le serveur vous devez faire : symfony server:start (laisser cet invité de commande ouvert pour laisser le serveur allumé)
	- Vous pouvez vous rendre à l'adresse 127.0.0.1:8000/
	- Pour accéder au compte admin vous pouvez utiliser les identifiants : admin@sportludique.com
	                                                                       Administrateur@28
