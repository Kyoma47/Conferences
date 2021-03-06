<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="fr">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link href="app/static/public/img/fsts_logo.png" rel="icon">
<!--"favicon.png" rel="icon">-->
<link href="app/static/public/img/fsts_logo.png" rel="apple-touch-icon">
<!--apple-touch-icon.png" rel="apple-touch-icon">-->

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
background-color: rgba(6, 12, 34, 0.8);
rgba(29, 62, 126, 0.98);
#1D407E;
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

<title>Animateur -
{{animateur.prenom}}
{{animateur.nom}}</title>

</head>

<body>

<!--========================== Header ============================-->
<header id="header" class="header-fixed">
<div class="container">
<div id="logo" class="pull-left">
<h1>
<a href="/" class="scrollto">
<img height="200px" src="app/static/public/img/fsts_logo_blanc.png" alt="" title=""></a>
<a href="/">FST<span>S</span>
</a>
</h1>
</div>
<nav id="nav-menu-container">
<ul class="nav-menu">

<li>
<a href="/">Acceuil</a>
</li>
<li class="menu-active">
<a href="#speakers-details">Animateur</a>
</li>
<li>
<a href="#supporters">Partenaires</a>
</li>
<li>
<a href="#faq">F.A.Q</a>
</li>
<li>
<a href="#contact">Contacter</a>
</li>

<li class="buy-tickets">
<a id="se_connecter" href="#">Se Connecter |&nbsp;</a>
<ul class="dropdown-menu login-form">
  <li>
    <form action="/login" method="post">
      <div class="form-group">
        <label>Identifiant</label>
        <input type="text" name="login" class="form-control" required="required"></div>
        <div class="form-group">
          <div class="clearfix">
            <label>Mot de passe</label>
            <!--<a href="#" class="pull-right text-muted"><small>Forgot?</small></a>-->
          </div>
          <input type="password" name="password" class="form-control" required="required"></div>
          <br>
            <input type="submit" class="btn btn-primary btn-block" value="Login"></form>
          </li>
        </ul>
      </li>
      <!-- <li class="nav-item"><a href="#" class="btn btn-primary mt-1 mb-1">S'inscrire</a></li> -->
    </ul>
    <ul class="nav navbar-nav navbar-right ml-auto"></ul>
  </nav>
  <!-- #nav-menu-container -->
</div>
</header>
<!-- #header -->

<main id="main">

