<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PerfildelProfe.aspx.cs" Inherits="ConoceaTuProfe.PerfildelProfe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" /> 
    <link href="css/estilos.css" rel="stylesheet" />
<link href="PagMaTo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:1000px; background-color:#112d4e " class="container-fluid row;">
      <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
          <ItemTemplate>
              
              <div class="col-md-3 col-xs-12"></div>
              <div style="text-align: center; background-color:#dbe2ef" class="col-md-6 col-xs-12">
                  <br />
                  <div style="padding:20px; background-color:#3f72af; border-radius: 20px;">
                     
                      <h3 style=" color:#fff; font-family:fantasy; font-size: 35px;"><%#Eval("Nombre") %></h3>
                      

                  </div>
                   <br />
                  <br />
                  <img class="img-thumbnail" style="width: 250px; border-radius:10%; height:100% ; display:block; margin:auto; text-align:justify;" src="<%#Eval("Foto") %>"/>
                  <br />
                  <br />
              </div>
              <div class="col-md-3 col-xs-12"></div>
              
              <div style="padding:20px; background-color:#3f72af;" class="col-md-offset-3 col-md-6 col-xs-12" ><p style="color:#fff; font-family:'Times New Roman', Times, serif; font-size:20px;"><%#Eval("Especializacion") %></p><br /><br /></div>
              <div class="col-md-3 col-xs-12"></div>
                    
              
                    
                   
                     
              </ItemTemplate>
         
      </asp:Repeater>      
    
    </div>


    <asp:SqlDataSource runat="server" ID="sdsProfe"></asp:SqlDataSource>
    <div class="container" style=" width:1000px; background-color:#112d4e ">
        <fieldset style="border-radius:20px; border: 1px solid #30e3ca; background-color:#e4f9f5; margin-top:5%;">
            <asp:FormView ID="FormView1" DefaultMode="Insert" runat="server" DataKeyNames="IdComentario" DataSourceID="sdscomentarios">

        
                <InsertItemTemplate>
                    <div style="padding:30px;" >
                    <h3>Comentarios:</h3><br />
                    <asp:TextBox  TextMode="MultiLine" Rows="3" Columns="120" Text='<%# Bind("Comentario") %>' runat="server" ID="ComentarioTextBox" /><br />
            
                    <asp:Button CssClass="btn-primary col-md-ofset-10" runat="server" Text="Guardar Comentario" CommandName="Insert" ID="InsertButton" CausesValidation="True" />
                    </div>
                </InsertItemTemplate>

        
            </asp:FormView>
        </fieldset>
    <asp:SqlDataSource runat="server" ID="sdscomentarios" ConnectionString='<%$ ConnectionStrings:ConoceATuProfeConnectionString %>' DeleteCommand="DELETE FROM [Comentarios] WHERE [IdComentario] = @original_IdComentario AND (([Comentario] = @original_Comentario) OR ([Comentario] IS NULL AND @original_Comentario IS NULL)) AND (([Fecha] = @original_Fecha) OR ([Fecha] IS NULL AND @original_Fecha IS NULL)) AND (([IdProfesor] = @original_IdProfesor) OR ([IdProfesor] IS NULL AND @original_IdProfesor IS NULL)) AND (([IdCurso] = @original_IdCurso) OR ([IdCurso] IS NULL AND @original_IdCurso IS NULL)) AND (([IdAlumno] = @original_IdAlumno) OR ([IdAlumno] IS NULL AND @original_IdAlumno IS NULL))" InsertCommand="INSERT INTO [Comentarios] ([IdComentario], [Comentario], [Fecha], [IdProfesor], [IdCurso], [IdAlumno]) VALUES (@IdComentario, @Comentario, @Fecha, @IdProfesor, @IdCurso, @IdAlumno)" SelectCommand="SELECT * FROM [Comentarios] WHERE ([IdProfesor] = @IdProfesor) ORDER BY [Fecha] DESC" UpdateCommand="UPDATE [Comentarios] SET [Comentario] = @Comentario, [Fecha] = @Fecha, [IdProfesor] = @IdProfesor, [IdCurso] = @IdCurso, [IdAlumno] = @IdAlumno WHERE [IdComentario] = @original_IdComentario AND (([Comentario] = @original_Comentario) OR ([Comentario] IS NULL AND @original_Comentario IS NULL)) AND (([Fecha] = @original_Fecha) OR ([Fecha] IS NULL AND @original_Fecha IS NULL)) AND (([IdProfesor] = @original_IdProfesor) OR ([IdProfesor] IS NULL AND @original_IdProfesor IS NULL)) AND (([IdCurso] = @original_IdCurso) OR ([IdCurso] IS NULL AND @original_IdCurso IS NULL)) AND (([IdAlumno] = @original_IdAlumno) OR ([IdAlumno] IS NULL AND @original_IdAlumno IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_IdComentario" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Comentario" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Fecha" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="original_IdProfesor" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_IdCurso" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_IdAlumno" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IdComentario" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Comentario" Type="String"></asp:Parameter>
            <asp:Parameter Name="Fecha" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="IdProfesor" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="IdCurso" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="IdAlumno" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nid" Name="IdProfesor" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Comentario" Type="String"></asp:Parameter>
            <asp:Parameter Name="Fecha" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="IdProfesor" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="IdCurso" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="IdAlumno" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_IdComentario" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Comentario" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Fecha" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="original_IdProfesor" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_IdCurso" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_IdAlumno" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <div class="row">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="sdsCommends">
            <ItemTemplate>
                <fieldset style="border-radius:20px; border: 1px solid #30e3ca; background-color:#e4f9f5; margin:2% 3%;">
                <div class="col-md-2" style="padding-top:30px;">
                  <img src="<%#Eval("Foto") %>" alt="" style="width:100px; height:80px;"></div>
                    <!-- Contenedor del Comentario -->
                  <div class="col-md-10" style="padding:10px;"> 
                            <h4 class="comment-name" style="font-weight:bold; font-size:25px;"><%#Eval("Alias") %></h4>
                            <p style="font-weight:bold;"><%#Eval("Fecha") %></p>
                            <p style="font-size:20px; font-family:'Comic Sans MS';"> <%#Eval("Comentario") %></p>

                  </div> 
                           
                            
                </fieldset>
             </ItemTemplate>

        </asp:Repeater>
    </div>
    </div>
    <asp:SqlDataSource runat="server" ID="sdsCommends" ConnectionString='<%$ ConnectionStrings:ConoceATuProfeConnectionString %>' SelectCommand="select c.Comentario,c.Fecha,a.Alias,a.Foto from Comentarios c inner join 
 Alumno a on a.IdAlumno=c.IdAlumno  WHERE (c.IdProfesor = @idpro)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nid" Name="idpro"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConoceATuProfeConnectionString %>' SelectCommand="SELECT * FROM [Profesor] WHERE ([IdProfesor] = @IdProfesor)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nid" Name="IdProfesor" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
