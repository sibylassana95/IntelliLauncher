<a name="readme-top"></a>
# IntelliLauncher

IntelliLauncher est un script qui permet d'ouvrir automatiquement plusieurs projets IntelliJ dans des fenêtres séparées en fonction de la présence d'un dossier .idea dans les sous-dossiers d'un répertoire. Ce script facilite l'ouverture rapide de plusieurs projets sans avoir à ouvrir chaque instance manuellement.

## Objectif

Ce projet simplifie le processus d'ouverture de plusieurs projets IntelliJ, particulièrement lorsqu'on travaille sur une architecture complexe avec de nombreux sous-projets. Le script va automatiquement détecter les dossiers contenant un dossier .idea et ouvrira chaque projet dans une fenêtre distincte d'IntelliJ IDEA.

## Prérequis

Avant de pouvoir utiliser ce script, il y a quelques prérequis :

* IntelliJ IDEA doit être installé sur votre machine.
* Vous devez avoir idea.bat disponible dans le PATH de votre système pour que le script fonctionne correctement. Voici comment l'ajouter si ce n'est pas déjà fait.

### Ajouter IntelliJ à votre PATH

- Trouver le chemin de idea.bat :

Localisez le fichier idea.bat, qui se trouve généralement dans le répertoire bin d'IntelliJ IDEA. Par exemple, pour la version "Community Edition", le chemin sera quelque chose comme :

```batch
C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2024.1.4\bin
```

- Ajouter ce chemin dans les variables d'environnement :

Ouvrez Ce PC (ou Poste de travail) > Propriétés > Paramètres système avancés.
Cliquez sur Variables d'environnement.
Dans la section Variables système, trouvez et sélectionnez Path, puis cliquez sur Modifier.
Ajoutez le chemin complet vers le dossier bin (par exemple : C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2024.1.4\bin).
Cliquez sur OK pour appliquer les changements.
Cela permettra à votre terminal d'exécuter idea.bat directement sans avoir à spécifier son chemin complet.

## Installation

Clonez ou téléchargez le dépôt GitHub :

Si vous ne l'avez pas encore, clonez ou téléchargez ce repository sur votre machine locale.

```bash
git clone https://github.com/votre-utilisateur/intelli-launcher.git
```

Placez le script à la racine de votre projet :

Vous pouvez mettre le fichier open_projects.bat à la racine de votre répertoire de travail.

Vérifiez que idea.bat est bien dans le PATH de votre système comme expliqué plus haut.

## Utilisation

Exécution du script :

Double-cliquez simplement sur le fichier open_projects.bat pour exécuter le script.
Le script ouvrira tous les projets IntelliJ contenant un dossier .idea dans une nouvelle fenêtre IntelliJ.



### Exemple de Code (le fichier open_projects.bat)

```batch
@echo off
REM Parcourt tous les sous-dossiers
for /D %%d in (*) do (
    if exist "%%d\.idea" (
        echo Ouverture de %%d
        start "" /b idea.bat "%%d"
    )
)
exit
```

## Notes

Ce script est conçu pour être utilisé sous Windows.
Le script ouvrira chaque projet IntelliJ dans une fenêtre séparée, ce qui vous permettra de travailler sur plusieurs projets simultanément.
Vous pouvez personnaliser le répertoire de base ou les arguments de lancement en modifiant le fichier .bat selon vos besoins.

## Contributions

Voici comment vous pouvez participer :

* Rapporter des Bugs : Si vous rencontrez des erreurs ou des comportements inattendus, veuillez ouvrir une issue et décrire le problème en détail.
* Proposer des Améliorations : Si vous avez une idée pour améliorer le script ou si vous avez trouvé une meilleure solution pour certains problèmes, n'hésitez pas à proposer des améliorations.
* Envoyer une Pull Request : Si vous avez apporté des modifications et souhaitez les partager, ouvrez une Pull Request avec une description claire de vos changements.
* Discussions et Questions : Si vous avez des questions ou souhaitez discuter de nouvelles fonctionnalités, vous pouvez aussi ouvrir une discussion dans le repository.

Merci de contribuer à ce projet et d'améliorer l'expérience d'utilisation de tous !
## 👤 Author 

[![LASSANA SIBY](https://avatars.githubusercontent.com/u/103085452?u=13ace4d88a52056741734e0f802ca7c0053e1e80&v=4&s=40)](https://github.com/sibylassana95)  
Created by **[Lassana SIBY](https://github.com/sibylassana95)**

<p align="right">(<a href="#readme-top">Retour en haut</a>)</p>
