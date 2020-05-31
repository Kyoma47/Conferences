from app import app
from flask import render_template, request, redirect, url_for
#

from app.classes import Conference, Animateur
import random

conferences = {
    "economie" : Conference("Economie et Management."),
    "ecriture" : Conference("Literature et techniques d'ecriture."),
    "education": Conference("Education des nouvelles generations."),
    "energie"  : Conference("Energies renouvelables et Environnement."),
    "faculte"  : Conference("Cursus Universitaire et Orientation"),
    "medecine" : Conference("Evolution de la medecine."),
    "microscope": Conference("L'infiniment petit et Micro-biologie."),
"reseaux-sociaux": Conference("Influance des reseaux sociaux sur la societe.")
}
for k in conferences : conferences[k].image = k+".jpg"
conferences = [conferences[k] for k in conferences]

animateurs = [
    Animateur(0 , "Patrick", "Baud"),
    Animateur(1 , "Damien",  "Marc"),
    #Animateur(2 , "Florence","Porcel"),
    Animateur(3 , "Aram" ,   "Hekimian"),
    #Animateur(4 , "Bernard", "Werber"),
    Animateur(5 , "Virgine", "Spies"),
    Animateur(6 , "Francois","Beaune"),
    Animateur(7 , "Nicolas", "Thiebaut"),
    #Animateur(8 , "Ana",  "Benito"),
    Animateur(10, "Greg", "Romano"),
    Animateur(11, "Philippe", "Mistral", "11.png"),
    Animateur(12, "Lolita", "Sechan"),
    Animateur(13, "Yves", "Balak"),
    Animateur(14, "Delphine Remy", "Boutang")
]
for anim in animateurs:
    if anim.image is None: anim.image = f"{anim.id}.jpg"

class Message :
    def __init__(self, nom, email, sujet, message):
        self.nom = nom
        self.email = email
        self.sujet = sujet
        self.message = message
messages = []

# acceuil :
@app.route('/', methods=["GET","POST"])
def index():
    actu = [conferences[i] for i in range(5)] #5 premieres conferences.
    if request.method=="POST":
        motCle = request.form["motCle"]
        resultat = [conf for conf in conferences if motCle.lower() in conf.titre.lower()]
        return render_template("public/index.html", actualite=actu, resultat=resultat, motCle=motCle)
    return render_template("public/index.html", actualite=actu)


@app.route('/conference/<int:id>')
def conference(id):
    return render_template( "public/conference.html", conference=random.choice(conferences) )

@app.route('/animateur/<int:id>')
def animateur(id):
    return render_template( "public/animateur.html", animateur=random.choice(animateurs) )

@app.route('/envoyer_message', methods=["POST"])
def envoyer():
    nom     = request.form["name"]
    email   = request.form["email"]
    sujet   = request.form["subject"]
    message = request.form["message"]
    messages.append( Message(nom, email, sujet, message) )
    return "<h1>Message envoye :</h1> <br> {{message}} <br><br> liste des messages : <br> {{messages}}"


@app.route('/login', methods=["POST"])
def about():
    return redirect( url_for("admin_dashboard") )
