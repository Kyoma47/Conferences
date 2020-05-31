import random
heures = ["11:00 AM", "12:00 AM", "02:00 PM", "03:00 PM", "04:00 PM"]
titres = [
    "Et voluptatem iusto dicta nobis.",
    "Explicabo et rerum quis et ut ea.",
    "Qui non qui vel amet culpa sequi.",
    "Quos ratione neque expedita asperiores."
    "Facere provident incidunt quos voluptas.",
]

phrases = [
 "Hubert Hirthe Maiores dignissimos neque qui cum accusantium ut sit sint inventore.",
 "Cole Emmerich Veniam accusantium laborum nihil eos eaque accusantium aspernatur.",
 "Jack Christiansen Nam ex distinctio voluptatem doloremque suscipit iusto.",
 "Alejandrin Littel Eligendi quo eveniet est nobis et ad temporibus odio quo.",
 "Quo qui praesentium nesciunt Willow Trantow Voluptatem et alias dolorum est aut sit enim neque veritatis."
]
lorem = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

class Animateur :
    def __init__(self, id, prenom, nom, image = None,
        description = lorem,
        statut = "description courte...",

        twitter     = "www.twitter.com",
        facebook    = "www.facebook.com",
        google_plus = "www.plus.google.com",
        linkedin    = "www.linkedin.com"
    ):
        #conference.html
        self.image  = image
        self.id     = id
        self.nom    = nom
        self.prenom = prenom
        self.statut = statut #description courte

        self.twitter     = twitter
        self.facebook    = facebook
        self.google_plus = google_plus
        self.linkedin    = linkedin

        #speakers-details.html
        self.description = description

class Intervention :
    def __init__(self, titre, description, heure="00:00 AM", animateur=None):
        self.titre  = titre
        self.description = description
        self.heure = heure
        self.animateur = animateur

class Session :
    def __init__(self, date=None):
        self.date = date
        self.interventions = []

class Programme :
    def __init__(self):
        self.sessions = []

