<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="ConoceaTuProfe.Administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />

    <h3>BIENVENIDO, ELIGA UNA OPCION A ADMINISTRAR</h3>
    <div class="container row" style="width:800px; text-align:center;">

        
        <a href="Admin/TablaControlAlumnos.aspx"><div class="col-lg-offset-1 col-lg-12 bg-primary"> <h5 style="font-size:20px; font-weight:bold;">ALUMNOS</h5> </div></a>
        <a href="Admin/TablaControlProfe.aspx"><div class="col-lg-offset-1 col-lg-12 bg-success" ><h5 style="font-size:20px; font-weight:bold;">PROFESORES</h5style="font-size:20px;> </div></a>
        <a href="Admin/TablaControlCursos.aspx"><div class="col-lg-12 col-lg-offset-1 bg-warning"> <h5 style="font-size:20px; font-weight:bold;">CURSOS</h5></div></a>
        <div></div>

    </div>
    <br />
    <br />

        
</asp:Content>
