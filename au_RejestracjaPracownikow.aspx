<%@ Page Title="" Language="C#" MasterPageFile="~/au_StronaWzorcowa.master" AutoEventWireup="true" CodeFile="au_RejestracjaPracownikow.aspx.cs" Inherits="au_RejestracjaPracownikow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        width: 169px;
    }
    .style11
    {
        width: 180px;
    }
    .style13
    {
        width: 171px;
    }
    .style14
    {
        width: 418px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" >
        <asp:View ID="View1" runat="server">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Etap 1: tworzenie konta w serwisie"></asp:Label>
            <br />
            <br />
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#F7F6F3" 
                BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
                Font-Names="Verdana" Font-Size="0.8em">
                <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                    ForeColor="#284775" />
                <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                    ForeColor="#284775" />
                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server" />
                    <asp:CompleteWizardStep runat="server" />
                </WizardSteps>
                <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" 
                    Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                    ForeColor="#284775" />
                <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" 
                    VerticalAlign="Top" />
                <StepStyle BorderWidth="0px" />
            </asp:CreateUserWizard>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Role (grupy) pracowników:"></asp:Label>
            <br />
            <asp:RadioButtonList ID="rdbRole" runat="server" Font-Size="Medium" 
                RepeatDirection="Horizontal" Width="681px">
                <asp:ListItem>administrator</asp:ListItem>
                <asp:ListItem>serwis</asp:ListItem>
                <asp:ListItem>obsługa klientów</asp:ListItem>
                <asp:ListItem>technicy</asp:ListItem>
                <asp:ListItem>pracownik biura</asp:ListItem>
                <asp:ListItem>kierownik</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAnuluj" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Anuluj" onclick="btnAnuluj_Click" />
            <br />
            <br />
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Etap 2: Ustalenia danych kontaktowych (adresowych), gdzie będą wysyłane zrealizowane usługi oraz informacje biznesowe"></asp:Label>
            <br />
            <br />
            &nbsp;<table style="width:100%;">
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Imię:"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="txtImie" runat="server"></asp:TextBox>
                    </td>
                    <td class="style11">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Nazwisko:"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="txtNazwisko" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Ulica:"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="txtUlica" runat="server"></asp:TextBox>
                    </td>
                    <td class="style11">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                            Text="Nr. domu/mieszkania:"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="txtNrDomuMoieszkania" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Kod pocztowy:"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="txtKodPocztowy" runat="server"></asp:TextBox>
                    </td>
                    <td class="style11">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Miejscowość:"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="txtMiejscowość" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="E-mail:"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td class="style11">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Telefon:"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="txtTelefon" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Dyspozycyjność (forma zatrudnienia):"></asp:Label>
            &nbsp;<asp:DropDownList ID="ddlDyspozycyjnosc" runat="server">
                <asp:ListItem Selected="True">pełny etap</asp:ListItem>
                <asp:ListItem>1/2 etapu</asp:ListItem>
                <asp:ListItem>3/4 etapu</asp:ListItem>
                <asp:ListItem>umowa o dzieło</asp:ListItem>
                <asp:ListItem>umowa zlecenia</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Medium" 
                Text="Wyrażam zgodę na przetważanie moich danych osobowych, w procesie realizacji usługi, zgodnie z ustawą dn. 29.08.97, Dz. U. 133, Poz. 833" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnZapiszdaneKontaktowe" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Zapisz" onclick="btnZapiszdaneKontaktowe_Click" />
            <br />
            <br />
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:Label ID="lblUdanaRejestracja" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Rejestracja została pomyślnie zakończona"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/au_StronaFrontowaSerwisu.aspx">Strona frontowa serwisu internetowego</asp:HyperLink>
        </asp:View>
    </asp:MultiView>
</asp:Content>

