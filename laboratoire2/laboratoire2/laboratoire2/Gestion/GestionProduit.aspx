<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionProduit.aspx.cs" Inherits="laboratoire2.Gestion.GestionProduit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="GestionProduitDS" runat="server" ConnectionString="<%$ ConnectionStrings:ExercicesB_CS2 %>" DeleteCommand="uspSupprimerProduit" DeleteCommandType="StoredProcedure" InsertCommand="uspAjouterProduit" InsertCommandType="StoredProcedure" SelectCommand="uspListeProduit" SelectCommandType="StoredProcedure" UpdateCommand="uspModifierProduit" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="IdProduit" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nom" Type="String" />
                <asp:Parameter Name="Prix" Type="Decimal" />
                <asp:Parameter Name="IdMarque" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IdProduit" Type="Int32" />
                <asp:Parameter Name="Nom" Type="String" />
                <asp:Parameter Name="Prix" Type="Decimal" />
                <asp:Parameter Name="IdMarque" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GestProduitGrd" runat="server" AutoGenerateColumns="False" DataKeyNames="IdProduit" DataSourceID="GestionProduitDS"  ShowFooter="True" CellPadding="4" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="IdProduit" InsertVisible="False" SortExpression="IdProduit">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("IdProduit") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("IdProduit") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nom" SortExpression="Nom">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nom") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nom") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtNom" runat="server"></asp:TextBox>
                    </FooterTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prix" SortExpression="Prix">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Prix") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Prix") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtPrix" runat="server"></asp:TextBox>
                    </FooterTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Marque" SortExpression="Nom1">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlProduitMod" DataSourceID="AfficherMarqueDS" DataTextField="Nom" DataValueField="IdMarque" SelectedValue ='<%# Bind("IdMarque") %>' runat="server"></asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>

                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Nom1") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="ddlProduitIns" DataSourceID="AfficherMarqueDS" DataTextField="Nom" DataValueField="IdMarque" runat="server"></asp:DropDownList>
                    </FooterTemplate>

                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Mettre à jour"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annuler"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Modifier"></asp:LinkButton>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="LinkButton3" OnClick="LbInsererProduit_Click" runat="server">Insérer</asp:LinkButton>
                    </FooterTemplate>

                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Supprimer"></asp:LinkButton>
                    </ItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>

                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="AfficherMarqueDS" runat="server" ConnectionString="<%$ ConnectionStrings:ExercicesBConnectionString %>" SelectCommand="SELECT IdMarque, Code, Nom 
from Marque"></asp:SqlDataSource>
    </form>
</body>
</html>
