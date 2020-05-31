from app import app
from flask import render_template

from app.classes import Conference
confs = {
    "economie" : Conference("Economie et Management."),
    "ecriture" : Conference("Literature et techniques d'ecriture."),
    "education": Conference("Education des nouvelles generations."),
    "energie"  : Conference("Energies renouvelables et Environnement."),
    "faculte"  : Conference("Cursus Universitaire et Orientation"),
    "medecine" : Conference("Evolution de la medecine."),
  "microscope" : Conference("L'infiniment petit et Micro-biologie."),
"reseaux-sociaux": Conference("Influance des reseaux sociaux sur la societe.")
}
for k in confs : confs[k].image = k+".jpg"
confs = [confs[k] for k in confs]


@app.route('/admin/dashboard')
def admin_dashboard():
    return render_template("admin/dashboard.html")

@app.route('/admin/calendrier')
def calendrier():
    return render_template("admin/calendrier.html")


@app.route('/admin/admins')
def admins():
    return render_template("admin/bs4_admins2.html")

@app.route('/admin/animateurs')
def animateurs():
    return render_template("admin/bs4_animateurs.html")

@app.route('/admin/jury')
def jury():
    return render_template("admin/jury.html")



@app.route('/admin/conferences')
def conferences():
    return render_template("admin/conferences/conferences.html", conferences=confs)

@app.route('/admin/gestion_conference')
def gestion_conference():
    return render_template("admin/conferences/bs4_gestion_conference.html", conference=Conference("titre de la conference", image="ecriture.jpg"))

@app.route('/admin/conference/programme')
def programme():
    return render_template("admin/conferences/programme.html", conference=Conference("titre de la conference", image="ecriture.jpg"))

@app.route('/admin/conference/gestion_programme')
def gestion_programme():
    return render_template("admin/conferences/gestion_programme.html")





@app.route('/admin/messages')
def messages():
    return render_template("admin/messages.html")


@app.route('/admin/profile')
def admin_profile():
    return "Admin Profile"
