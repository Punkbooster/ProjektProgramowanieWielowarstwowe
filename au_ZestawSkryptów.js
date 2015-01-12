/* deklaracja tablicy dla przechowywania adresów bannerów(logo) graficznych */

var TablicaBannerówGraficznych=new Array(6);

/* Wpisanie adresów referencyjne */

if(document.images) {
	for(k=0; k<6; k++) {
	TablicaBannerówGraficznych[k]=new Image(80,50);
	
	// podajemy ścieżke dostępu do pliku
	
	TablicaBannerówGraficznych[k].src="Images/banner" + k + ".jpg";
	}
	}
	
/* deklaracja dla tablicy TablicaBannerówGraficznych, tablicy bliżniaczej z adresem URL */

var TablicaAdresowURL=new Array(6);

// wypelnienie adresami URL utworzonej tablicy

	TablicaAdresowURL[0]="http://www.aplixcom.com/";
	
	TablicaAdresowURL[1]="http://www.bpsc.com.pl";
	
	TablicaAdresowURL[2]="http://www.epicor.pl";
	
	TablicaAdresowURL[3]="http://www.exact.pl";
	
	TablicaAdresowURL[4]="http://www.hogart.pl";
	
	TablicaAdresowURL[5]="http://www.ifsworld.com";
	
	// deklaracja zmiannej indeks, która będzie zawierała numer
	
var Index=1;
	
	// deklaracja funkcji
	
function WymianaBanneru() {
	Index=Index%6;
	
	document.banner.src=TablicaAdresowURL[Index].src;
	
	document.links[0].href=TablicaAdresowURL[Index];
	
	Index++;
	}
	
// deklaracja funkcji inicjującej rotacje bannerów
function RotacjaBannerów() {
	setIntrval("WymianaBanneru()",1000);
	
// wpisanie do tablicy links adresu URL banneru umieszczonego na stronie

	document.links[0].href="http://www.aplixcom.com";
	}
	
	
	
	
	
	
	
	