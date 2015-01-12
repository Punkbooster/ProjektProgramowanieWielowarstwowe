using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class au_RejestracjaPracownikow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // sprawdzenie tożsamości
        if (User.Identity.IsAuthenticated == false)
            Server.Transfer("Login.aspx");
        // sprawdazanie przy urzyciu metody is InRole
        if (!User.IsInRole("administrator"))
            Server.Transfer("au_BezUprawnien.aspx");

        }

    protected void CreateUserWizard1_CreateUser(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1; // ustawienie nowej perspektywy
        System.Web.Security.Roles.AddUserToRole(CreateUserWizard1.UserName,rdbRole.SelectedItem.ToString());
    }


    protected void btnAnuluj_Click(object sender, EventArgs e)
    {
        Response.Redirect("StronaFrontowaSerwisu.aspx"); // przekierowanie na strone frontowa
    }
    
   
    protected void btnZapiszdaneKontaktowe_Click(object sender, EventArgs e)
    {
        DostepDoDanychPracownikow ObiektDDD = new DostepDoDanychPracownikow();
        
        ObiektDDD.ZapiszDaneKontaktowe(User.Identity.Name, txtImie.Text, txtNazwisko.Text, ddlDyspozycyjnosc.SelectedItem.Text,
           txtUlica.Text, txtNrDomuMoieszkania.Text, txtKodPocztowy.Text, txtMiejscowość.Text, txtEmail.Text, txtTelefon.Text,
           "brak uwag");

        try 
        {
       
            // wizualizacja widoku
            MultiView1.ActiveViewIndex = 2;
            // wizualizacja komunikatu o udanej rejetracji
            lblUdanaRejestracja.Text = "Rejestracja została pomyślnie zakonczona!";
        }
        catch (Exception ee)
        {
        // wizualizacja widoku kontenera View 3
            MultiView1.ActiveViewIndex = 2;
        // wizualizacja komunikatu o nie udanej rejestracji
            lblUdanaRejestracja.Text = "Rejestracja nie powiodłą się. Sprobuj jeszcze raz!";
        }
    }
}