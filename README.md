# Simulations Aléatoires

### Mots-clés : Simulations, Génération de lois, Aiguille de Buffon, Méthode d'inversion, Méthode de Box Muller, Méthode de Monte-Carlo, Méthode du rejet, R

### Projet : Apprendre et tester différentes méthodes pour simuler des lois de probabilités.

Le problème de la simulation d'une loi de probabilité consiste à trouver une méthode produisant des réalisations indépendantes de même loi. Le générateur aléatoire de nombres uniformes sur $[0;1]$ de R sera utilisé.

La première méthode, l'aiguille de BUffon à été proposée par G-L Leclerc de Buffon en 1733, cette expérience visait à proposer une approximation du nombre par une méthode probabiliste. Elle permet de générer une variable aléatoire suivant une loi de Bernoulli à partir d’un générateur de loi uniforme sur $[0;1]$.   
En généralisant ce principe, la méthode d'inversion permet de générer n'importe quel type de variable discrète, dès lors que l’on dispose d’une forme explicite de la fonction de répartition.  
La méthode de Box Muller est une méthode dédiée aux variables aléatoires gaussiennes, son principe repose sur la formule de changement de variable.  
Le principe de base des méthodes de Monte-Carlo est l’approximation numérique par estimation empirique. A partir de n simulations de la loi d’une variable aléatoire, on approche par exemple l’espérance d’une loi par la moyenne de l’échantillon simulé.  
La méthode du rejet permet de mettre en place des simulations quand seul un majorant de la densité cible est disponible.

Les résultats ainsi que plus de détails sont disponibles dans le rapport du projet.

Remerciements à Mm. Delcourte.
