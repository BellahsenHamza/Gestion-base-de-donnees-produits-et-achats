using System;
using System.Web.UI.WebControls;

namespace laboratoire2.Gestion
{
    public partial class GestionProduit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LbInsererProduit_Click(object sender, EventArgs e)
        {
            GestionProduitDS.InsertParameters["Nom"].DefaultValue = ((TextBox)GestProduitGrd.FooterRow.FindControl("txtNom")).Text;
            GestionProduitDS.InsertParameters["Prix"].DefaultValue = ((TextBox)GestProduitGrd.FooterRow.FindControl("txtPrix")).Text;
            GestionProduitDS.InsertParameters["IdMarque"].DefaultValue = ((DropDownList)GestProduitGrd.FooterRow.FindControl("ddlProduitIns")).SelectedValue;

            GestionProduitDS.Insert();
        }


    }
}