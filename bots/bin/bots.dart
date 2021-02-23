import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  
  // Création d'un bot

  var bot1 = Bot(1,100);

  //création de variables
  
  String pseudo;
  String entrer;
  int compteurTour;

  compteurTour = 0;   // initialisation du  Compteur de tour à 0
  
// Début du programme ........................

  print('Entrer votre pseudo : ');
  pseudo = stdin.readLineSync();

  while (bot1.sante > 0 && bot1.force >0) {

    var nbrAleatoire = lancer(pseudo);
    

      print('$pseudo Appuyez sur "Entrée" pour lancer les dés : ');
      entrer = stdin.readLineSync();

      if (entrer == '') {

        lancer(pseudo);

        print('---------------------------------------------------------->');
        print('$pseudo a lancer les dés et a obtenu $nbrAleatoire');
        bot1.sante = bot1.sante - nbrAleatoire;   // On décrémente le pourcentage de vie du Bot sante.bot = 100 - nbreAleatoire

        compteurTour += 1; // Incrémentation du compteur de tour  compteurtour = compteurTour + 1

        print('$pseudo  assène un coup sur le bot avec une force de $nbrAleatoire');
        print('Bot - Santé ${bot1.sante}%');
        print('Fin du tour $compteurTour');
        print('---------------------------------------------------------->');
        if (compteurTour  == 14) {
        print('Vous avez gagné la partie');
        break;
      }
      }else {
        print('Appuyer sur la touche "Entrer" de votre clavier');
      }

      
    
  }
    
// Fin du programme

}


class Bot {
  // Propriétés

  int force;
  int sante;

  // Constructeur ou init

  Bot(this.force, this.sante);

  // Méthodes ou fonctions

}

int lancer(String nameGamer) {

  var nbrAleatoire1 = Random();
  var nbrAleatoire2 = Random();
  var a = nbrAleatoire1.nextInt(6) + 1;
  var b = nbrAleatoire2.nextInt(6) + 1;
  var somNbrAleatoire = a + b;
  // print('a $a');
  // print('b $b');
  // print('som $somNbrAleatoire');
 

  
  return somNbrAleatoire;
  //print('$nameGamer a lancé les dés et obtenu $somNbrAleatoire');

  
  
}
