# flutter-widgets

# Les animations


Pour avoir une animation en flutter, les 3 éléments suivants doivent être présents:

#### un ticker
#### une animation
#### un contrôleur d' animation

##### Une animation

Une animation n'est rien d'autre qu'une valeur (d'un type spécifique) qui peut changer au 
cours de la durée de vie de l'animation. La façon dont la valeur change dans le temps de 
l'animation peut être linéaire (comme 1, 2, 3, 4, 5…) ou beaucoup plus complexe
(voir Courbes, plus loin).

##### Le ticker
En termes simples, un ticker est une classe qui envoie un signal à un intervalle presque
régulier (environ 60 fois par seconde). Pensez à votre montre qui clique à chaque seconde.
À chaque tick , le ticker invoque la ou les méthodes de rappel avec la durée écoulée depuis 
le premier tick, après son démarrage.

##### un contrôleur d' animation

 AnimationController est une classe qui contrôle (démarrer, arrêter, répéter…) une animation
(ou plusieurs animations). En d'autres termes, la valeur de l' animation varie d'une borne
inférieure à une borne supérieure dans une certaine durée, à l'aide d'une vitesse
(= taux de changement de valeur par seconde).

## AnimatedList


AnimatedList est un widget qui affiche une liste de cartes 
qui respectent synchroniséesavec un listModel spécifique à
une application.Lorsqu'un élément est ajouté ou supprimé du
modèle, la carte correspondante s'anime ou n'est pas visible.

Quelques Propriétés:

      -SlideTransition
      -ScaleTransition
      -SizeTransition
      -RotationTransition
      -PositionedTransition
      -AlignTransition

## AnimatedIcon

Affiche une icône animée à une progression d' animation donnée .
Les icônes disponibles sont spécifiées dans AnimatedIcons .

Quelques propriétés:

      -Color
      -progress
      -icon
      -semancticLabel
      
 ## AnimatedOpacity
 
 Version animée de l' opacité(opacity) qui fait automatiquement passer l'opacité de l'enfant sur 
 une durée donnée, chaque fois que l'opacité donnée change.
 
 Quelques propriétés:
      -child
      -opacity
      -curve
      -duration
        
       
## AnimatedPadding


Version animée de Padding qui transforme automatiquement l'indentation sur une durée
donnée à chaque changement d'inset.

Quelques propriétés:
      -child
      -padding
      -curve
      -duration
        
        
## AnimatedPositioned

Version animée de Positioned qui transforme automatiquement la position de l'enfant sur 
une durée donnée à chaque changement de position.

   Quelques propriétés :
      -bottom
      -child
      -height
      -left
      -right
      -top
      -width
      
 ## Stack
 
Un widget qui positionne ses enfants par rapport aux bords de sa boîte.
Cette classe est utile si vous souhaitez superposer plusieurs enfants de manière
simple, par exemple, avoir du texte et une image, superposés avec un dégradé et
un bouton attaché au bas.

    Quelques Propriétés:
      -alignment
      -fit
      -overflow
      -textDirection
      
## Spacer

Spacer crée un espaceur vide ajustable pouvant être utilisé pour ajuster 
l'espacement entre les widgets d'un conteneur Flex , tel que Ligne ou Colonne .

    Quelques Propriétés:
      -flex
     
## RichText

Le widget RichText affiche du texte qui utilise plusieurs styles différents.
Le texte à afficher est décrit à l'aide d'une arborescence d' objets TextSpan ,
chacun ayant un style associé utilisé pour cette sous-arborescence. Le texte peut 
se répartir sur plusieurs lignes ou être affiché sur la même ligne, en fonction 
des contraintes de présentation.


    Quelques Propriétés:
      -locale
      -maxLines
      -overflow
      -softWrap
      -strutStyle
      -text
      -textAlign
      -textDirection
      
## Placeholder

Un widget qui dessine une boîte qui représente l'endroit où d'autres widgets seront 
un jour ajoutés.Ce widget est utile pendant le développement pour indiquer que l'interface
n'est pas encore complète.

    Quelques Propriétés:
      -color
      -fallbackHeight
      -fallbackWidth
      -strokeWidth

## MediaQuery

Établit une sous-arborescence dans laquelle les requêtes de média résolvent les données données.
Par exemple, pour apprendre la taille des médias en cours (par exemple, la fenêtre contenant
votre application), vous pouvez lire la MediaQueryData.size propriété des MediaQueryData retournés 
par MediaQuery.of : MediaQuery.of(context).size .


## LimitedBox 

Une boîte qui limite sa taille uniquement lorsqu'elle n'est pas contrainte.
Si la largeur maximale de ce widget n'est pas contrainte, la largeur de son
enfant est limitée à maxWidth . De même, si la hauteur maximale de ce widget 
n'est pas contrainte, la hauteur de son enfant est limitée à maxHeight.

    Quelques Propriétés:
      -maxHeight
      -maxWidth
      -child
      
## ReorderableListView

Liste dont les éléments peuvent être réorganisés de manière interactive par
l'utilisateur en les faisant glisser.Cette classe est appropriée pour les vues
avec un petit nombre d'enfants car la construction de la liste nécessite 
un travail pour chaque enfant susceptible de s'afficher dans la vue liste plutôt
que uniquement les enfants réellement visibles.


    Quelques Propriétés:
      -children
      -header
      -onReorder
      -padding
      -reverse
      -scrollDirection

## IndexedStack

Un Stack qui montre un seul enfant parmi une liste d’enfants.
L'enfant affiché est celui avec l' index donné . La pile est
toujours aussi grosse que le plus grand des enfants.
Si la valeur est null, rien n'est affiché.

    Quelques Propriétés:
      -alignment
      -children
      -fit
      
## Draggable

Un widget qui peut être déplacé vers un DragTarget .

Lorsqu'un widget déplaçable reconnaît le début d'un geste de glisser, il affiche
un widget de commentaire qui suit le doigt de l'utilisateur sur l'écran. Si 
l'utilisateur lève le doigt alors qu'il se trouve au-dessus d'un DragTarget ,
cette cible se voit offrir la possibilité d'accepter les données transportées
par l'objet déplaçable.

    Quelques Propriétés:
      -affinity
      -axis
      -child
      -childWhenDragging
      -data
      -dragAnchor
      -feedback



