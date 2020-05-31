<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Metier.Conference" %>
<%@ page import="DAO.ModeleConference" %>
<%@ page import="java.util.ArrayList" %>
    <!DOCTYPE html>

    <html lang="fr">
    <head>
      <meta charset="utf-8">
      <meta content="width=device-width, initial-scale=1.0" name="viewport">
      <meta content="" name="keywords">
      <meta content="" name="description">

      <!-- Favicons -->
      <link href="app/static/public/img/fsts_logo.png" rel="icon"><!--"favicon.png" rel="icon">-->
      <link href="app/static/public/img/fsts_logo.png" rel="apple-touch-icon"><!--apple-touch-icon.png" rel="apple-touch-icon">-->

      <!-- Google Fonts -->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=EB+Garamond&family=Philosopher&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lalezar&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">


      <!-- Bootstrap CSS File -->
      <link href="app/static/public/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

      <!-- Libraries CSS Files -->
      <link href="app/static/public/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
      <link href="app/static/public/lib/animate/animate.min.css" rel="stylesheet">
      <link href="app/static/public/lib/venobox/venobox.css" rel="stylesheet">
      <link href="app/static/public/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

      <!-- Main Stylesheet File -->
      <link href="app/static/public/css/style.css" rel="stylesheet">
      <style type="text/css">
        #se_connecter {
          font-size: 15px;
          background-color: rgba(6, 12, 34, 0.8); rgba(29, 62, 126, 0.98); #1D407E ;
        }
        #se_connecter:hover {
            color: #fff;
            background: #1D407E;
            padding: 7px 22px;
            border-radius: 50px;
            border: 2px solid #fff;
            transition: all ease-in-out 0.3s;
            font-weight: 500;
            margin-left: 8px;
            margin-top: 2px;
            line-height: 1;
            font-size: 17px;
        }
      </style>
    <!--
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">

      <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    -->

    <title>Acceuil</title>
    <script type="text/javascript">
    	// Prevent dropdown menu from closing when click inside the form
    	$(document).on("click", ".navbar-right .dropdown-menu", function(e){
    		e.stopPropagation();
    	});
    </script>

    </head>

    <body>

      <!--==========================
        Header
      ============================-->
      <header id="header" class="header-fixed">
        <div class="container">
          <div id="logo" class="pull-left">
            <h1>
              <a href="/" class="scrollto">
                <img height="200px" src="app/static/public/img/fsts_logo_blanc.png" alt="" title="">
              </a>
              <a href="/">FST<span>S</span></a>
            </h1>
          </div>
          <nav id="nav-menu-container">
            <ul class="nav-menu">

              <li class="menu-active" ><a href="/">Acceuil</a></li>

              <li><a href="#hotels">ActualitÃ©s</a></li>
              <li><a href="#subscribe">Rechercher</a></li>
              <li><a href="#about">A Propos</a></li>
              <li><a href="#venue">Salles</a></li>
              <!-- <li><a href="#gallery">Galerie</a></li>-->
              <li><a href="#supporters">Partenaires</a></li>
              <li><a href="#faq">F.A.Q</a></li>
              <li><a href="#contact">Contacter</a></li>

              <li class="buy-tickets">
                <a id="se_connecter" href="#">Se Connecter |&nbsp;</a>
                <ul class="dropdown-menu login-form">
        					<li>
        						<form action="/login" method="post">
        							<div class="form-group">
        								<label>Identifiant</label>
        								<input type="text" name="login" class="form-control" required="required">
        							</div>
        							<div class="form-group">
        								<div class="clearfix">
        									<label>Mot de passe</label>
        									<!--<a href="#" class="pull-right text-muted"><small>Forgot?</small></a>-->
        								</div>
        								<input type="password" name="password" class="form-control" required="required">
        							</div>
                      <br>
        							<input type="submit" class="btn btn-primary btn-block" value="Login">
        						</form>
        					</li>
        				</ul>
              </li>
              <!--
        			<li class="nav-item"><a href="#" class="btn btn-primary mt-1 mb-1">S'inscrire</a></li>
              -->
            </ul>
            <ul class="nav navbar-nav navbar-right ml-auto">	</ul>
          </nav><!-- #nav-menu-container -->
        </div>
      </header><!-- #header -->

      <main id="main">
        <!--==========================
          Intro Section
        ============================-->
        <section id="intro">
          <div class="intro-container wow fadeIn">
            <h1 class="mb-4 pb-0">
              <span>FST</span> Settat <br>
              Vous Souhaite La Bienvenue
            </h1>
            <p class="mb-4 pb-0">Faculeté des Sciences et Techniques, Settat Maroc</p>
        		<!--
        		<a href="https://www.youtube.com/watch?v=N3L_kPmwCTc" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
        		-->
        		<a href="#about" class="about-btn scrollto">Plus d'informations</a>
          </div>
        </section>

        <!--==========================
        Hotels Section
        ============================-->
        <section id="hotels" class="section-with-bg wow fadeInUp">
          <div class="container">
            <div class="section-header">
              <h2>ActualitÃ©s</h2> <p>Quelques confÃ©rences Ã  venir.</p>
            </div>

            <div class="row">
              <%if(ModeleConference.getListeConferences().isEmpty()) { %>
				<p><b><i>Aucun résultat trouvé !</i></b></p>
			<%
				}
				else{
			%>
				<%	for(Conference c : ModeleConference.getListeConferences()){ %>
		            <div class="col-lg-4 col-md-6">
		              <div class="hotel">
		                <div class="hotel-img">
		                  <a href="conference/<%= c.getIdConference() %>">
		                    <img src="imagesConfAccueil/<%= c.getTitre() %>/mainImage.jpg" alt="image(<%= c.getTitre() %>)" class="img-fluid" width="100%" height="100%">
		                  </a>
		                </div>
		                <h3><a href="conference/<%= c.getIdConference() %>"><%= c.getTitre() %></a></h3>
		
		                <div class="stars">
		                	<% for(int i=0; i<c.getNote();i++){ %>
		                  		<i class="fa fa-star"></i> 
							<%} %>
		                  <!-- <i class="fa fa-star-half-full"></i>  -->
		                </div>
		                <p><%= c.getDateDebut() %></p>
		              </div>
		            </div>
		          <% } %>
		     <% } %>

              <div class="col-lg-4 col-md-6">
                <br><br><br><br><br>
                <div class="hotel">
                  <div class="hotel-img">
                    <!--<img src="img/hotels/1.jpg" alt="Hotel 1" class="img-fluid">-->
                  </div>
                  <h3><a href="#">Conferences plus anciennes</a></h3>
                  <div class="stars"></div>
                  <p>afficher plus de résultats.</p>
                </div>
              </div>
            </div><!--end #row-->
          </div>
        </section>


        <!--==========================
        Subscribe Section
        ============================-->
        <section id="subscribe">
          <div class="container wow fadeInUp">
            <div class="section-header">
              <h2>Nos Conference</h2>
              <p>rechercher un conference parmi les prÃ©cedentes editions.</p>
            </div>
            <form method="POST" action="RechercherConfernece">
              <div class="form-row justify-content-center">
                <div class="col-auto">
                  <input type="text" class="form-control" name="Keyword" placeholder="rechercher une conference">
                </div>
                <div class="col-auto">
                  <button type="submit" value="Rechercher">Rechercher</button>
                </div>
              </div>
            </form>
            <%
		if(ModeleConference.getRechercheListeConferences().isEmpty() && ModeleConference.getKeyWord()!="") { %>
			<p><b><i>Aucun résultat trouvé !</i></b></p>
			<div class="section-header">
                <h2>Aucun résultat</h2>
                <p>
                  Pas de résultat pour <strong><%=ModeleConference.getKeyWord()%></strong>, <br>
                  Veuillez réessayer pour un autre thème.
                </p>
              </div>
		<%
			}
			else{
		%>
			 <div id="conferences" class="container">
              <div class="row">
                <%	for(Conference c : ModeleConference.getRechercheListeConferences()){ %>
                  <div class="col-lg-4 col-md-6">
                    <div class="hotel">
                      <div class="hotel-img">
        					<img src="imagesConfAccueil/<%= c.getTitre() %>/mainImage.jpg" alt="Hotel 1" class="img-fluid" width="100%" height="100%">
        			  </div>
                      <h3><a href="imagesConfAccueil/<%= c.getTitre() %>/mainImage.jpg"><%= c.getTitre() %></a></h3>
                      <div class="stars">
                        <%for(int i=0; i<c.getNote(); i++){ %>
                        	<i class="fa fa-star"></i>
                        <%} %>
                      </div>
                      <p style="padding: 0 20px; margin-bottom: 20px; color: #060c22;
                      font-style: italic; font-size: 15px;"><%= c.getDateDebut() %></p>
                    </div>
                  </div>
                <%} %>
        			</div>
			<% } %>

            </div>
        </section>


        <!--==========================
          About Section
        ============================-->
        <section id="about">
          <div class="container">
            <div class="row">
              <div class="col-lg-6">
                <h2>A Propos de la FST Settat</h2>
                <p>
                  Cet Ã©tablissement est destinÃ© Ã  sâintÃ©grer
                  dans le pÃ´le technologique et industriel
                  des villes de Casablanca, Settat et Berrechid ,
                  pour Ãªtre,
                  une pÃ©piniÃ©re de techniciens et de cadres de haut niveau.
                </p>
                <p>
                Dans l'Ã¨re de la technologie numÃ©rique et de la digitalisation de la formation.
                La FSTS lance son nouveau site web.
                Ce portail est conÃ§u pour vous rapprocher de votre institution,
                ses composantes, l'organisation des Ã©tudes, les formations dispensÃ©es, et les diplÃ´mes dÃ©livrÃ©s.
                Le site prÃ©sente de nombreuses nouveautÃ©s et offre aux visiteurs notamment les Ã©tudiants
                une expÃ©rience amÃ©liorÃ©e grÃ¢ce Ã  une navigation simplifiÃ©e et une utilisation intuitive
                </p>
              </div>
              <div class="col-lg-3">
                <h3>OÃ¹ ?</h3>
                <p>UniversitÃ© Hassan 1er, Settat</p>
              </div>
              <div class="col-lg-3">
                <h3>Quand ?</h3>
                <p>Du Lundi au Vendredi<br>de 8h Ã  18h</p>
              </div>
            </div>
          </div>
        </section>
        <!--==========================
          Venue Section
        ============================-->
        <section id="venue" class="wow fadeInUp">
          <div class="container-fluid">
            <div class="section-header">
              <h2>Nos Salles</h2>
              <p>Informations et images sur les salles de conferences.</p>
            </div>
            <div class="row no-gutters">
              <div class="col-lg-6 venue-map">
                <!--src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621"-->
                <iframe
                src="https://maps.google.com/maps?q=faculet%C3%A9%20sciences%20et%20techniques&t=&z=13&ie=UTF8&iwloc=&output=embed"
                frameborder="0" style="border:0" allowfullscreen></iframe>
              </div>

              <div class="col-lg-6 venue-info">
                <div class="row justify-content-center">
                  <div class="col-11 col-lg-8">
                    <h3>Salle de Conferences, FST Settat</h3>
                    <p>Iste nobis eum sapiente sunt enim dolores labore accusantium autem. Cumque beatae ipsam. Est quae sit qui voluptatem corporis velit. Qui maxime accusamus possimus. Consequatur sequi et ea suscipit enim nesciunt quia velit.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="container-fluid venue-gallery-container">
            <div class="row no-gutters">
             	<%	for(int i=0; i<8; i++){ %>
					<div class="col-lg-3 col-md-4">
                  <div class="venue-gallery">
                    <a href="salles/salle<%=i+1 %>.jpg" class="venobox" data-gall="venue-gallery">
                      <img src="salles/salle<%=i+1 %>.jpg" alt="" class="img-fluid">
                    </a>
                  </div>
                </div>
				<% } %>
             </div>
          </div>
        </section>

        <!--==========================
          Sponsors Section
        ============================-->
        <section id="supporters" class="section-with-bg wow fadeInUp">

          <div class="container">
            <div class="section-header">
              <h2>Sponsors</h2>
            </div>

            <div class="row no-gutters supporters-wrap clearfix">
              {% for i in range(8) %}
                <div class="col-lg-3 col-md-4 col-xs-6">
                  <div class="supporter-logo">
                    <img src="app/static/public/img/supporters/{{i+1}}.png" class="img-fluid" alt="">
                  </div>
                </div>
              {% endfor %}
            </div>
          </div>
        </section>

        <!--==========================
          F.A.Q Section
        ============================-->
        <section id="faq" class="wow fadeInUp">

          <div class="container">

            <div class="section-header">
              <h2>F.A.Q </h2>
            </div>

            <div class="row justify-content-center">
              <div class="col-lg-9">
                  <ul id="faq-list">
                    <li>
                      <a data-toggle="collapse" class="collapsed" href="#faq1">
                        Faites-vous des parcours pour les non-francophones ?
                        <i class="fa fa-minus-circle"></i></a>
                      <div id="faq1" class="collapse" data-parent="#faq-list">
                        <p>
                          Oui ! Actuellement, nous avons deux parcours en version anglaise.
                          Bien sÃ»r, nous pouvons crÃ©er des parcours dans diffÃ©rentes langues en fonction de vos besoins.
                          Pour un team building, incentive ou tout autre Ã©vÃ©nement dans une autre langue, merci de nous consulter.
                        </p>
                      </div>
                    </li>

                    <li>
                      <a data-toggle="collapse" href="#faq2" class="collapsed">
                        Si je souhaite faire une pause repas Ã  midi ou en fin de parcours, pouvez-vous vous occuper de la restauration ?

                        <i class="fa fa-minus-circle"></i></a>
                      <div id="faq2" class="collapse" data-parent="#faq-list">
                        <p>
                          Aucun problÃ¨me ! Nous pouvons nous charger de rechercher et de rÃ©server vos lieux de restauration.
                          Par souci de transparence, nous vous facturerons un forfait pour la recherche et la rÃ©servation,
                          et vous laisserons le soin de rÃ©gler directement les Ã©tablissements pour les frais de restauration.
                        </p>
                      </div>
                    </li>

                    <li>
                      <a data-toggle="collapse" href="#faq3" class="collapsed">
                        Pouvez-vous animer notre Ã©vÃ©nement ?
                        <i class="fa fa-minus-circle"></i></a>
                      <div id="faq3" class="collapse" data-parent="#faq-list">
                        <p>
                          Oui ! Nos formules Original, Premium, et Sur-Mesure intÃ¨grent l'animation du briefing de dÃ©part, de l'arrivÃ©e (classement, remise des prix), et des Ã©ventuelles Ã©preuves animÃ©es.
                        </p>
                      </div>
                    </li>

                    <li>
                      <a data-toggle="collapse" href="#faq4" class="collapsed">
                        Proposez-vous des parcours pour les personnes Ã  mobilitÃ© rÃ©duite ?
                        <i class="fa fa-minus-circle"></i></a>
                      <div id="faq4" class="collapse" data-parent="#faq-list">
                        <p>
                          La plupart des Ã©tapes de nos parcours sont accessibles aux personnes Ã  mobilitÃ© rÃ©duite. NÃ©anmoins, consultez-nous pour choisir le parcours le plus adaptÃ©.
                          Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
                        </p>
                      </div>
                    </li>

                    <li>
                      <a data-toggle="collapse" href="#faq5" class="collapsed">
                        Puis-je organiser mon Ã©vÃ©nement le week-end ?
                        <i class="fa fa-minus-circle"></i></a>
                      <div id="faq5" class="collapse" data-parent="#faq-list">
                        <p>
                          Bien entendu ! Nous pouvons organiser votre Ã©vÃ©nement un week-end. Il faudra simplement veiller aux horaires et jours d'ouverture dans le choix de votre parcours.
                        </p>
                      </div>
                    </li>

                    <li>
                      <a data-toggle="collapse" href="#faq6" class="collapsed">
                        Est-ce que vous proposez des supports numÃ©riques ?
                        <i class="fa fa-minus-circle"></i>
                      </a>
                      <div id="faq6" class="collapse" data-parent="#faq-list">
                        <p>
                          Oui ! Tous nos BaladEnigm existent sur iPhone et Android. Nous pouvons en outre proposer des parcours oÃ¹ vous utiliserez des tablettes numÃ©riques. Pour plus de prÃ©cisions, consultez-nous !
                        </p>
                      </div>
                    </li>
                  </ul>
              </div>
            </div>
          </div>
        </section>

        <!--==========================
          Contact Section
        ============================-->
        <section id="contact" class="section-bg wow fadeInUp">

          <div class="container">

            <div class="section-header">
              <h2>Nous Contacter</h2>
              <p>N'hésitez pas à  nous contacter pour plus d'informations.</p>
            </div>

            <div class="row contact-info">
              <div class="col-md-4">
                <div class="contact-address">
                  <i class="ion-ios-location-outline"></i>
                  <h3>Adresse</h3>
                  <address>FST de Settat, Km 3, B.P. : 577 Route de Casablanca</address>
                </div>
              </div>

              <div class="col-md-4">
                <div class="contact-phone">
                  <i class="ion-ios-telephone-outline"></i>
                  <h3>Numero de Telephone</h3>
                  <p><a href="tel:0523.40.07.36">0523.40.07.36</a></p>
                </div>
              </div>

              <div class="col-md-4">
                <div class="contact-email">
                  <i class="ion-ios-email-outline"></i>
                  <h3>Email</h3>
                  <p><a href="mailto:contact_fsts@uhp.ac.ma">contact_fsts@uhp.ac.ma</a></p>
                </div>
              </div>
            </div>

            <div class="form">
              <div id="sendmessage">Votre message à  bien étéenvoyés. Merci à  vous!</div>
              <div id="errormessage"></div>
              <form action="SauvegarderMessage" method="post" role="form" class="contactForm">
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <input type="text" name="nom" class="form-control" id="name" placeholder="Votre Nom" data-rule="minlen:4" data-msg="Donnez au moins 4 caractÃ¨res." />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-md-6">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Votre Adresse Email" data-rule="email" data-msg="Saisissez une adresse e-mail valide." />
                    <div class="validation"></div>
                  </div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="sujet" id="subject" placeholder="Sujet" data-rule="minlen:4" data-msg="Entrez un sujet de 8 caractÃ¨res au minimum" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="S'il vous plait ecrivez nous quelque chose." placeholder="Message"></textarea>
                  <div class="validation"></div>
                </div>
                <div class="text-center"><button type="submit">Envoyer le message</button></div>
              </form>
            </div>

          </div>
        </section><!-- #contact -->

      </main>
    <!--==========================
      Footer
    ============================-->
    <footer id="footer">
      <hr>
      <div class="footer-top">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 col-md-6 footer-info">
              <div id="logo">
                <h1 style="font-size: 36px; margin: 0; padding: 6px 0; line-height:1;
                font-family: 'Raleway', sans-serif; font-weight: 700;
                letter-spacing: 3px; text-transform: uppercase;">
                  <a href="#intro" class="scrollto">
                    <img height="200px" src="app/static/public/img/fsts_logo_blanc.png" alt="" title="">
                  </a>
                  <a href="#intro" style="color: #fff;">FST<span style="color: rgb(233,142,0);">S</span></a>
                </h1>
              </div>
              <!-- <img src="app/static/public/img/fsts_logo_blanc.png" alt="TheEvenet"> -->
              <p>
                Dans l'Ã¨re de la technologie numÃ©rique et de la digitalisation de la formation.
                La FSTS lance son nouveau site web.

                Le site prÃ©sente de nombreuses nouveautÃ©s
                et offre aux visiteurs notamment les Ã©tudiants une expÃ©rience amÃ©liorÃ©e
                grÃ¢ce Ã  une navigation simplifiÃ©e et une utilisation intuitive
              </p>
            </div>
            <div class="col-lg-3 col-md-6 footer-links">
              <h4>Liens Utiles</h4>
              <ul>
                <li><i class="fa fa-angle-right"></i> <a href="/">Acceuil</a></li>
                <li><i class="fa fa-angle-right"></i> <a href="/#about">A propos</a></li>
                <li><i class="fa fa-angle-right"></i> <a href="#supporters">Partenaires</a></li>
                <li><i class="fa fa-angle-right"></i> <a href="#faq">F.A.Q</a></li>
                <li><i class="fa fa-angle-right"></i> <a href="#contact">Contacter</a></li>
              </ul>
            </div>
            <div class="col-lg-3 col-md-6 footer-contact">
              <h4>Nous Contacter</h4>
              <p>
                FST de Settat, Km 3, B.P. :<br>
                577 Route de Casablanca <br>
                Settat Maroc<br>
                <strong>Phone:</strong> +1 5589 55488 55<br>
                <strong>Email:</strong> info@example.com<br>
              </p>
              <div class="social-links">
                <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--
      <div class="container">
        <div class="copyright">
          &copy; Copyright <strong>TheEvent</strong>. All Rights Reserved
        </div>
        <div class="credits">
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
      </div>
    -->
    </footer><!-- #footer -->




      <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

      <!-- JavaScript Libraries -->
      <script src="app/static/public/lib/jquery/jquery.min.js"></script>
      <script src="app/static/public/lib/jquery/jquery-migrate.min.js"></script>
      <script src="app/static/public/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
      <script src="app/static/public/lib/easing/easing.min.js"></script>
      <script src="app/static/public/lib/superfish/hoverIntent.js"></script>
      <script src="app/static/public/lib/superfish/superfish.min.js"></script>
      <script src="app/static/public/lib/wow/wow.min.js"></script>
      <script src="app/static/public/lib/venobox/venobox.min.js"></script>
      <script src="app/static/public/lib/owlcarousel/owl.carousel.min.js"></script>

      <!-- Contact Form JavaScript File -->
      <script src="app/static/public/contactform/contactform.js"></script>

      <!-- Template Main Javascript File -->
      <script src="app/static/public/js/main.js"></script>
    </body>

    </html>
