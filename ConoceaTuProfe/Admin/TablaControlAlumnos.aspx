<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TablaControlAlumnos.aspx.cs" Inherits="ConoceaTuProfe.Admin.TablaControlAlumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdAlumno" DataSourceID="sdsAlumnos" AllowPaging="True" AllowSorting="true" PageSize="5" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="IdAlumno" HeaderText="IdAlumno" ReadOnly="True" SortExpression="IdAlumno"></asp:BoundField>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
                    <asp:BoundField DataField="Alias" HeaderText="Alias" SortExpression="Alias"></asp:BoundField>
                    <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario"></asp:BoundField>
                    <asp:BoundField DataField="Contrase&#241;a" HeaderText="Contrase&#241;a" SortExpression="Contrase&#241;a"></asp:BoundField>
                    <asp:BoundField DataField="Foto" HeaderText="Foto" SortExpression="Foto"></asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#999999"></EditRowStyle>

                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="sdsAlumnos" ConnectionString='<%$ ConnectionStrings:ConoceATuProfeConnectionString %>' SelectCommand="SELECT * FROM [Alumno]" DeleteCommand="DELETE FROM [Alumno] WHERE [IdAlumno] = @IdAlumno" InsertCommand="INSERT INTO [Alumno] ([IdAlumno], [Nombre], [Alias], [Usuario], [Contraseña], [Foto]) VALUES (@IdAlumno, @Nombre, @Alias, @Usuario, @Contraseña, @Foto)" UpdateCommand="UPDATE [Alumno] SET [Nombre] = @Nombre, [Alias] = @Alias, [Usuario] = @Usuario, [Contraseña] = @Contraseña, [Foto] = @Foto WHERE [IdAlumno] = @IdAlumno">
                <DeleteParameters>
                    <asp:Parameter Name="IdAlumno" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="IdAlumno" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Alias" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Usuario" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Contrase&#241;a" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Foto" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Alias" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Usuario" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Contrase&#241;a" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Foto" Type="String"></asp:Parameter>
                    <asp:Parameter Name="IdAlumno" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
