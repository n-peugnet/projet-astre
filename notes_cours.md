# Notes prises à partir des deux cours sur le projet d'ASTRE

Présentation orale avec quelques transparents.

- Montrer ce qu'on a fait comme choix de modélisation
- comme choix de vérification
- quelles sont les propriétés qu'on a voulu vérifier
- est-ce que ça a été possible ou non
- comment est-ce qu'on a simulé le système
- sur quelle trace d'exécution

Quelques transparents, et passage à l'oral de 15 et 20 mins.

26min : définir les interfaces de tous nos modules, la manière dont l'info est encodée et lue. C'est à nous de définir ça.

Q 2.1 
- Quel est l’intérêt du mécanisme de SNOOP dans cette architecture ? : de faire en sorte que les copie dans les différents caches soient cohérentes. Montrer ça dans les séquences générées par les programmes dans l'énoncé. Ne pas hésiter à définir d'autres programmes / séquences si on en a besoin.
- Est-ce que ça sera suffisant si on a des données partagées et des accès exclusifs ? (exemple : plusieurs lecteurs - écrivains avec des contraintes de synchronisation fortes entre les différents programmes qui manipulent les données). 
 
Première étape : bien comprendre le fonctionnement de l'architecture dans le cadre mono-processeur, regarder les transferts de données entre les différents composants, même chose dans le cas multi-processeur avec les deux exemples, mais on peut en prendre d'autres aussi si besoin pour mettre en évidence les différents cas possibles.

Et une fois qu'on a bien compris le rôle de chaque composant, son interface, la manière dont les messages circulent des uns vers les autres, on peut passer à l'étape de modélisation.

Emmanuelle nous suggère de rester dans le monde booléen et de nas partir sur des entiers, pour ne pas compliquer (espaces d'états qui deviennent très grands). Manipuler des tableaux et des types énumérés pour représenter des nappes de fils. Dans nuSMV dans le répertoire "document" il y a plein d'exemples, on nous conseille de regarder le "gigamax" et le "msi" qui correspondent à des protocoles de cohérence de caches dans des architectures multiprocesseur. On peut s'en inspirer, même s'ils reposent sur un modèle matériel beaucoup plus compliqué que ce que nous mettons en place ici (donc ne pas se noyer dans le code, par contre pour voir comment gérer des types énumérés et voir comment on peut faire de la composition des différents modules, c'est utile).

La difficulté du projet réside dans la synchronisation autour du bus et assurer les mécanismes de base qui permettent d'avoir des donnée sà peu près à jour dans les caches.

Q 2.2 Etape 2 :
- Pour chaque composant, décrire la manière dont il évolue en fonction des signaux qui lui arrivent sur ses interfaces et de son état interne.

On nous suggère de développer une architecture mono-processeur avec un cache L1 qui ne fait que de la transmission de requête et de la réception de donnée. Par contre, modéliser l'arbitre raisonnable.

On peut aussi simuler chaque composant via NuSMV (en se référant au manuel de référence).
- Simulation en mode interactif (cycle à cycle, définir les valeurs d'entrée et à chaque fois vérifier que la sortie correspond)
- Simulation en mode aléatoire et regarder la cohérence de la sortie de la simulation par rapport à l'entrée.

Ça, ce n'est pas encore faire de la modélisation mais juste regarder par simulation si le comportement de chaque composant correspond à celui attendu. Et là, on peut modéliser à l'aide de propriétés les comportements qui nous semblent pertinents. (CTL, LTL, équité si besoin)

(1h07)

