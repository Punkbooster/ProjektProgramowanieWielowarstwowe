using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class au_RejestracjaNowychUrzytkoników : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        // ustawienie nowej perspektywy
        MultiView1.ActiveViewIndex = 1;
        // określienie roli
        System.Web.Security.Roles.AddUsersToRole(CreateUserWizard1.UserName, "Stały klient");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // przekierowanie na strone frontowa
        Response.Redirect("au_StronaFrontowaSerwisu.aspx");
    }
    protected void btnZapiszdaneKontaktowe_Click(object sender, EventArgs e)
    {

        au_DostępDoDanychPracowników ObiektDDD = new au_DostępDoDanychPracowników();
        try
        {
            ObiektDDD.ZapiszDaneKontaktowe(UserIdentity.Name, txtImię.text, txtNazwisko.text, ddlDyspozycyjność.SelectedItem.text,
                txtUlica.text, txtNrDomuMoieszkania.text, txtKodPocztowy.text, txtMiejscowość.text, txtEmail.text, txtTelefon.text,
                "brak uwag");
            // wizualizacja widoku
            MultiView1.ActiveViewIndex = 2;
            // wizualizacja komunikatu o udanej rejetracji
            lblUdanaRejestracja.text = "Rejestracja została pomyślnie zakonczona!";
        }
        catch (Exception ee)
        {
            // wizualizacja widoku kontenera View 3
            MultiView1.ActiveViewIndex = 2;
            // wizualizacja komunikatu o nie udanej rejestracji
            lblUdanaRejestracja.Text = "Rejestracja nie powiodłą się. Sprobuj jeszcze raz!";
        }
    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }
}