<%@page import="dto.ResponseDTO"%>
<%@page import="dto.StatsDTO"%>
<%@page import="dto.User"%>
<%@page import="dao.ServisAntivirusDAO"%>
<%@page import="dao.impl.ServisAntivirusDAOimpl"%>
<%@page import="com.google.gson.Gson"%>
<%
    if(request.getSession().getAttribute("userObject")==null)
        response.sendRedirect("Iniciar.jsp");
%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="es"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Making Your Business Ideas Come True, Welcome Message, The Future That YouWill See Soon, 92, 37, ​Our Achievements, ​Our Pricing, ​Solo, ​Team, ​​Preparing For Your Success,We Provide Truly Prominent IT Solutions., How Do We Help Companies To Transform?, ​Get in tou​ch!">
    <meta name="description" content="">
    <title>Seguridad</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Seguridad.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.0.7, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
    
    
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Site1",
		"logo": "./images/LogotipoTiendaDeModaMinimalistaBlancoyNegro.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Seguridad">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-white u-xl-mode" data-lang="es"><header class="u-black u-clearfix u-header" id="sec-888d" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-menu u-menu-one-level u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#" style="padding: 7px 0px; font-size: calc(1em + 22px);" data-lang-en="{&quot;content&quot;:&quot;<svg class=\&quot;u-svg-link\&quot; viewBox=\&quot;0 0 24 24\&quot;><use xmlns:xlink=\&quot;http://www.w3.org/1999/xlink\&quot; xlink:href=\&quot;#menu-hamburger\&quot;></use></svg><svg class=\&quot;u-svg-content\&quot; version=\&quot;1.1\&quot; id=\&quot;menu-hamburger\&quot; viewBox=\&quot;0 0 16 16\&quot; x=\&quot;0px\&quot; y=\&quot;0px\&quot; xmlns:xlink=\&quot;http://www.w3.org/1999/xlink\&quot; xmlns=\&quot;http://www.w3.org/2000/svg\&quot;>    <g>        <rect y=\&quot;1\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect y=\&quot;7\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect y=\&quot;13\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>    </g></svg>&quot;,&quot;href&quot;:&quot;#&quot;}">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/Servis-Antivirus.jsp" data-lang-en="{&quot;content&quot;:&quot;Servis Antivirus&quot;,&quot;href&quot;:&quot;Servis-Antivirus.jsp&quot;}" style="padding: 10px 20px;">Servis Antivirus</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/Registrarse.jsp#sec-ef02" data-lang-en="{&quot;content&quot;:&quot;Contacto&quot;,&quot;href&quot;:&quot;Contacto.jsp&quot;}" style="padding: 10px 20px;">Registrarse</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/Informacion.jsp#sec-88c9" style="padding: 10px 20px;">Informacion</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/Seguridad.jsp#sec-13dc" data-lang-en="{&quot;content&quot;:&quot;Seguridad&quot;,&quot;href&quot;:&quot;#&quot;}" style="padding: 10px 20px;">Seguridad</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/Prevencion.jsp#sec-dc8f" style="padding: 10px 20px;">Prevencion</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/Servis-Antivirus.jsp" data-lang-en="{&quot;content&quot;:&quot;Servis Antivirus&quot;,&quot;href&quot;:&quot;Servis-Antivirus.jsp&quot;}">Servis Antivirus</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/Registrarse.jsp#sec-ef02" data-lang-en="{&quot;content&quot;:&quot;Contacto&quot;,&quot;href&quot;:&quot;Contacto.jsp&quot;}">Registrarse</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/Informacion.jsp#sec-88c9">Informacion</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/Seguridad.jsp#sec-13dc" data-lang-en="{&quot;content&quot;:&quot;Seguridad&quot;,&quot;href&quot;:&quot;#&quot;}">Seguridad</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/Prevencion.jsp#sec-dc8f">Prevencion</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <a href="/Servis-Antivirus.jsp" class="u-image u-logo u-image-1" data-image-width="500" data-image-height="500" title="Servis Antivirus">
          <img src="./images/LogotipoTiendaDeModaMinimalistaBlancoyNegro.png" class="u-logo-image u-logo-image-1">
        </a>
      </div></header>
    <section class="u-clearfix u-image u-section-1" id="sec-13dc" data-image-width="1024" data-image-height="686">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-container-style u-grey-10 u-group u-group-1">
          <div class="u-container-layout u-valign-top u-container-layout-1">
            <p class="u-align-center u-text u-text-default u-text-1">Se<span style="font-weight: 700;"></span>guridad
            </p>
            <h4 class="u-align-center u-text u-text-2">Podemos implementar la seguridad enriqueciendo nuestros conocimients en base a la informacion que vamos adquiriendo en nuestros caminos en el internet<br>
              <br>Mas que nadie, nosotros somos los encargados de ññevar nuestra propia seguridad en este universo que encontramos navegando por el internet, por este motivo los invitamos a seguir leyendo tan importante informacion
            </h4>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-grey-10 u-section-2" id="sec-9da7">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="fr-view u-align-center u-clearfix u-rich-text u-text u-text-1" data-animation-name="" data-animation-duration="0" data-animation-direction="">
          <h1 style="text-align: center;">¿Que son los antivirus?</h1>
          <p style="text-align: center;">
            <span style="font-size: 1.125rem;">Un antivirus es un tipo de software que se utiliza para evitar, buscar, detectar y eliminar virus de una computadora. Una vez instalados, la mayoría de los software antivirus se ejecutan automáticamente en segundo plano para brindar protección en tiempo real contra ataques de virus.&nbsp;</span>
            <span style="line-height: 2.0;">
              <img src="./images/antivirus1.jpg" align="center" style="width: 379px;" class="fr-dib fr-fic" width="570">Con el paso del tiempo los sistemas operativos e internet han evolucionando, lo que ha hecho que los antivirus se actualicen constantemente, convirtiéndose en programas &nbsp;avanzados que no sólo detectan los virus, sino que los bloquean, desinfectan archivos y previenen infecciones de los mismos. Actualmente, los antivirus reconocen diferentes tipos de virus como malware, spyware, gusanos, troyanos, rootkits, etc. &nbsp;
            </span>
          </p>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-image u-section-3" id="carousel_4006" data-image-width="1500" data-image-height="1001">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-align-center u-black u-container-style u-layout-cell u-size-13 u-layout-cell-1">
                <div class="u-container-layout u-valign-middle-xs u-container-layout-1">
                  <img class="u-image u-image-circle u-preserve-proportions u-image-1" src="./images/LogotipoTiendaDeModaMinimalistaBlancoyNegro.png" alt="" data-image-width="500" data-image-height="500">
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-47 u-white u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <h2 class="u-custom-font u-font-montserrat u-text u-text-1" data-lang-en="​​Preparing For Your Success,<br>We Provide Truly Prominent IT Solutions.">Tipos de antivirus</h2>
                  <p class="u-text u-text-2" data-lang-en="​Podcasting operational change management inside of workflows to establish a framework. Taking seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on cross-platform integration.&amp;nbsp;Objectively innovate empowered manufactured products whereas parallel platforms. Holisticly predominate extensible testing procedures for reliable supply chains. Dramatically engage top-line web services vis-a-vis cutting-edge deliverables. Image from <a href=&quot;https://www.freepik.com&quot; class=&quot;u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-image-1&quot; style=&quot;background-image: none; padding-top: 0; padding-bottom: 0; padding-left: 0; padding-right: 0&quot;>Freepik</a>"> Hoy en día nadie duda de la importancia de contar con un antivirus fiable y actualizado que proteja a tu ordenador de posibles ataques, pero dependiendo de qué&nbsp;tipo de antivirus&nbsp;tengas instalado en tu equipo, tendrás una mejor o peor seguridad.<br>
                    <br>En este artículo vas a comprobar que existen muchos&nbsp;tipos de antivirus&nbsp;y para mostrártelos, vamos a clasificarlos según diferentes criterios como son: su finalidad, según si están creados para cumplir con un objetivo específico, según cómo se ejecutan y según su marca.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-left u-clearfix u-section-4" id="sec-148a">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="fr-view u-clearfix u-rich-text u-text u-text-1">
          <p style="text-align: center;">
            <span style="font-weight: 700; font-size: 2.25rem;">TIPOS DE ANTIVIRUS</span>
          </p>
          <p id="isPasted">
            <span style="font-weight: 700;">ANTIVIRUS PREVENTORES:</span> como su nombre lo indica, este tipo de antivirus se caracteriza por anticiparse a la infección, previniéndola. De esta manera, permanecen en la memoria de la computadora, monitoreando ciertas acciones y funciones del sistema.
          </p>
          <p>
            <span style="font-weight: 700;">ANTIVIRUS IDENTIFICADORES:</span> esta clase de antivirus tiene la función de identificar determinados programas infecciosos que afectan al sistema. Los virus identificadores también rastrean secuencias de bytes de códigos específicos vinculados con dichos virus.
          </p>
          <p>
            <span style="font-weight: 700;">ANTIVIRUS DESCONTAMINADORES:</span> comparte una serie de características con los identificadores. Sin embargo, su principal diferencia radica en el hecho de que el propósito de esta clase de antivirus es descontaminar un sistema que fue infectado, a través de la eliminación de programas malignos. El objetivo es retornar dicho sistema al estado en que se encontraba antes de ser atacado. Es por ello que debe contar con una &nbsp;exactitud en la detección de los programas malignos.&nbsp;
          </p>
          <p>Otra manera de clasificar a los antivirus es la que se detalla a continuación:</p>
          <p>
            <span style="font-weight: 700;">CORTAFUEGOS O FIREWALL:</span> estos programas tienen la función de bloquear el acceso a un determinado sistema, actuando como muro defensivo. Tienen bajo su control el tráfico de entrada y salida de una computadora, impidiendo la ejecución de toda actividad dudosa.
          </p>
          <p>
            <span style="font-weight: 700;">ANTIESPÍAS O ANTISPYWARE:</span> esta clase de antivrus tiene el objetivo de descubrir y descartar aquellos programas espías que se ubican en la computadora de manera oculta.
          </p>
          <p>
            <span style="font-weight: 700;">ANTIPOP-UPS:</span> tiene como finalidad impedir que se ejecuten las ventanas pop-ups o emergentes, es decir a aquellas ventanas que surgen repentinamente sin que el usuario lo haya decidido, mientras navega por Internet.
          </p>
          <p>
            <span style="font-weight: 700;">ANTISPAM:</span> se denomina spam a los mensajes basura, no deseados o que son enviados desde una dirección desconocida por el usuario. Los antispam tienen el objetivo de detectar esta clase de mensajes y eliminarlos de forma automática.
          </p>
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
<%
Gson gson=new Gson();
ServisAntivirusDAO servisDao=new ServisAntivirusDAOimpl();
User currentUser=(User) request.getSession().getAttribute("userObject");
ResponseDTO stat=gson.fromJson(servisDao.insertStat(
    new StatsDTO(
        currentUser.getId(),
        "security",
        (String) request.getSession().getAttribute("date")
    )
),ResponseDTO.class);
%>
<script>
    console.log('Estadística registrada: '+<%=stat.getStatus()%>);
</script>
</body></html>
