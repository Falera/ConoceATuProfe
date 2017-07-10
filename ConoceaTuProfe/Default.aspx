<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConoceaTuProfe.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    

    
    <title>ConoceATuProfe</title>
    <link rel="icon" href="images/Cusil.ico"	type="image/x-icon"/>
    <link rel="stylesheet" href="css/grid.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/rd-mailform.css"/>

    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>
</head>
<body>
      <form id="form1" runat="server">
        <div>
                <div class="page">
        <!--==============================HEADER==============================-->
        <header>
            <section class="parallax parallax01">
                <div class="top-panel">
                    <div class="container">
                        <div class="brand">
                            <h1 class="brand_name"><a href="./splashtype.html"><img src="images/logo-usil.png"/></a></h1>
							
                            <p class="brand_slogan">CONOCEATUPROFE</p>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <h2>ConoceATuProfe</h2>
                    <p style="font-size:30px">UNIVERSIDAD SAN IGNACIO DE LOYOLA</p>
                    <div class="row">
                        <div class="preffix_4 grid_4">


                            <!-- RD Mailform -->
                            <div class='rd-mailform'">
                                <!-- RD Mailform Type -->
                                <input type="hidden" name="form-type" value="contact" />
                                <!-- END RD Mailform Type -->
                                <fieldset>
                                    <label class="data-add-placeholder">
                                    <asp:TextBox ID="txtUsuario" runat="server" placeholder="nombre.apellido"></asp:TextBox>
                                    </label>


                                    <label class="data-add-placeholder">
                                     
                                       <asp:TextBox ID="txtContra" runat="server" placeholder="contraseña" TextMode="Password"></asp:TextBox>
                                    </label>

                                    <div class="mfControls btn-group">
                                        <asp:Button ID="Button1" runat="server" Text="Ingresar" CssClass="btn btn-info" OnClick="Button1_Click" />
                                    </div>
                                    <div class="mfInfo"></div>
                                </fieldset>
                                <p class="text-center"><small><a href="#" >¿Olvidaste tu clave?</a> </small></p>
                                   <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                            </div>
                            <!-- END RD Mailform -->
                            


                        </div>
                    </div>
                </div>
            </section>
        </header>

        <!--==============================CONTENT==============================-->
        <main>
            <section class="well center">
                <div class="container">

                    <h2>Acerca de ConoceATuProfe</h2>
                    <p>Plataforma donde puedes compartirnos tu experiencia con tus Profesores mediante comentarios o un sistema de puntuación, para aquellos que desconocen la personalidad o la manera de enseñar del "Profe".</p>


                    <div class="row iconed-list">
                        <!--division de 3 -->

                        <div class="grid_4">
                            <div class="icon"><img src="http://icon-icons.com/icons2/37/PNG/512/rate_favoriteapplicationstarratin_calificacion_aplicacionfavorita_2889.png"/></div>
                            <h3>Califica</h3>
                            <p>Tienes la opción de calificar a tu "Profe" mediante un sistema de puntuación "Estrellas de nivel" </p>
                        </div>

                        <div class="grid_4">
                            <div class="icon"><img src="http://grupocoex.co/images/iconos-empresa/blog.png"/></div>
                            <h3>Deja tu Comentario</h3>
                            <p>Entra al perfil del Profesor y Comentanos tu experiencia.</p>
                        </div>

                        <div class="grid_4">
                            <div class="icon"><img src="https://image.flaticon.com/icons/png/512/61/61208.png"/></div>
                            <h3>Conectate a Infosil</h3>
                            <p>Desde esta plataforma tambien tienes la opción de conectarte a tu INFOSIL.</p>
                        </div>

                    </div>


                </div>
            </section>


            <section class="parallax parallax02 shadow">
                <div class="container">
                    <div class="row">
                        <div class="preffix_1 grid_10">
                            <blockquote>
                                <q>Llego la hora! Comparte tu experiencia y califica según tus espectativas.</q>
                                
                                <h5><cite>Conoce a tu "Profe"</cite></h5>
                                
								<p>Sepa con que profesor Matricularte y evita una mala experiencia remplazandola por una "GOOD".</p>
								<div class="img img__circle"><img src="images/5 estrellas.png" alt=""></div>
							</blockquote>
                        </div>
                    </div>
                </div>
            </section>

 	
            <section class="well well__04 bg-3">
                <div class="container">
                    <h2>Garantizar la satisfacción del 100% de los clientes<br> En cada visita</h2>
                    <p>Accede a INFOSIL desde esta plataformaprofesional! :v </p>
                    <a href="https://infosil.usil.edu.pe" target="_blank" class="btn">Ir a Infosil</a>
                </div>
            </section>
        </main>
            
        <!--==============================FOOTER==============================-->
        <footer>
            <div class="container">
                <p>Búscanos en Facebook,Twitter, Instagram, Snapchat :v </p>
                <div class="footer-brand">
                    <div class="footer-brand_name"><a href="#">ConoceATuProfe</a></div>
                    <p class="footer-brand_slogan">USIL</p>
                </div>
                <p class="copyright">
                    © <span id="copyright-year"></span>.ConoceATuProfe USIL-2017 Yudith, Jorge, Marleni, Yahaira, Lider.
                    <!-- {%FOOTER_LINK} -->
                </p>
            </div>


        </footer>
    </div>

    <script src="js/script.js"></script>
    <!-- coded by Falera -->
        </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConoceATuProfeConnectionString %>" SelectCommand="login_usuario" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:ControlParameter ControlID="txtUsuario" Name="usu" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="txtContra" Name="pass" PropertyName="Text" Type="String" />
    </SelectParameters>
          </asp:SqlDataSource>
    </form>
    
</body>
</html>
