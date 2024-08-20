import 'dart:math';
void main (){
    int n= 3;
    List <int> coordonne=[5,6,18,54];
    String chaine = "gedeon";
    //print("la fontion catalan vaut :${Formule_Catalane(n)}");
    //print("la fonction adictive vaut:${persistenceAdditive(99999999995)}");
    //print("la chaine ${chaine} trier donne :  ${AlphabetSoup(chaine)} ");
    print("la liste  ${coordonne} :${ArithGeo(coordonne)}");
} 
int factorial(int n){
    //calcule de la factoiel 
    int resultat=1;
    if (n<0){
       
       throw ArgumentError ('Le nombre doit être superrieru ou égal à 0');
    }
    else if (n==0 ||n==1){

        return 1;
    }else {
        return n*factorial(n-1);
    }

}
double Formule_Catalane (int n){
    /*En effectuant une recherche par somme, j'ai trouvé une formule qui peut résoudre ce 
    problème appelé numéro catalan (Formule catalane) où la formule catalane est ==> (2n!) / (n+1)! n!
    */

    double resultat=1;
    int nombre=2*n;
    resultat=factorial(nombre)/(factorial(n+1)*factorial(n));
    return  resultat;
}
int persistenceAdditive(int nombre) {
        /*Persistance Additive
    A l'aide du langage Dart, faites prendre à la fonction AdditivePersistence(num) le 
    paramètre num en cours de transmission qui sera toujours un entier positif et renverra son 
    persistance additive qui est le nombre de fois où vous devez ajouter les chiffres dans num 
    jusqu'à ce que vous atteigniez un seul chiffre. Par exemple : si num est 2718 alors votre programme
    devrait renvoyer 2 car 2 + 7 + 1 + 8 = 18 et 1 + 8 = 9 et vous vous arrêtez à 9.
    */
  int i= 0;
  while (nombre > 9) {
    int somme = 0;
    while (nombre > 0) {
      somme += nombre % 10;
      nombre ~/= 10;
    }
    nombre = somme;
    i++;
  }
  return i;
}
String AlphabetSoup(str){
    /*Demandez à la fonction AlphabetSoup(str) de prendre le paramètre de chaîne str transmis 
    et renvoie la chaîne avec les lettres par ordre alphabétique 
    (c'est-à-dire que bonjour devient ehllo). Supposons que les chiffres et les symboles de ponctuation ne seront pas
    inclus dans la chaîne.
    */

    List<String> caractere = str.split('');
    caractere.sort();
    String trie=caractere.join();
    return trie;
}
String ArithGeo(List<int>arr){
    /*En utilisant le langage Dart, demandez à la fonction ArithGeo(arr) de prendre le tableau de 
    nombres stockés dans arr et renvoient la chaîne "Arithmétique" si la séquence suit 
    un motif arithmétique ou renvoie "Géométrique" s'il suit un motif géométrique. Si  
    la séquence ne suit aucun des deux modèles return -1. Une suite arithmétique est 
    celui où la différence entre chacun des nombres est cohérente, alors que comme dans un 
    séquence géométrique, chaque terme après le premier est multiplié par une constante ou 
    rapport commun. Exemple arithmétique : [2, 4, 6, 8] et Géométrique 
    exemple : [2, 6, 18, 54]. Des nombres négatifs peuvent être saisis comme paramètres, 0 ne le sera pas 
    doit être saisi, et aucun tableau ne contiendra tous les mêmes éléments.*/

    if (arr.length<3){
        return"-1";
    }
    int difference_arithemetique= arr[1]-arr[0];
    int ration_geometrique=arr[1]~/arr[0];
    bool arithmetique=true ;
    bool geometrique=true;

    for(int i=2;i<arr.length; i++){

        if(arr[i]-arr[i-1]!=difference_arithemetique) {
            arithmetique=false;
       
        }
        if (arr[i]~/arr[i-1]!=ration_geometrique)
        {
            geometrique=false;
          
        }
    }
    if(arithmetique){
        return "est une suite Arithmétique";
        }
    else if (geometrique){
        return "est une suite geometrique";
        }
    else {
        return "-1";
    }

}


