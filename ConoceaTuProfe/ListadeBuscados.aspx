<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListadeBuscados.aspx.cs" Inherits="ConoceaTuProfe.ListadeBuscados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" /> 
    <link href="css/estilos.css" rel="stylesheet" />
    <link href="PagMaTo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:1000px;" class="container cont">
        
        <h2 style="color:#e03e36;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size: 35px;
            text-align: center;
            font-weight: bold;
            text-shadow: 3px 3px #808080;">ENCUENTRA AL PROFE QUE BUSCAS</h2>
            
            <div style="width:1000px; margin: 50px 0;" class="container row ">
             <asp:Repeater  runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                        
                        <div  class="zoom profe col-md-5 col-xs-12">
                            <div class="profelink">
                                <h2 class=""><%#Eval("Nombre") %></h2>
                                <a href="PerfildelProfe.aspx?nid=<%#Eval("IdProfesor")%>">
                                   <img title="<%#Eval("Nombre") %>" class="img-rounded" src="<%#Eval("Foto") %>" />
                                    <div class="overlay">
                                        <div class="text">
                                            <span style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; font-weight:bold;">Conocer más sobre:</span> 
                                            <br />
                                            <span style="color: #283c63;
                                                    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
                                                    font-size: 25px;
                                                    text-shadow: 2px 2px #808080;">
                                                <%#Eval("Nombre") %> 

                                            </span>

                                        </div>
                                    </div>
                                </a>
                                
                                <h3 ><a href="PerfildelProfe.aspx?nid=<%#Eval("IdProfesor")%>">
                                   Conocer más
                                </a>
                                </h3>
                                <br />
                            </div>
                            
                            <div style="min-height:10px; background-color:#122d42;"></div>
                        </div>
                        
                        
                </ItemTemplate>

             </asp:Repeater>
            </div>
        
      
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConoceATuProfeConnectionString %>' SelectCommand="SELECT TOP (8) IdProfesor, Nombre, Foto, Especializacion FROM Profesor"></asp:SqlDataSource>
        
        
    </div>

</asp:Content>