class Conference :
    def __init__(self, titre, image=None, id=2,
        note = None,
        date="0 mois 20xx",
        sous_titre="sous_titre",
        lien_video="youtube.com",
        description = lorem,
        lieu   = "Université Hassan 1er, Settat",
        jours  = "Du Lundi au Vendredi",
        heures = "de 8h à 18h",

        galerie=["static/img/{i}.jpg"for i in range(8)],

        prix_standard=  75, #dh
        prix_pro     = 125, #dh
        prix_premium = 150, #dh
        terminee = False
    ):
        #index.html
        self.id    = id
        self.titre = titre
        self.image = image
        self.note  = random.randint(1,5) #moyenne sur 5 étoiles
        self.date  = date  #"25 decembre 2019"

        #conference.html
        self.sous_titre  = sous_titre
        self.lien_video  = lien_video
        self.galerie     = galerie

        self.description = description
        self.lieu  = lieu
        self.jours = jours
        self.heures= heures

        self.exemple_animateurs()
        self.programme = Programme()
        self.exemple_programme()

        self.prix_standard = prix_standard
        self.prix_pro      = prix_pro
        self.prix_premium  = prix_premium

        self.finie = False

    def exemple_animateurs(self):
        self.animateurs = [
            #Animateur(0 , "Patrick", "Baud"),
            Animateur(1 , "Damien",  "Marc"),
            #Animateur(2 , "Florence","Porcel"),
            Animateur(3 , "Aram" ,   "Hekimian"),
            #Animateur(4 , "Bernard", "Werber"),
            Animateur(5 , "Virgine", "Spies"),
            Animateur(6 , "Francois","Beaune"),
            Animateur(7 , "Nicolas", "Thiebaut"),
            #Animateur(8 , "Ana",  "Benito"),
            Animateur(10, "Greg", "Romano"),
            #Animateur(11, "Philippe", "Mistral", "11.png"),
            Animateur(12, "Lolita", "Sechan"),
            Animateur(13, "Yves", "Balak"),
            Animateur(14, "Delphine Remy", "Boutang")
        ]
        for anim in self.animateurs:
            if anim.image is None: anim.image = f"{anim.id}.jpg"

    def exemple_programme(self):
        descriptions = {
        1 : "Dans ce premier épisode de la Veillée, Damien Maric nous raconte l'incroyable parcours qui l'a mené à croiser le chemin d'un célèbre écrivain...",
        2 : "On ne se sent jamais autant en vie que lorsqu'on fait les choses qu'on a envie de faire...",
        3 : "Le parcours personnel d'Aram Hekimian est aussi extraordinaire que son parcours professionnel. Vous ne le savez pas, mais vous avez sans doute un peu de lui dans votre poche...",
        4 : "Bernard Werber nous raconte l'incroyable histoire qui a failli lui coûter la vie quand il avait seulement 14 ans, et qui a peut être déterminé sa carrière d'écrivain...",
        5 : "Dans ce récit intime et touchant, Virginie Spies nous parle du lien très particulier qui l'unit à sa mère.",
        6 : "Depuis plusieurs années, François Beaune se balade autour de la Mediterranée pour collecter des histoires vraies auprès des habitants. Pour la Veillée, il est venu nous en raconter deux qui font directement écho à l'actualité...",
        7 : "Nicolas Thiebaut, dit 'Bouda', nous raconte le parcours surprenant qui l'a conduit à fonder une association humanitaire pour aider les sinistrés du Népal.",
        #8 : "Dans cet épisode, Ana Benito partage avec nous un parcours de vie aussi surprenant qu'émouvant, ainsi qu'une vraie leçon d'espoir.",
        10: "Greg Romano est un comédien qui a vécu des situations très particulières à cause de sa santé. Il en a fait la matière première de ses spectacles, mais pour la Veillée, il est venu raconter son histoire d'une manière un peu différente...",
        11: "Dans cet épisode de la Veillée, Philippe Mistral partage avec nous ses aventures d'explorateur, d'un naufrage aux quarantièmes rugissants à la découverte d'une territoire inconnu à Madagascar...",
        12: "Écrivaine et notamment auteur de livres pour enfants, Lolita nous raconte une fantastique histoire de trésor qu'elle aurait pu écrire, mais qu'elle a bel et bien vécue...",
        13: "Dans ses BD, Balak dessine souvent des situations violentes et dramatiques. Et puis, il a fini par en vivre pour de vrai. Dans cet épisode particulièrement émouvant, il nous raconte ce qu'il en a retiré...",
        14: "Avec beaucoup d'émotion, Delphine Remy Boutang nous raconte comment elle a mené à son terme un rêve inachevé..."
        }
        dates = ["01/01/2020", "02/01/2020", "03/01/2020", "04/01/2020"]
        for i in range( random.randint(3,4) ):
            session = Session( dates[i] ) #creation nouvelle session
            for j in range( random.randint(5,7) ):
                animateur = random.choice( self.animateurs )
                intervention = Intervention( titre=random.choice(titres), description=descriptions[animateur.id], animateur=animateur)
                session.interventions.append( intervention )
            self.programme.sessions.append( session )

    def generer_programme(self):
        for session in self.programme.sessions: # 3 sessions
            for i in range( random.randint(5,7) ): # de 5 à 7 interventions
                animateur = random.choice(self.animateurs + [None])
                intervention = Intervention( titre = random.choice(titres), description = random.choice(phrases), heure = random.choice(heures), animateur = animateur)

                session.ajouter_intervention(intervention)
                #02:00 PM
                #Jack Christiansen
                #Qui non qui vel amet culpa sequi. Jack Christiansen
                #Nam ex distinctio voluptatem doloremque suscipit iusto.
                #Facere provident incidunt quos voluptas.

class Message :
    def __init__(self, nom, email, sujet, message):
        self.nom = nom
        self.email = email
        self.sujet = sujet
        self.message = message
