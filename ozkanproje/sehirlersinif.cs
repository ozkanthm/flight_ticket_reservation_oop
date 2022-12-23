using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ozkanproje
{
    public class sehirlersinif
    {
        private List<String> sehirler = new List<String> { "Adana", "Adıyaman", "Afyon", "Ağrı", "Amasya", "Ankara", "Antalya", "Artvin", "Aydın", "Balıkesir", "Bilecik", "Bingöl", "Bitlis", "Bolu", "Burdur", "Bursa", "Çanakkale", "Çankırı", "Çorum", "Denizli", "Diyarbakır", "Edirne", "Elazığ", "Erzincan", "Erzurum", "Eskişehir", "Gaziantep", "Giresun", "Gümüşhane", "Hakkari", "Hatay", "Isparta", "İçel (Mersin)", "İzmir", "Kars", "Kastamonu", "Kayseri", "Kırklareli", "Kırşehir", "Kocaeli", "Konya", "Kütahya", "Malatya", "Manisa", "Kahramanmaraş", "Mardin", "Muğla", "Muş", "Nevşehir", "Niğde", "Ordu", "Rize", "Sakarya", "Samsun", "Siirt", "Sinop", "Sivas", "Tekirdağ", "Tokat", "Trabzon", "Tunceli", "Şanlıurfa", "Uşak", "Van", "Yozgat", "Zonguldak", "Aksaray", "Bayburt", "Karaman", "Kırıkkale", "Batman", "Şırnak", "Bartın", "Ardahan", "Iğdır", "Yalova", "Karabük", "Kilis", "Osmaniye", "Düzce" };
        public List<String> Sehirler
        {
            get { return sehirler; }
        }
        private string ilkSehir;
        private string ikincisehir;
        public string IkinciSehir { get; set; }
        public string IlkSehir { get; set; }
        public string sehircontrol(String sehir1, String sehir2)
        {
            if (sehir1 == sehir2)
            {
                return "Kalkış ve Varış şehirleri aynı olamaz. ";
            }
            else
                return "Rezervasyonunuz başarıyla alınmıştır.";
        }
    }
}