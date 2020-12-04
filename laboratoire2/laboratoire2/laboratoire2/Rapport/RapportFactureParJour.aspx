<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RapportFactureParJour.aspx.cs" Inherits="laboratoire2.Rapport.RapportFactureParJour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        <asp:Button ID="btnDate" runat="server" Text="Chercher" />
        <asp:SqlDataSource ID="uspFactureParJour" runat="server" ConnectionString="<%$ ConnectionStrings:ExercicesB_CS %>" SelectCommand="uspFactureParJour" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtDate" Name="date" PropertyName="Text" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="uspFactureParJour" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                <asp:BoundField DataField="Prenom" HeaderText="Prénom" SortExpression="Prenom" />
                <asp:BoundField DataField="DateFacture" HeaderText="Date de facture" SortExpression="DateFacture" />
                <asp:BoundField DataField="NoFacture" HeaderText="Numéro de facture" SortExpression="NoFacture" />
                <asp:BoundField DataField="Montant total" HeaderText="Montant total" ReadOnly="True" SortExpression="Montant total" DataFormatString="{0:C}" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </form>
</body>
</html>
