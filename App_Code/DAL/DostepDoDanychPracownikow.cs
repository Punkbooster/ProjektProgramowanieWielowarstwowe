using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DostepDoDanychPracownikow
/// </summary>
public class DostepDoDanychPracownikow
{
	public DostepDoDanychPracownikow()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void ZapiszDaneKontaktowe(string IdAspNetDB, string Imię, string Nazwisko, string Dyspozycyjność, string Ulica, string NrDomuMieszkania,
        string KodPocztowy, string Miejscowość, string Email, string NrTelefonu, string UwagiDodatkowe)
    {
        ListaPracownikowTableAdapters.PracownicyFirmyTableAdapter
            AdapterPracownikowFirmy = new ListaPracownikowTableAdapters.PracownicyFirmyTableAdapter();
        AdapterPracownikowFirmy.Insert(IdAspNetDB, Imię, Nazwisko, Dyspozycyjność, Ulica, NrDomuMieszkania, KodPocztowy, Miejscowość,
            Email, NrTelefonu, UwagiDodatkowe);
    }
}