<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TablaControlCursos.aspx.cs" Inherits="ConoceaTuProfe.Admin.TablaControlCursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" PageSize="5" AutoGenerateColumns="False" DataKeyNames="IdCurso,IdProfesor" DataSourceID="sdsCursos" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="IdCurso" HeaderText="IdCurso" ReadOnly="True" SortExpression="IdCurso"></asp:BoundField>
                    <asp:BoundField DataField="IdProfesor" HeaderText="IdProfesor" ReadOnly="True" SortExpression="IdProfesor"></asp:BoundField>
                    <asp:BoundField DataField="Votos" HeaderText="Votos" SortExpression="Votos"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099"></FooterStyle>

                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#FFFFCC" ForeColor="#330099"></PagerStyle>

                <RowStyle BackColor="White" ForeColor="#330099"></RowStyle>

                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#FEFCEB"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#AF0101"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#F6F0C0"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#7E0000"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="sdsCursos" ConnectionString='<%$ ConnectionStrings:ConoceATuProfeConnectionString %>' DeleteCommand="DELETE FROM [CursoProfesor] WHERE [IdCurso] = @IdCurso AND [IdProfesor] = @IdProfesor" InsertCommand="INSERT INTO [CursoProfesor] ([IdCurso], [IdProfesor], [Votos]) VALUES (@IdCurso, @IdProfesor, @Votos)" SelectCommand="SELECT * FROM [CursoProfesor]" UpdateCommand="UPDATE [CursoProfesor] SET [Votos] = @Votos WHERE [IdCurso] = @IdCurso AND [IdProfesor] = @IdProfesor">
                <DeleteParameters>
                    <asp:Parameter Name="IdCurso" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="IdProfesor" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="IdCurso" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="IdProfesor" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Votos" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Votos" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="IdCurso" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="IdProfesor" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
