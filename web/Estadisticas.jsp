<%@page import="dto.ModulesDTO"%>
<%@page import="dao.ServisAntivirusDAO" %>
<%@page import="dao.impl.ServisAntivirusDAOimpl" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%
    ServisAntivirusDAO servisDao = new ServisAntivirusDAOimpl();
    String[] modulesV = {"security", "prevention", "information"};
    ModulesDTO[] modulesCount = new ModulesDTO[3];
%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="es">

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="keywords"
              content="Servis Antivirus, Nuestro ChatBot, Designed for humans, Conectivity, Lorem ipsum dolor sit amet, cotur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam., See our awesome gallery, It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.">
        <meta name="description" content="">
        <title>Servis Antivirus</title>
        <link rel="stylesheet" href="nicepage.css" media="screen">
        <link rel="stylesheet" href="Servis-Antivirus.css" media="screen">
        <link rel="stylesheet" href="Estadisticas.css" media="screen">
        <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
        <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
        <meta name="generator" content="Nicepage 5.0.7, nicepage.com">
        <meta name="referrer" content="origin">
        <script src="//code.tidio.co/nmtako4yr0lwnqptkbxh2igrmoz428tg.js" async="async"></script>
        <link id="u-theme-google-font" rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
        <link id="u-page-google-font" rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700,700i,900,900i">

        <script type="application/ld+json">{
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "Site1",
            "logo": "/images/LogotipoTiendaDeModaMinimalistaBlancoyNegro.png"
            }</script>
        <meta name="theme-color" content="#478ac9">
        <meta property="og:title" content="Servis Antivirus">
        <meta property="og:description" content="">
        <meta property="og:type" content="website">
    </head>

    <body data-home-page="Servis-Antivirus.html" data-home-page-title="Servis Antivirus" class="u-body u-xl-mode"
          data-lang="es">
        <header class="u-black u-clearfix u-header" id="sec-888d" data-animation-name="" data-animation-duration="0"
                data-animation-delay="0" data-animation-direction="">
            <div class="u-clearfix u-sheet u-sheet-1">
                <nav class="u-menu u-menu-one-level u-offcanvas u-menu-1">
                    <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
                        <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                           href="#" style="padding: 7px 0px; font-size: calc(1em + 22px);"
                           data-lang-en="{&quot;content&quot;:&quot;<svg class=\&quot;u-svg-link\&quot; viewBox=\&quot;0 0 24 24\&quot;><use xmlns:xlink=\&quot;http://www.w3.org/1999/xlink\&quot; xlink:href=\&quot;#menu-hamburger\&quot;></use></svg><svg class=\&quot;u-svg-content\&quot; version=\&quot;1.1\&quot; id=\&quot;menu-hamburger\&quot; viewBox=\&quot;0 0 16 16\&quot; x=\&quot;0px\&quot; y=\&quot;0px\&quot; xmlns:xlink=\&quot;http://www.w3.org/1999/xlink\&quot; xmlns=\&quot;http://www.w3.org/2000/svg\&quot;>    <g>        <rect y=\&quot;1\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect y=\&quot;7\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect y=\&quot;13\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>    </g></svg>&quot;,&quot;href&quot;:&quot;#&quot;}">
                            <svg class="u-svg-link" viewBox="0 0 24 24">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use>
                            </svg>
                            <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px"
                                 xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg">
                            <g>
                            <rect y="1" width="16" height="2"></rect>
                            <rect y="7" width="16" height="2"></rect>
                            <rect y="13" width="16" height="2"></rect>
                            </g>
                            </svg>
                        </a>
                    </div>
                    <div class="u-custom-menu u-nav-container">
                        <ul class="u-nav u-unstyled u-nav-1">
                            <li class="u-nav-item"><a
                                    class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                                    href="/Servis-Antivirus.html"
                                    data-lang-en="{&quot;content&quot;:&quot;Servis Antivirus&quot;,&quot;href&quot;:&quot;Servis-Antivirus.html&quot;}"
                                    style="padding: 10px 20px;">Servis Antivirus</a>
                            </li>
                            <li class="u-nav-item"><a
                                    class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                                    href="/Registrarse.html#sec-ef02"
                                    data-lang-en="{&quot;content&quot;:&quot;Contacto&quot;,&quot;href&quot;:&quot;Contacto.html&quot;}"
                                    style="padding: 10px 20px;">Registrarse</a>
                            </li>
                            <li class="u-nav-item"><a
                                    class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                                    href="/Informacion.html#sec-88c9" style="padding: 10px 20px;">Informacion</a>
                            </li>
                            <li class="u-nav-item"><a
                                    class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                                    href="/Seguridad.html#sec-13dc"
                                    data-lang-en="{&quot;content&quot;:&quot;Seguridad&quot;,&quot;href&quot;:&quot;#&quot;}"
                                    style="padding: 10px 20px;">Seguridad</a>
                            </li>
                            <li class="u-nav-item"><a
                                    class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                                    href="/Prevencion.html#sec-dc8f" style="padding: 10px 20px;">Prevencion</a>
                            </li>
                        </ul>
                    </div>
                    <div class="u-custom-menu u-nav-container-collapse">
                        <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                            <div class="u-inner-container-layout u-sidenav-overflow">
                                <div class="u-menu-close"></div>
                                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="/Servis-Antivirus.html"
                                                              data-lang-en="{&quot;content&quot;:&quot;Servis Antivirus&quot;,&quot;href&quot;:&quot;Servis-Antivirus.html&quot;}">Servis
                                            Antivirus</a>
                                    </li>
                                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="/Registrarse.html#sec-ef02"
                                                              data-lang-en="{&quot;content&quot;:&quot;Contacto&quot;,&quot;href&quot;:&quot;Contacto.html&quot;}">Registrarse</a>
                                    </li>
                                    <li class="u-nav-item"><a class="u-button-style u-nav-link"
                                                              href="/Informacion.html#sec-88c9">Informacion</a>
                                    </li>
                                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="/Seguridad.html#sec-13dc"
                                                              data-lang-en="{&quot;content&quot;:&quot;Seguridad&quot;,&quot;href&quot;:&quot;#&quot;}">Seguridad</a>
                                    </li>
                                    <li class="u-nav-item"><a class="u-button-style u-nav-link"
                                                              href="/Prevencion.html#sec-dc8f">Prevencion</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
                    </div>
                </nav>
                <a href="/Servis-Antivirus.html" class="u-image u-logo u-image-1" data-image-width="500" data-image-height="500" title="Servis Antivirus"><img src="/images/LogotipoTiendaDeModaMinimalistaBlancoyNegro.png" class="u-logo-image u-logo-image-1">
                </a></div>
        </header>
        <div id="coprse">
            <div id="stadisticsBody">
                <h1>Estadísticas de usabilidad</h1>
                <h3>Por módulo</h3>
                <table id="stadistics">
                    <%
                        try{
                            int month = Integer.valueOf(new SimpleDateFormat("MM").format(Calendar.getInstance().getTime()));
                            for (int i = 0; i < modulesV.length; i++) {
                                modulesCount[i] = servisDao.getStatsByModule(
                                        modulesV[i], month
                                );
                            }

                            for (int i = 0; i < modulesCount.length; i++) {
                    %>
                            <tr>
                                <td class="countingSpace moduleName"><%=modulesCount[i].getModuleName()%></td>
                            <%for(int j=0;j<modulesCount[i].getCount();j++){%> 
                                <td class="countingSpace <%=modulesCount[i].getModuleName()%>"></td>
                            <%}%>
                            </tr>

                    <%}
                        }catch(Exception e){
                            System.out.println("[+] Error al imprimir estadísticas");
                            e.printStackTrace();
                        }%>
                        <%
                            int[] counted={modulesCount[0].getCount(),modulesCount[1].getCount(),modulesCount[2].getCount()};
                            int index=counted[0];
                            for(int i=0;i<3;i++){
                                int currentNum=counted[i];
                                if(currentNum>index)
                                    index=currentNum;
                            }
                        %>
                        <tr>
                            <td>Usuarios</td>
                            <%for(int i=1;i<index;i++){%>
                                <td><%=i%></td>
                            <%}%>
                        </tr>
                </table>
            </div>
        </div>
    </body>
</html>
