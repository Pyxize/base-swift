import UIKit

// Voir la doc => faire cmd+clique

// Afficher valeur dans la console => print => show quick help ou jump to definition
print("Salut tous le monde")


// -- Variables et constantes --
var maPremiereVariable: String = "Salut"

// Changer de valeur
maPremiereVariable = "Aurevoir"

let maConstante: Int = 123

// -- String --

var str: String = "Je suis une String"
print(str)
str = "Je vous assusre je suis bien une String"

var prenom = "Kylian"
var nom = "Mbappé"

// -- Concaténation --
var nomcomplet = prenom + " " + nom
nomcomplet += " Cour plus vite que son ombre"
nomcomplet.append(" Je vous assure")

// Mettre en minuscule
nomcomplet.lowercased()

// Mettre en majuscule
nomcomplet.uppercased()

// change les lettre "m" par des "b"
let nomChange = nomcomplet.replacingOccurrences(of: "m", with: "b")

// -- Entier --

var entier = 3
entier = 45

let avecInt = nomcomplet + " " + String(entier)

// le "\" permet d'ajouter un Int dans une String
let varStr = "Mon numéro préfére est le \(entier)"

// -- Double et Float --

// le Double est plus précis codé en 64 bits
var decimal: Double = 123.34543234568765435432
// le Float est moin préscis codé en 32 bits
var decimalF: Float = 123.34543234568765435432

// -- Opérateurs --

// Calcul
var un = 4
var deux = 13
// Addition
let add = un + deux
// Soustraction
let sous = un - deux
// Multiplication
let mult = un * deux
// Division
let div = un / deux
// Remain Modulo
let mod = un % deux

// Calcul avec float et double
var trois: Float = 4.2
var quatre: Double = 13.4

let plus = Double(trois) + quatre

// permet d'avoir 3 chiffre apres la virgule du résultat de la variable plus
let resultatString = String(format: "%.3f", plus)
print(resultatString)

// -- Opérateur logique --

//Egal: ==
//Différent: !=
//Supérieur: >
//Inférieur: <
//Supérieur ou égal: >=
//Inférieur ou égal: <=

// -- Conditions --
var iLoveTacos: Bool = false
if iLoveTacos {
    print("J'aime les Tacos")
} else {
    print("J'aime pas les Tacos")
}

// autre façon de faire les conditions
// ? => si c'est vrai, : => si c'est faux
iLoveTacos ? print("J'aime les Tacos") : print("J'aime pas les Tacos")

var age = 18

if age > 20 {
    print("Vas bosser")
} else if age > 14 {
    print("Au lycée")
} else if age > 10 {
    print("Au Collège")
} else {
    print("On est bien en enfance")
}

switch age {
case 20:
    print(20)
case 18:
    print("Majeur")
default:
    print("Aucun")
}

// Str est nil ?
func test(str: String?) {
    guard str != nil else { return }
    print("Je ne suis pas nil")
}
test(str: "S")


// -- Fonction --

var placesDisponibles = 200
var personne = 0

func basique(){
    placesDisponibles -= 1
    personne += 1
    
    print("nombre de places dispo: \(placesDisponibles)")
    print("nombre de personnes: \(personne)")
}
 basique()
 basique()

// -- Fonction avec parametre --

func saluer(nom: String){
    print("Salut " + nom)
}
saluer(nom: "Maxime")
saluer(nom: "Léa")

func aire(_ longueur: Int, _ largeur: Int) {
    print("L'aire est de \(longueur * largeur)")
}

aire(4, 3)

// "->" je veux que tu me retour un type
func convertisseur(_ age: Int) -> String{
    let string = "L'age demandé est de \(age) ans."
    return string
}
let ageEnStrinf = convertisseur(33)

// -- Tablaux --

var monArray: [Int] = [1,2,3,4,5]
print(monArray)
// => reponse [1, 2, 3, 4, 5]

monArray.append(6)
print(monArray)
// => reponse [1, 2, 3, 4, 5, 6]

monArray.remove(at: 0)
print(monArray)
// => reponse [1, 2, 3, 4, 5, 6]

// -- Boucle --

for x in (0...10){
    print(x)
}
// => reponse 0 1 2.. 10

var noms = ["Maxime", "Sébastien", "Léa", "Léo"]

for nom in noms {
    print(nom)
}

var x = 0

// tant que je ne suis pas à 18 je boucle
while x < 18 {
    print("Je ne suis pas encore à 18: \(x)")
    x += 1
}

// -- Dictionaire --
var famille: [String: Int] = [
    "papa": 58,
    "Maman": 50,
    "fils": 20,
    "fille": 18
    
]

print(famille)
// => resultat ["Maman": 50, "papa": 58, "fils": 20, "fille": 18]

// ajout
famille["chat"] = 7
print(famille)
