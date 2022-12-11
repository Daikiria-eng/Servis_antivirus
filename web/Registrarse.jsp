<%
    if (request.getSession().getAttribute("userObject") != null)
        response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="es"><head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="keywords" content="​Al crear una cuenta, acepta nuestros&nbsp;Términos y condiciones&nbsp;,&nbsp;Política&nbsp;de privacidad y recibir correos electrónicos de​ Servis Antivirus">

        <meta name="description" content="">
        <title>Registrarse</title>
        <link rel="stylesheet" href="nicepage.css" media="screen">
        <link rel="stylesheet" href="Registrarse.css" media="screen">
        <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
        <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
        <meta name="generator" content="Nicepage 5.0.7, nicepage.com">
        <meta name="referrer" content="origin">
        <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">


        <script type="application/ld+json">{
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "Site1",
            "logo": "./images/LogotipoTiendaDeModaMinimalistaBlancoyNegro.png"
            }</script>
        <meta name="theme-color" content="#478ac9">
        <meta property="og:title" content="Registrarse">
        <meta property="og:description" content="">
        <meta property="og:type" content="website">
    </head>
    <body class="u-body u-xl-mode" data-lang="es"><header class="u-black u-clearfix u-header" id="sec-888d" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><div class="u-clearfix u-sheet u-sheet-1">
                <nav class="u-menu u-menu-one-level u-offcanvas u-menu-1">
                    <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
                        <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#" style="padding: 7px 0px; font-size: calc(1em + 22px);" data-lang-en="{&quot;content&quot;:&quot;<svg class=\&quot;u-svg-link\&quot; viewBox=\&quot;0 0 24 24\&quot;><use xmlns:xlink=\&quot;http://www.w3.org/1999/xlink\&quot; xlink:href=\&quot;#menu-hamburger\&quot;></use></svg><svg class=\&quot;u-svg-content\&quot; version=\&quot;1.1\&quot; id=\&quot;menu-hamburger\&quot; viewBox=\&quot;0 0 16 16\&quot; x=\&quot;0px\&quot; y=\&quot;0px\&quot; xmlns:xlink=\&quot;http://www.w3.org/1999/xlink\&quot; xmlns=\&quot;http://www.w3.org/2000/svg\&quot;>    <g>        <rect y=\&quot;1\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect y=\&quot;7\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect y=\&quot;13\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>    </g></svg>&quot;,&quot;href&quot;:&quot;#&quot;}">
                            <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
                            <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
                            </g></svg>
                        </a>
                    </div>
                    <div class="u-custom-menu u-nav-container">
                        <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="${pageContext.request.contextPath}/Servis-Antivirus.jsp" data-lang-en="{&quot;content&quot;:&quot;Servis Antivirus&quot;,&quot;href&quot;:&quot;Servis-Antivirus.jsp&quot;}" style="padding: 10px 20px;">Servis Antivirus</a>
                            </li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="${pageContext.request.contextPath}/Registrarse.jsp#sec-ef02" data-lang-en="{&quot;content&quot;:&quot;Contacto&quot;,&quot;href&quot;:&quot;Contacto.jsp&quot;}" style="padding: 10px 20px;">Registrarse</a>
                            </li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="${pageContext.request.contextPath}/Informacion.jsp#sec-88c9" style="padding: 10px 20px;">Informacion</a>
                            </li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="${pageContext.request.contextPath}/Seguridad.jsp#sec-13dc" data-lang-en="{&quot;content&quot;:&quot;Seguridad&quot;,&quot;href&quot;:&quot;#&quot;}" style="padding: 10px 20px;">Seguridad</a>
                            </li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="${pageContext.request.contextPath}/Prevencion.jsp#sec-dc8f" style="padding: 10px 20px;">Prevencion</a>
                            </li></ul>
                    </div>
                    <div class="u-custom-menu u-nav-container-collapse">
                        <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                            <div class="u-inner-container-layout u-sidenav-overflow">
                                <div class="u-menu-close"></div>
                                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="${pageContext.request.contextPath}/Servis-Antivirus.jsp" data-lang-en="{&quot;content&quot;:&quot;Servis Antivirus&quot;,&quot;href&quot;:&quot;Servis-Antivirus.jsp&quot;}">Servis Antivirus</a>
                                    </li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="${pageContext.request.contextPath}/Registrarse.jsp#sec-ef02" data-lang-en="{&quot;content&quot;:&quot;Contacto&quot;,&quot;href&quot;:&quot;Contacto.jsp&quot;}">Registrarse</a>
                                    </li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="${pageContext.request.contextPath}/Informacion.jsp#sec-88c9">Informacion</a>
                                    </li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="${pageContext.request.contextPath}/Seguridad.jsp#sec-13dc" data-lang-en="{&quot;content&quot;:&quot;Seguridad&quot;,&quot;href&quot;:&quot;#&quot;}">Seguridad</a>
                                    </li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="${pageContext.request.contextPath}/Prevencion.jsp#sec-dc8f">Prevencion</a>
                                    </li></ul>
                            </div>
                        </div>
                        <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
                    </div>
                </nav>
                <a href="${pageContext.request.contextPath}/Servis-Antivirus.jsp" class="u-image u-logo u-image-1" data-image-width="500" data-image-height="500" title="Servis Antivirus">
                    <img src="./images/LogotipoTiendaDeModaMinimalistaBlancoyNegro.png" class="u-logo-image u-logo-image-1">
                </a>
            </div></header>0

        <section class="u-align-center-md u-align-center-sm u-align-center-xs u-clearfix u-section-1" id="sec-ef02">
            <div class="u-clearfix u-sheet u-valign-middle-xs u-sheet-1">
                <div class="u-align-left u-container-style u-expanded-width-xs u-grey-5 u-group u-group-1">
                    <div class="u-container-layout u-container-layout-1">
                        <h3 class="u-text u-text-default-lg u-text-default-md u-text-default-sm u-text-default-xl u-text-1">Registrate, aprende mas de seguridad.</h3>
                        <div class="u-expanded-width-xs u-form u-form-1">
                            <!--<form action="ppal" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form">
                              <div class="u-form-email u-form-group">
                                <label for="email-a412" class="u-label">Email</label>
                                <input type="email" placeholder="Correo" id="email-a412" name="email" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                              </div>
                              <div class="u-form-group u-form-name">
                                <label for="name-a412" class="u-label">Nombre</label>
                                <input type="text" placeholder="Nombre completo" id="name-a412" name="name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                              </div>
                              <div class="u-align-left u-form-group u-form-submit">
                                <a href="#" class="u-btn u-btn-submit u-button-style">Registrarse<br>
                                </a>
                                <input type="submit" value="submit" class="u-form-control-hidden">
                              </div>
                              <div class="u-form-send-message u-form-send-success"> Gracias! Tu mensaje ha sido enviado. </div>
                              <div class="u-form-send-error u-form-send-message"> No se puede enviar su mensaje. Por favor, corrija los errores y vuelva a intentarlo. </div>
                              <input type="hidden" value="sign_in" name="accion">
                            </form>-->


                            <%
                                String msg = request.getParameter("ErrorMsg");
                                if (msg != null) {
                            %>
                            <h1><%=msg%></h1>
                            <%}%>

                            <form method="POST" action="${pageContext.request.contextPath}/ppal"
                                  class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="email" name="form"
                                  style="padding: 10px;">
                                <div class="u-form-email u-form-group">
                                    <label for="email-a412" class="u-label">Email</label>
                                    <input type="email" placeholder="Correo" id="email-a412" name="email"
                                           class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="true" autofocus>
                                </div>
                                <div class="u-form-group u-form-name">
                                    <label for="name-a412" class="u-label">Nombre</label>
                                    <input type="text" placeholder="Nombre completo" id="name-a412" name="fullName"
                                           class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                                </div>
                                <div class="u-form-group u-form-name">
                                    <label for="name-a412" class="u-label">Contraseña</label>
                                    <input type="password" placeholder="ContraseÃ±a" id="name-a412" name="password"
                                           class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                                    <input type="hidden" name="accion" value="sign_up"/>
                                </div>
                                <div class="u-align-left u-form-group u-form-submit">
                                    <button type="submit" id="Registrarse_btn">Registrarse!</button>
                                </div>
                            </form>




                        </div>
                        <h2 class="u-text u-text-2"> Al crear una cuenta, acepta nuestros&nbsp;<a href="https://nicepage.com/Terms" target="_blank" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2">Términos y condiciones</a>&nbsp;,&nbsp;<a href="https://nicepage.com/Privacy" target="_blank" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3">Política</a>&nbsp;de privacidad y recibir correos electrónicos de​ Servis Antivirus
                        </h2>
                        <h2 class="u-text u-text-2"> Ya tienes cuenta? <a href="${pageContext.request.contextPath}/Iniciar.jsp" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2">Inicia sesión aquí</a></h2>
                    </div>
                </div>
            </div>
        </section>


        <footer class="u-align-center u-black u-clearfix u-footer u-footer" id="sec-f1c2"><div class="u-clearfix u-sheet u-sheet-1">
                <img class="u-image u-image-circle u-image-1" src="./images/images.png" alt="" data-image-width="299" data-image-height="168">
                <p class="u-text u-text-1" data-lang-en="57+ 3144715508">57+ 3144715508</p>
                <p class="u-small-text u-text u-text-variant u-text-2" data-lang-en="servis_antivirus2022@gmail.com<br>">servis_antivirus2022@gmail.com<br>
                </p>
            </div></footer>
        <section class="u-backlink u-clearfix u-grey-80">
            <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
                <span>Website Templates</span>
            </a>
            <p class="u-text">
                <span>created with</span>
            </p>
            <a class="u-link" href="" target="_blank">
                <span>Website Builder Software</span>
            </a>. 
        </section><section class="u-align-center u-clearfix u-cookies-consent u-grey-80 u-cookies-consent" id="sec-386d">
            <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
                <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
                    <div class="u-gutter-0 u-layout">
                        <div class="u-layout-row">
                            <div class="u-container-style u-layout-cell u-left-cell u-size-43-md u-size-43-sm u-size-43-xs u-size-46-lg u-size-46-xl u-layout-cell-1">
                                <div class="u-container-layout u-valign-middle u-container-layout-1">
                                    <h3 class="u-text u-text-default u-text-1">Cookies &amp; Privacy</h3>
                                    <p class="u-text u-text-default u-text-2"> Este sitio web utiliza cookies para garantizar que obtenga la mejor experiencia en nuestro sitio web.</p>
                                </div>
                            </div>
                            <div class="u-align-left u-container-style u-layout-cell u-right-cell u-size-14-lg u-size-14-xl u-size-17-md u-size-17-sm u-size-17-xs u-layout-cell-2">
                                <div class="u-container-layout u-valign-middle-lg u-valign-middle-md u-valign-middle-xl u-valign-top-sm u-valign-top-xs u-container-layout-2">
                                    <a href="###" class="u-btn u-button-confirm u-button-style u-palette-1-base u-btn-1">Confirmar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <style> .u-cookies-consent {
                    background-image: none;
                }

                .u-cookies-consent .u-sheet-1 {
                    min-height: 212px;
                }

                .u-cookies-consent .u-layout-wrap-1 {
                    margin-top: 30px;
                    margin-bottom: 30px;
                }

                .u-cookies-consent .u-layout-cell-1 {
                    min-height: 152px;
                }

                .u-cookies-consent .u-container-layout-1 {
                    padding: 30px 60px;
                }

                .u-cookies-consent .u-text-1 {
                    margin-top: 0;
                    margin-right: 20px;
                    margin-bottom: 0;
                }

                .u-cookies-consent .u-text-2 {
                    margin: 8px 20px 0 0;
                }

                .u-cookies-consent .u-layout-cell-2 {
                    min-height: 152px;
                }

                .u-cookies-consent .u-container-layout-2 {
                    padding: 30px;
                }

                .u-cookies-consent .u-btn-1 {
                    margin: 0 auto 0 0;
                }

                @media (max-width: 991px) {
                    .u-cookies-consent .u-sheet-1 {
                        min-height: 187px;
                    }

                    .u-cookies-consent .u-layout-cell-1 {
                        min-height: 100px;
                    }

                    .u-cookies-consent .u-container-layout-1 {
                        padding-left: 30px;
                        padding-right: 30px;
                    }

                    .u-cookies-consent .u-text-2 {
                        margin-right: 0;
                    }

                    .u-cookies-consent .u-layout-cell-2 {
                        min-height: 100px;
                    }
                }

                @media (max-width: 767px) {
                    .u-cookies-consent .u-sheet-1 {
                        min-height: 225px;
                    }

                    .u-cookies-consent .u-layout-cell-1 {
                        min-height: 154px;
                    }

                    .u-cookies-consent .u-container-layout-1 {
                        padding-left: 10px;
                        padding-right: 10px;
                        padding-bottom: 20px;
                    }

                    .u-cookies-consent .u-layout-cell-2 {
                        min-height: 65px;
                    }

                    .u-cookies-consent .u-container-layout-2 {
                        padding: 10px;
                    }
                }

                @media (max-width: 575px) {
                    .u-cookies-consent .u-sheet-1 {
                        min-height: 121px;
                    }

                    .u-cookies-consent .u-layout-cell-1 {
                        min-height: 100px;
                    }

                    .u-cookies-consent .u-layout-cell-2 {
                        min-height: 15px;
                    }
                }</style></section>

    </body></html>
