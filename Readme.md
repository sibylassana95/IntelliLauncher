<a name="readme-top"></a>
<div align="center">

# IntelliLauncher 🚀

<img src="https://img.shields.io/badge/Platform-Windows-blue?style=for-the-badge&logo=windows" alt="Platform">
<img src="https://img.shields.io/badge/IntelliJ-IDEA-red?style=for-the-badge&logo=intellij-idea" alt="IntelliJ IDEA">
<img src="https://img.shields.io/badge/Language-Batch-green?style=for-the-badge&logo=windows-terminal" alt="Language">

IntelliLauncher est un script qui permet d'ouvrir automatiquement plusieurs projets IntelliJ dans des fenêtres séparées en fonction de la présence d'un dossier .idea dans les sous-dossiers d'un répertoire. Ce script facilite l'ouverture rapide de plusieurs projets sans avoir à ouvrir chaque instance manuellement.
[Fonctionnalités](##fonctionnalités) • [Prérequis](##prérequis) • [Installation](##installation) • [Utilisation](##utilisation) • [Contribuer](##contribuer) • [Auteur](##auteur)
</div>

## Objectif 🎯

Ce projet simplifie le processus d'ouverture de plusieurs projets IntelliJ, particulièrement lorsqu'on travaille sur une architecture complexe avec de nombreux sous-projets. Le script va automatiquement détecter les dossiers contenant un dossier .idea et ouvrira chaque projet dans une fenêtre distincte d'IntelliJ IDEA.

## 🎯 Fonctionnalités

- 🖥️ Détecte automatiquement les projets IntelliJ
- 🚪 Ouvre chaque projet dans une fenêtre séparée
- ⚡ Gain de temps sur l'ouverture manuelle des projets
- 🛠️ Personnalisable selon vos besoins spécifiques

## Prérequis 📋

Avant de pouvoir utiliser ce script, il y a quelques prérequis :

* IntelliJ IDEA doit être installé sur votre machine.
* Vous devez avoir idea.bat disponible dans le PATH de votre système pour que le script fonctionne correctement. Voici comment l'ajouter si ce n'est pas déjà fait.

### Ajouter IntelliJ à votre PATH 📁


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

## Installation 💻

Clonez ou téléchargez le dépôt GitHub :

Si vous ne l'avez pas encore, clonez ou téléchargez ce repository sur votre machine locale.

```bash
git clone https://github.com/sibylassana95/IntelliLauncher.git
```

Placez le script à la racine de votre projet :

Vous pouvez mettre le fichier open_projects.bat à la racine de votre répertoire de travail.

Vérifiez que idea.bat est bien dans le PATH de votre système comme expliqué plus haut.

## Utilisation 📚

Exécution du script :

Double-cliquez simplement sur le fichier open_projects.bat pour exécuter le script.
Le script ouvrira tous les projets IntelliJ contenant un dossier .idea dans une nouvelle fenêtre IntelliJ.



### Exemple de Code (le fichier open_projects.bat) 📝

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

- 🐛 **Signaler des Bugs** : Ouvrez une issue pour tout erreur ou comportement inattendu.
- 💡 **Suggérer des Améliorations** : Vous avez une idée ? Nous aimerions l'entendre !
- 🛠️ **Soumettre des Pull Requests** : Vous avez apporté des améliorations ? Ouvrez une PR avec une description claire.
- 💬 **Démarrer des Discussions** : Des questions ou des idées de fonctionnalités ? Ouvrez une discussion dans le dépôt.

Merci de contribuer à ce projet et d'améliorer l'expérience d'utilisation de tous !
## 👤 Author 

[![LASSANA SIBY](https://avatars.githubusercontent.com/u/103085452?u=13ace4d88a52056741734e0f802ca7c0053e1e80&v=4&s=40)](https://github.com/sibylassana95)  
Created by **[Lassana SIBY](https://github.com/sibylassana95)**

<p align="right">(<a href="#readme-top">Retour en haut</a>)</p>