<!--========================== Speaker Details Section ============================-->
<br>
  <br>
    <br>
      <section id="speakers-details" class="wow fadeIn">
        <div class="container">
          <div class="section-header">
            <h2>Informations Animateur</h2>
            <p>Vous trouverez ici quelques informations relatives Ã  l'animateur.</p>
          </div>

          <div class="row">
            <div class="col-md-6">
              <img src="app/static/public/img/animateurs/{{animateur.image}}" alt="{{animateur.nom}} {{animateur.prenom}}" class="img-fluid"></div>

              <div class="col-md-6">
                <div class="details">
                  <h2>{{animateur.nom}}
                    {{animateur.prenom}}</h2>
                  <div class="social">
                    <a href="{{animateur.twitter}}">
                      <i class="fa fa-twitter"></i>
                    </a>
                    <a href="{{animateur.facebook}}">
                      <i class="fa fa-facebook"></i>
                    </a>
                    <a href="{{animateur.google_plus}}">
                      <i class="fa fa-google-plus"></i>
                    </a>
                    <a href="{{animateur.linkedin}}">
                      <i class="fa fa-linkedin"></i>
                    </a>
                  </div>
                  <br>
                    <p>{{animateur.statut}}</p>
                    <br>
                      <p>{{animateur.description}}</p>
                    </div>
                  </div>
                </div>
              </div>
            </section>

            <!--========================== Sponsors Section ============================-->
            <section id="supporters" class="section-with-bg wow fadeInUp">

              <div class="container">
                <div class="section-header">
                  <h2>Sponsors</h2>
                </div>

                <div class="row no-gutters supporters-wrap clearfix">
                  {% for i in range(8) %}
                    <div class="col-lg-3 col-md-4 col-xs-6">
                      <div class="supporter-logo">
                        <img src="app/static/public/img/supporters/{{i+1}}.png" class="img-fluid" alt=""></div>
                      </div>
                    {% endfor %}
                  </div>
                </div>
              </section>

              <!--========================== F.A.Q Section ============================-->
              <section id="faq" class="wow fadeInUp">

                <div class="container">

                  <div class="section-header">
                    <h2>F.A.Q
                    </h2>
                  </div>

                  <div class="row justify-content-center">
                    <div class="col-lg-9">
                      <ul id="faq-list">
                        <li>
                          <a data-toggle="collapse" class="collapsed" href="#faq1">
                            Faites-vous des parcours pour les non-francophones ?
                            <i class="fa fa-minus-circle"></i>
                          </a>
                          <div id="faq1" class="collapse" data-parent="#faq-list">
                            <p>
                              Oui ! Actuellement, nous avons deux parcours en version anglaise. Bien sÃ»r, nous pouvons crÃ©er des parcours dans diffÃ©rentes langues en fonction de vos besoins. Pour un team building, incentive ou tout autre Ã©vÃ©nement dans une autre langue, merci de
                              nous consulter.
                            </p>
                          </div>
                        </li>

                        <li>
                          <a data-toggle="collapse" href="#faq2" class="collapsed">
                            Si je souhaite faire une pause repas Ã  midi ou en fin de parcours, pouvez-vous vous occuper de la restauration ?

                            <i class="fa fa-minus-circle"></i>
                          </a>
                          <div id="faq2" class="collapse" data-parent="#faq-list">
                            <p>
                              Aucun problÃ¨me ! Nous pouvons nous charger de rechercher et de rÃ©server vos lieux de restauration. Par souci de transparence, nous vous facturerons un forfait pour la recherche et la rÃ©servation, et vous laisserons le soin de rÃ©gler directement les
                              Ã©tablissements pour les frais de restauration.
                            </p>
                          </div>
                        </li>

                        <li>
                          <a data-toggle="collapse" href="#faq3" class="collapsed">
                            Pouvez-vous animer notre Ã©vÃ©nement ?
                            <i class="fa fa-minus-circle"></i>
                          </a>
                          <div id="faq3" class="collapse" data-parent="#faq-list">
                            <p>
                              Oui ! Nos formules Original, Premium, et Sur-Mesure intÃ¨grent l'animation du briefing de dÃ©part, de l'arrivÃ©e (classement, remise des prix), et des Ã©ventuelles Ã©preuves animÃ©es.
                            </p>
                          </div>
                        </li>

                        <li>
                          <a data-toggle="collapse" href="#faq4" class="collapsed">
                            Proposez-vous des parcours pour les personnes Ã  mobilitÃ© rÃ©duite ?
                            <i class="fa fa-minus-circle"></i>
                          </a>
                          <div id="faq4" class="collapse" data-parent="#faq-list">
                            <p>
                              La plupart des Ã©tapes de nos parcours sont accessibles aux personnes Ã  mobilitÃ© rÃ©duite. NÃ©anmoins, consultez-nous pour choisir le parcours le plus adaptÃ©. Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit
                              laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
                            </p>
                          </div>
                        </li>

                        <li>
                          <a data-toggle="collapse" href="#faq5" class="collapsed">
                            Puis-je organiser mon Ã©vÃ©nement le week-end ?
                            <i class="fa fa-minus-circle"></i>
                          </a>
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

              <!--========================== Contact Section ============================-->
              <section id="contact" class="section-bg wow fadeInUp">

                <div class="container">

                  <div class="section-header">
                    <h2>Nous Contacter</h2>
                    <p>N'hÃ©sitez pas Ã  nous contacter pour plus d'informations.</p>
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
                        <p>
                          <a href="tel:0523.40.07.36">0523.40.07.36</a>
                        </p>
                      </div>
                    </div>

                    <div class="col-md-4">
                      <div class="contact-email">
                        <i class="ion-ios-email-outline"></i>
                        <h3>Email</h3>
                        <p>
                          <a href="mailto:contact_fsts@uhp.ac.ma">contact_fsts@uhp.ac.ma</a>
                        </p>
                      </div>
                    </div>
                  </div>

                  <div class="form">
                    <div id="sendmessage">Votre message Ã  bien Ã©tÃ© envoyÃ©s. Merci Ã  vous!</div>
                    <div id="errormessage"></div>
                    <form action="/envoyer_message" method="post" role="form" class="contactForm">
                      <div class="form-row">
                        <div class="form-group col-md-6">
                          <input type="text" name="name" class="form-control" id="name" placeholder="Votre Nom" data-rule="minlen:4" data-msg="Donnez au moins 4 caractÃ¨res."/>
                          <div class="validation"></div>
                        </div>
                        <div class="form-group col-md-6">
                          <input type="email" class="form-control" name="email" id="email" placeholder="Votre Adresse Email" data-rule="email" data-msg="Saisissez une adresse e-mail valide."/>
                          <div class="validation"></div>
                        </div>
                      </div>
                      <div class="form-group">
                        <input type="text" class="form-control" name="subject" id="subject" placeholder="Sujet" data-rule="minlen:4" data-msg="Entrez un sujet de 8 caractÃ¨res au minimum"/>
                        <div class="validation"></div>
                      </div>
                      <div class="form-group">
                        <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="S'il vous plait ecrivez nous quelque chose." placeholder="Message"></textarea>
                        <div class="validation"></div>
                      </div>
                      <div class="text-center">
                        <button type="submit">Envoyer le message</button>
                      </div>
                    </form>
                  </div>

                </div>
              </section>
              <!-- #contact -->

            </main>
            <!--========================== Footer ============================-->
            <footer id="footer">
              <hr>
                <div class="footer-top">
                  <div class="container">
                    <div class="row">
                      <div class="col-lg-3 col-md-6 footer-info">
                        <div id="logo">
                          <h1
                            style="font-size: 36px; margin: 0; padding: 6px 0; line-height:1;
                              font-family: 'Raleway', sans-serif; font-weight: 700;
                              letter-spacing: 3px; text-transform: uppercase;">
                            <a href="#intro" class="scrollto">
                              <img height="200px" src="app/static/public/img/fsts_logo_blanc.png" alt="" title=""></a>
                              <a href="#intro" style="color: #fff;">FST<span style="color: rgb(233,142,0);">S</span>
                              </a>
                            </h1>
                          </div>
                          <!-- <img src="app/static/public/img/fsts_logo_blanc.png" alt="TheEvenet"> -->
                          <p>
                            Dans l'Ã¨re de la technologie numÃ©rique et de la digitalisation de la formation. La FSTS lance son nouveau site web. Le site prÃ©sente de nombreuses nouveautÃ©s et offre aux visiteurs notamment les Ã©tudiants une expÃ©rience amÃ©liorÃ©e grÃ¢ce Ã  une
                            navigation simplifiÃ©e et une utilisation intuitive
                          </p>
                        </div>
                        <div class="col-lg-3 col-md-6 footer-links">
                          <h4>Liens Utiles</h4>
                          <ul>
                            <li>
                              <i class="fa fa-angle-right"></i>
                              <a href="/">Acceuil</a>
                            </li>
                            <li>
                              <i class="fa fa-angle-right"></i>
                              <a href="/#about">A propos</a>
                            </li>
                            <li>
                              <i class="fa fa-angle-right"></i>
                              <a href="#supporters">Partenaires</a>
                            </li>
                            <li>
                              <i class="fa fa-angle-right"></i>
                              <a href="#faq">F.A.Q</a>
                            </li>
                            <li>
                              <i class="fa fa-angle-right"></i>
                              <a href="#contact">Contacter</a>
                            </li>
                          </ul>
                        </div>
                        <div class="col-lg-3 col-md-6 footer-contact">
                          <h4>Nous Contacter</h4>
                          <p>
                            FST de Settat, Km 3, B.P. :<br>
                              577 Route de Casablanca
                              <br>
                                Settat Maroc<br>
                                  <strong>Phone:</strong>
                                  +1 5589 55488 55<br>
                                    <strong>Email:</strong>
                                    info@example.com<br></p>
                                    <div class="social-links">
                                      <a href="#" class="twitter">
                                        <i class="fa fa-twitter"></i>
                                      </a>
                                      <a href="#" class="facebook">
                                        <i class="fa fa-facebook"></i>
                                      </a>
                                      <a href="#" class="instagram">
                                        <i class="fa fa-instagram"></i>
                                      </a>
                                      <a href="#" class="google-plus">
                                        <i class="fa fa-google-plus"></i>
                                      </a>
                                      <a href="#" class="linkedin">
                                        <i class="fa fa-linkedin"></i>
                                      </a>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <!-- <div class="container"> <div class="copyright"> &copy; Copyright <strong>TheEvent</strong>. All Rights Reserved </div> <div class="credits"> Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> </div> </div> -->
                          </footer>
                          <!-- #footer -->

                          <a href="#" class="back-to-top">
                            <i class="fa fa-angle-up"></i>
                          </a>

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
