<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TablaControlProfe.aspx.cs" Inherits="ConoceaTuProfe.Admin.TablaControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" PageSize="5" DataKeyNames="IdProfesor" DataSourceID="sdsProfesoresControl" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AllowPaging="True">
            <AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                <asp:BoundField DataField="Especializacion" HeaderText="Especializacion" SortExpression="Especializacion"></asp:BoundField>
                <asp:BoundField DataField="Foto" HeaderText="Foto" SortExpression="Foto"></asp:BoundField>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
                <asp:BoundField DataField="IdProfesor" HeaderText="IdProfesor" ReadOnly="True" SortExpression="IdProfesor"></asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

            <RowStyle BackColor="#EEEEEE" ForeColor="Black"></RowStyle>

            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#0000A9"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#000065"></SortedDescendingHeaderStyle>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="sdsProfesoresControl" ConnectionString='<%$ ConnectionStrings:ConoceATuProfeConnectionString %>' SelectCommand="SELECT [Especializacion], [Foto], [Nombre], [IdProfesor] FROM [Profesor]" DeleteCommand="DELETE FROM [Profesor] WHERE [IdProfesor] = @IdProfesor" InsertCommand="INSERT INTO [Profesor] ([Especializacion], [Foto], [Nombre], [IdProfesor]) VALUES (@Especializacion, @Foto, @Nombre, @IdProfesor)" UpdateCommand="UPDATE [Profesor] SET [Especializacion] = @Especializacion, [Foto] = @Foto, [Nombre] = @Nombre WHERE [IdProfesor] = @IdProfesor">
            <DeleteParameters>
                <asp:Parameter Name="IdProfesor" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Especializacion" Type="String"></asp:Parameter>
                <asp:Parameter Name="Foto" Type="String"></asp:Parameter>
                <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
                <asp:Parameter Name="IdProfesor" Type="Int32"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Especializacion" Type="String"></asp:Parameter>
                <asp:Parameter Name="Foto" Type="String"></asp:Parameter>
                <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
                <asp:Parameter Name="IdProfesor" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
