<%@ Page Title="" Language="C#" MasterPageFile="~/au_StronaWzorcowa.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="au_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
    BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
    CreateUserText="Zarejestruj się!" 
    CreateUserUrl="~/au_RejestracjaNowychUrzytkoników.aspx" 
    DestinationPageUrl="~/au_StronaFrontowaSerwisu.aspx" Font-Names="Verdana" 
    Font-Size="0.8em" ForeColor="#333333">
    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
        BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
    <TextBoxStyle Font-Size="0.8em" />
    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
        ForeColor="White" />
</asp:Login>
</asp:Content>

