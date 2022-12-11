<%@page import="dto.ResponseDTO"%>
<%@page import="dto.StatsDTO"%>
<%@page import="dto.User"%>
<%@page import="dao.ServisAntivirusDAO"%>
<%@page import="dao.impl.ServisAntivirusDAOimpl"%>
<%@page import="com.google.gson.Gson"%>
<%
    //if (request.getSession().getAttribute("userObject") == null)
    //    response.sendRedirect("Iniciar.jsp");
%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="es"><head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="keywords" content="Sample Headline, Design Online">
        <meta name="description" content="">
        <title>Prevencion</title>
        <link rel="stylesheet" href="nicepage.css" media="screen">
        <link rel="stylesheet" href="Prevencion.css" media="screen">
        <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
        <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
        <meta name="generator" content="Nicepage 5.0.7, nicepage.com">
        <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">






        <script type="application/ld+json">{
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "Site1",
            "logo": "../images/LogotipoTiendaDeModaMinimalistaBlancoyNegro.png"
            }</script>
        <meta name="theme-color" content="#478ac9">
        <meta property="og:title" content="Prevencion">
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
                    <img src="../images/LogotipoTiendaDeModaMinimalistaBlancoyNegro.png" class="u-logo-image u-logo-image-1">
                </a>
            </div></header>
        <section class="u-align-center u-clearfix u-image u-shading u-section-1" src="" data-image-width="256" data-image-height="256" id="sec-dc8f">
            <div class="u-clearfix u-sheet u-sheet-1">
                <h1 class="u-text u-text-default u-title u-text-1">Sample Headline</h1>
                <p class="u-large-text u-text u-text-variant u-text-2">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
                <div class="u-align-center u-container-style u-grey-5 u-group u-group-1">
                    <div class="u-container-layout u-container-layout-1">
                        <h2 class="u-text u-text-3">Prevención</h2>
                        <p class="u-text u-text-4"> Los Virus informáticos se han convertido en una continua pesadilla, especialmente, para los usuarios del correo electrónico. Es muy probable que usted o algún conocido suyo haya sido victima de estos molestos ‘bichos’ informáticos que aparecen donde uno menos lo espera.</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="u-border-2 u-border-grey-10 u-clearfix u-grey-10 u-section-2" id="sec-d921">
            <div class="u-clearfix u-sheet u-sheet-1">
                <h2 class="u-text u-text-default u-text-1">¿Como prevenirnos de un virus?</h2>
                <p class="u-large-text u-text u-text-default u-text-variant u-text-2"> El cuidado de tu equipo empieza por el uso que le das, y saber cómo evitar virus informáticos que pueda dañarlo, es el primer paso evitar daños posteriores. Los virus informáticos han existido por décadas, y cada vez se perfeccionan mas para lograr su objetivo: conseguir tu información personal.</p>
                <img class="u-image u-image-default u-image-1" src="../images/mayores-principales-ciberataques-brechas-datos-2020-ciberseguridad-empresas-ransomware-cibercrimen-noticias-recopilacion-aepd-grafico-bitlife-bitlifemedia.webp" alt="" data-image-width="1000" data-image-height="580">
                <p class="u-large-text u-text u-text-variant u-text-3"> Existen muchas formas de que tu computador sea infectado por un virus informativo, pero la gran mayoría de ellas pueden ser evitadas aplicando una serie de consejos sencillos. Es por esto en esta oportunidad queremos darte algunos consejos sobre cómo evitar virus informáticos.</p>
            </div>
        </section>
        <section class="u-align-center u-clearfix u-section-3" id="sec-818b">
            <div class="u-clearfix u-sheet u-sheet-1">
                <div class="fr-view u-align-left u-clearfix u-rich-text u-text u-text-1">
                    <p style="text-align: center;">
                        <span style="font-weight: 700; font-size: 1.875rem;">
                            <span style="font-size: 2.25rem;">Metodos de antivirus</span>
                        </span>
                    </p>
                    <p id="isPasted">
                        <span style="font-size: 1.125rem;">
                            <span class="u-text-body-color">
                                <span style="font-size: 1.25rem;">El Software antivirus usa tres métodos para proteger el sistema:</span>
                            </span>
                        </span>
                    </p>
                    <ol>
                        <li>
                            <span style="font-size: 1.125rem;">
                                <span class="u-text-body-color" style="font-size: 1.25rem;">Analizar nuestros archivos comparándolos con una base de datos de software o programas malignos.</span>
                            </span>
                        </li>
                        <li style="padding: 0px; margin: 0px;">
                            <span style="font-size: 1.125rem;">
                                <span class="u-text-body-color" style="font-size: 1.25rem;">Monitorizar&nbsp;los archivos deordenador a medida que van siendo abiertos o creados para garantizar que no estén infectados. Esta es la&nbsp;protección en tiempo real contra virus, que puede afectar al rendimiento del sistema.</span>
                            </span>
                        </li>
                        <li style="padding: 0px; margin: 0px;">
                            <span style="font-size: 1.125rem;">
                                <span class="u-text-body-color" style="font-size: 1.25rem;">Inspeccionar&nbsp;periódicamente todo el sistema para verificar si existen archivos corruptos y eliminar los virus existentes, en caso de que pudieran haberse introducido en tu ordenador.</span>
                            </span>
                        </li>
                    </ol>
                    <p>
                        <span style="font-size: 1.125rem;">
                            <span class="u-text-body-color" style="font-size: 1.25rem;">El antivirus compara cada archivo del disco duro con un diccionario de virus ya conocidos. Si cualquier pieza de código en un archivo del disco duro coincide con el virus conocido en el diccionario, el software antivirus entra en acción, llevando a cabo una de las acciones posibles.</span>
                        </span>
                    </p>
                    <p>
                        <br>
                    </p>
                    <hr>
                    <p>
                        <br>
                    </p>
                </div>
                <div class="fr-view u-align-left u-clearfix u-rich-text u-text u-text-2">
                    <p id="isPasted">
                        <span style="font-size: 2.25rem; font-weight: 700;">Seguridad activa y pasiva informática</span>
                    </p>
                    <p style="text-align: left;">
                        <span style="font-size: 1.25rem;">La seguridad activa y la seguridad pasiva no solo se entienden para mantener a salvo la vida del conductor de un coche. En informática también se usan esos términos para hablar de cómo proteger los ordenadores.</span>
                    </p>
                    <p id="isPasted">
                        <span style="font-size: 2.25rem; font-weight: 700;">Seguridad activa informática</span>
                    </p>
                    <p>
                        <span style="font-size: 1.25rem;">La seguridad activa en informática es la que se usa diariamente para prevenir cualquier tipo de ataque en un sistema. Existen muchas acciones para lograrlo y, dependiendo de cada situación, se deben adoptar unas u otras.</span>
                    </p>
                    <ul style="box-sizing: border-box; font-family: &quot;PT Sans&quot;, Arial, Helvetica, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                        <li style="box-sizing: border-box;">
                            <span style="font-size: 1.25rem;">Emplear contraseñas seguras. Para que sea considerada como tal, una contraseña debe tener más de 8 caracteres, con mayúsculas, minúsculas y números. Hay virus que se centran en averiguar contraseñas, así que es mejor no ponérselo fácil.</span>
                        </li>
                        <li style="box-sizing: border-box;">
                            <span style="font-size: 1.25rem;">Encriptar datos importantes. Es decir, cifrarlos para que solo lo puedan leer aquellas personas que sepan la clave.</span>
                        </li>
                        <li style="box-sizing: border-box;">
                            <span style="font-size: 1.25rem;">Tener un antivirus actualizado. No ignores sus peticiones de actualización.</span>
                        </li>
                        <li style="box-sizing: border-box;">
                            <span style="font-size: 1.25rem;">Usar otros software de seguridad, además del antivirus, como los cortafuegos o los antiespías.</span>
                        </li>
                        <li style="box-sizing: border-box;">
                            <span style="font-size: 1.25rem;">Realizar copias de seguridad. Deben ser constantes y de todo lo que consideremos que tiene un cierto valor.</span>
                        </li>
                        <li style="box-sizing: border-box;">
                            <span style="font-size: 1.25rem;">Analizar la máquina periódicamente en busca de malware. Puede que los tengas dentro pero que no estén activos.</span>
                        </li>
                        <li style="box-sizing: border-box;">
                            <span style="font-size: 1.25rem;">Tener un usuario auxiliar. Existen virus que bloquean el perfil de usuario pero, si tienes otro, puedes entrar y actuar.</span>
                        </li>
                    </ul>
                    <p>
                        <span style="font-size: 1.25rem;">Además de estos procedimientos más o menos técnicos, se debe tener sentido común. Si te llega un correo extraño, no lo abras porque podría ser un virus. De la misma forma, no introduzcas un USB a tu ordenador ni te descargues programas si no conoces su procedencia.</span>
                    </p>
                    <p>
                        <span style="font-size: 2.25rem; font-weight: 700;">Seguridad pasiva informática</span>
                    </p>
                    <p>
                        <span style="font-size: 1.25rem;">La seguridad pasiva en informática es la que entra en acción para minimizar los daños causados por un usuario, un accidente o un malware en los sistemas. Igual que con la seguridad pasiva, existen varias prácticas para cada situación. Algunas de ellas son:</span>
                    </p>
                    <ul style="box-sizing: border-box; font-family: &quot;PT Sans&quot;, Arial, Helvetica, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                        <li style="box-sizing: border-box;">
                            <span style="font-size: 1.25rem;">Usar un hardware adecuado contra averías y accidentes.</span>
                        </li>
                        <li style="box-sizing: border-box;">
                            <span style="font-size: 1.25rem;">Comprobar si el antivirus funciona correctamente cuando hay una infección por un virus.</span>
                        </li>
                        <li style="box-sizing: border-box;">
                            <span style="font-size: 1.25rem;">Escanear el sistema al completo y, si se encuentra algún malware, limpiarlo.</span>
                        </li>
                        <li style="box-sizing: border-box;">
                            <span style="font-size: 1.25rem;">Realizar copias de seguridad de los datos y del sistema operativo en distintos soportes y ubicaciones físicas.</span>
                        </li>
                        <li style="box-sizing: border-box;">
                            <span style="font-size: 1.25rem;">Crear particiones del disco duro para almacenar archivos y backups en una unidad distinta a la del sistema operativo.</span>
                        </li>
                        <li style="box-sizing: border-box;">
                            <span style="font-size: 1.25rem;">Desconectar la máquina de la red hasta que se encuentre una solución.</span>
                        </li>
                    </ul>
                    <p>
                        <span style="font-size: 1.25rem;">Puede que termines de leer este post y te digas “muy interesante pero ¿cómo implemento cada acción?” o incluso “¿qué acciones me convienen más?”. Hay algunas que no tienen secreto y casi son obligatorias, como elegir una buena contraseña, pero hay otras que necesitan un cierto conocimiento técnico. En Accensit nos ocupamos de seleccionar las mejores prácticas de seguridad activa y de seguridad pasiva para tu sistema informático y el de tu empresa. Contacta con nosotros y te explicaremos todos los detalles. Recuerda que actuar a tiempo puede salvarte de una crisis informática.</span>
                    </p>
                </div>
            </div>
        </section>
        <section class="u-align-center u-clearfix u-section-4" id="sec-67a4">
            <div class="u-clearfix u-sheet u-sheet-1">
                <div class="u-expanded-width u-tabs u-tabs-1">
                    <ul class="u-border-1 u-border-grey-25 u-tab-list u-unstyled" role="tablist">
                        <li class="u-tab-item" role="presentation">
                            <a class="active u-active-white u-border-2 u-border-active-grey-15 u-border-hover-grey-15 u-border-no-bottom u-button-style u-tab-link u-text-active-palette-2-base u-text-hover-black u-tab-link-1" id="link-tab-0da5" href="#tab-0da5" role="tab" aria-controls="tab-0da5" aria-selected="true">Detectar</a>
                        </li>
                        <li class="u-tab-item" role="presentation">
                            <a class="u-active-white u-border-2 u-border-active-grey-15 u-border-hover-grey-15 u-border-no-bottom u-button-style u-tab-link u-text-active-palette-2-base u-text-hover-black u-tab-link-2" id="link-tab-14b7" href="#tab-14b7" role="tab" aria-controls="tab-14b7" aria-selected="false">Virus</a>
                        </li>
                        <li class="u-tab-item" role="presentation">
                            <a class="u-active-white u-border-2 u-border-active-grey-15 u-border-hover-grey-15 u-border-no-bottom u-button-style u-tab-link u-text-active-palette-2-base u-text-hover-black u-tab-link-3" id="link-tab-cea1" href="#tab-cea1" role="tab" aria-controls="tab-cea1" aria-selected="false">Otras medidas</a>
                        </li>
                    </ul>
                    <div class="u-tab-content">
                        <div class="u-align-left u-container-style u-tab-active u-tab-pane u-white u-tab-pane-1" id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
                            <div class="u-container-layout u-container-layout-1">
                                <img alt="" class="u-expanded-width-xs u-image u-image-default u-image-1" data-image-width="2672" data-image-height="2672" src="../images/308388787-0.jpeg">
                                <h4 class="u-text u-text-1"> ¿Cómo se detecta un virus informático?</h4>
                                <p class="u-text u-text-2"> Los creadores de malware generan código que resulta muy difícil de detectar hasta que se ejecuta la carga útil. Sin embargo, al igual que con cualquier programa de software, pueden ocurrir errores mientras se ejecuta el virus. Algunas señales de que podría tener un virus informático en el PC son:</p>
                                <ul class="u-text u-text-3">
                                    <li>
                                        <div class="class u-list-icon"></div> Ventanas emergentes, incluyendo anuncios (adware) o enlaces a páginas web malintencionadas.
                                    </li>
                                    <li>
                                        <div class="class u-list-icon"></div>La página de inicio de su navegador web es diferente, pero usted no la ha cambiado.
                                    </li>
                                    <li>
                                        <div class="class u-list-icon"></div>Envío automático de correos electrónicos a su lista de contactos o recepción de mensajes de personas en su lista de contactos que le alertan de que su cuenta está enviando mensajes extraños.
                                    </li>
                                    <li>
                                        <div class="class u-list-icon"></div>El ordenador se cuelga con frecuencia, se le agota la memoria con unos pocos programas activos o aparece la pantalla azul de la muerte de Windows.
                                    </li>
                                    <li>
                                        <div class="class u-list-icon"></div>Un bajo rendimiento del ordenador, incluso cuando se ejecutan relativamente pocos programas o se acaba de arrancar el sistema.
                                    </li>
                                    <li>
                                        <div class="class u-list-icon"></div>Se inician programas desconocidos cuando el ordenador arranca o cuando se abren programas específicos.
                                    </li>
                                    <li>
                                        <div class="class u-list-icon"></div>Las contraseñas cambian sin su conocimiento o sin haber interactuado con la cuenta.
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-2" id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
                            <div class="u-container-layout u-container-layout-2">
                                <h1 class="u-text u-text-default u-text-4">Tipos de virus informaticos</h1>
                                <p class="u-heading-font u-text u-text-default u-text-5"> La web contiene millones de virus informáticos, pero solamente algunos han ganado notoriedad e infectado a una cantidad récord de máquinas. Algunos ejemplos de virus informáticos muy conocidos son:</p>
                                <ul class="u-text u-text-6">
                                    <li> Morris Worm</li>
                                    <li>Nimda</li>
                                    <li>ILOVEYOU</li>
                                    <li>SQL Slammer</li>
                                    <li>Stuxnet</li>
                                    <li>CryptoLocker</li>
                                    <li>Conficker</li>
                                    <li>Tinba</li>
                                    <li>Welchia</li>
                                    <li>Shlayer</li>
                                </ul>
                            </div>
                        </div>
                        <div class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-3" id="tab-cea1" role="tabpanel" aria-labelledby="link-tab-cea1">
                            <div class="u-container-layout u-container-layout-3">
                                <h1 class="u-text u-text-default u-text-7"> En caso de que su PC esté conectada a una Red</h1>
                                <p class="u-heading-font u-text u-text-default u-text-8"> Cuando las computadoras se encuentran conectadas a una Red, el virus se puede propagar a través de ella y dañar las otras PC, incluyendo el servidor, por tal motivo se deben extremar las medidas en este sentido. Solo el administrador de la Red tendrá los privilegios para descargar, instalar y ejecutar cualquier programa en su computadora.<br>En caso de que se trabaje en red o en modo multiusuario, el administrador hará un respaldo diario de la información útil del disco. Por ningún motivo deben usarse los servidores de red como estaciones de trabajo.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="u-border-2 u-border-grey-75 u-clearfix u-image u-section-5" id="sec-e409" data-image-width="1280" data-image-height="853">
            <div class="u-clearfix u-sheet u-sheet-1">
                <h1 class="u-text u-text-body-alt-color u-text-default u-text-1">Las 3 soluciones antivirus</h1>
                <div class="u-expanded-width u-list u-list-1">
                    <div class="u-repeater u-repeater-1">
                        <div class="u-align-center u-container-style u-custom-item u-list-item u-palette-1-light-3 u-preserve-proportions u-radius-15 u-repeater-item u-shape-round" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
                            <div class="u-container-layout u-similar-container u-container-layout-1">
                                <p class="u-custom-item u-heading-font u-text u-text-2">Eleccion N#2 para 2022</p>
                                <div class="u-border-1 u-border-palette-1-base u-expanded-width u-line u-line-horizontal u-line-1"></div>
                                <h1 class="u-custom-item u-text u-text-3">Bitdefender<br><span class="u-file-icon u-icon u-icon-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span>&nbsp; <span class="u-file-icon u-icon u-icon-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span><span class="u-file-icon u-icon u-icon-3" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span><span class="u-file-icon u-icon u-icon-4" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span><span class="u-file-icon u-icon u-icon-5" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span> &nbsp;<br>
                                </h1>
                                <p class="u-custom-item u-heading-font u-text u-text-4">Instalacion rapida y facil</p>
                                <div class="u-border-1 u-border-palette-1-base u-line u-line-horizontal u-line-2"></div>
                                <p class="u-custom-item u-heading-font u-text u-text-5">Protege a dispositivos Windows, Mac y&nbsp;<br>Android
                                </p>
                                <div class="u-border-1 u-border-palette-1-base u-line u-line-horizontal u-line-3"></div>
                                <p class="u-custom-item u-heading-font u-text u-text-6">-</p>
                                <a href="https://www.bitdefender.com/media/html/consumer/new/2020/cl-offer-opt/?pid=60off&amp;cid=aff|c|ir" class="u-btn u-btn-round u-button-style u-custom-item u-hover-palette-2-base u-palette-1-base u-radius-50 u-btn-1" target="_blank"> Compra Bitdefender &gt;</a>
                            </div>
                        </div>
                        <div class="u-align-center u-container-style u-custom-item u-list-item u-palette-1-light-3 u-preserve-proportions u-radius-15 u-repeater-item u-shape-round" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
                            <div class="u-container-layout u-similar-container u-container-layout-2">
                                <p class="u-custom-item u-heading-font u-text u-text-7">Eleccion N#1 para 2022</p>
                                <div class="u-border-1 u-border-palette-1-base u-expanded-width u-line u-line-horizontal u-line-4"></div>
                                <h1 class="u-custom-item u-text u-text-8">McAfee<br><span class="u-file-icon u-icon u-icon-6" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span>&nbsp; <span class="u-file-icon u-icon u-icon-7" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span><span class="u-file-icon u-icon u-icon-8" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span><span class="u-file-icon u-icon u-icon-9" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span><span class="u-file-icon u-icon u-icon-10" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span> &nbsp;<br>
                                </h1>
                                <p class="u-custom-item u-heading-font u-text u-text-9">Incluye gestor de contraseña</p>
                                <div class="u-border-1 u-border-palette-1-base u-line u-line-horizontal u-line-5"></div>
                                <p class="u-custom-item u-heading-font u-text u-text-10">Elimina permanentemente archivos<br>digitales delicados
                                </p>
                                <div class="u-border-1 u-border-palette-1-base u-line u-line-horizontal u-line-6"></div>
                                <p class="u-custom-item u-heading-font u-text u-text-11">Protege hasta 10 dispositivos<br>
                                </p>
                                <a href="https://www.mcafee.com/consumer/es-co/landing-page/direct/aff/mtp-family/desktop/mcafee-total-protection.jsp?affid=1494&amp;pkg_id=535&amp;culture=es-co&amp;SID=cdvdjiqtow.4&amp;cjevent=4019ea3a509111ed808aee620a82b838&amp;csrc=cj&amp;csrcl2=Webselenese+Ltd&amp;ccoe=direct&amp;ccoel2=am&amp;CID=242013&amp;PID=8950379&amp;cctype=desktop&amp;ccstype=partnerlinks_4019ea3a509111ed808aee620a82b838&amp;prgt=a" class="u-btn u-btn-round u-button-style u-custom-item u-hover-palette-2-base u-palette-1-base u-radius-50 u-btn-2" target="_blank"> Compra McAfee &gt;</a>
                            </div>
                        </div>
                        <div class="u-align-center u-container-style u-custom-item u-list-item u-palette-1-light-3 u-preserve-proportions u-radius-15 u-repeater-item u-shape-round" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
                            <div class="u-container-layout u-similar-container u-container-layout-3">
                                <p class="u-custom-item u-heading-font u-text u-text-12">Eleccion N#3 para 2022</p>
                                <div class="u-border-1 u-border-palette-1-base u-expanded-width u-line u-line-horizontal u-line-7"></div>
                                <h1 class="u-custom-item u-text u-text-13">Panda<br><span class="u-file-icon u-icon u-icon-11" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span>&nbsp; <span class="u-file-icon u-icon u-icon-12" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span><span class="u-file-icon u-icon u-icon-13" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span><span class="u-file-icon u-icon u-icon-14" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span><span class="u-file-icon u-icon u-icon-15" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="../images/1828884.png" alt=""></span> &nbsp;<br>
                                </h1>
                                <p class="u-custom-item u-heading-font u-text u-text-14">Instalacion rapida y facil</p>
                                <div class="u-border-1 u-border-palette-1-base u-line u-line-horizontal u-line-8"></div>
                                <p class="u-custom-item u-heading-font u-text u-text-15">Analiza dispositivos externos y USB</p>
                                <div class="u-border-1 u-border-palette-1-base u-line u-line-horizontal u-line-9"></div>
                                <p class="u-custom-item u-heading-font u-text u-text-16">-</p>
                                <a href="https://www.pandasecurity.com/security-promotion/?reg=CO&amp;lang=es&amp;campaign=dome2001&amp;option=yearly&amp;autobilling=no&amp;track=190739&amp;selector=1&amp;coupon=50OFFMULTIP&amp;utm_medium=affiliate&amp;utm_source=PAP&amp;utm_campaign=webseleneseES&amp;a_affid=safedet&amp;a_bnid=2ce086f2&amp;data1=cdvdjiqtow.8&amp;data2=eyJwaWQiOiI0fHBfTDlIOTRLSEc2NE9NOSIsImNpZCI6IjR8cF9MOUg5NEtIRzY0T005fDV8MjA2IiwicyI6NH0" class="u-btn u-btn-round u-button-style u-custom-item u-hover-palette-2-base u-palette-1-base u-radius-50 u-btn-3" target="_blank"> Compra Panda &gt;</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <footer class="u-align-center u-black u-clearfix u-footer u-footer" id="sec-f1c2"><div class="u-clearfix u-sheet u-sheet-1">
                <img class="u-image u-image-circle u-image-1" src="../images/images.png" alt="" data-image-width="299" data-image-height="168">
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
                <%
                    Gson gson = new Gson();
                    User currentUser = (User) request.getSession().getAttribute("userObject");
                    ServisAntivirusDAO servisDao = new ServisAntivirusDAOimpl();
                    ResponseDTO stat = gson.fromJson(servisDao.insertStat(
                            new StatsDTO(
                                    currentUser.getId(),
                                    "prevention",
                                    (String) request.getSession().getAttribute("date")
                            )
                    ), ResponseDTO.class);
                %>
        <script>
    console.log('Estadística registrada: ' +<%=stat.getStatus()%>);
        </script>
    </body></html>
