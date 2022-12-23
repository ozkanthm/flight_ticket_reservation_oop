using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ozkanproje
{
    public partial class rezervasyonsayfasi : System.Web.UI.Page
    {
        public string bilgi;
        List<int> koltuklar = new List<int>()
        {
            0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
        };
        sehirlersinif sehirlersinif = new sehirlersinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            var sehirler = sehirlersinif.Sehirler;

            for (int i = 0; i < sehirler.Count; i++)
            {
                kalkısyer.Items.Add(sehirler[i]);
                inisyeri.Items.Add(sehirler[i]);
            }
        }

        protected void rezervasyonbuton_Click(object sender, EventArgs e)
        {
            musterilerikaydet();

            string sonuc = sehirlersinif.sehircontrol(kalkısyer.Text, inisyeri.Text);
            if (sonuc.Length > 38)
            {
                sonuclabeln.Text = sonuc;
                sonuclabeln.Visible = true;
                sonuclabelp.Visible = false;
            }
            else
            {
                sonuclabelp.Text = sonuc;
                sonuclabeln.Visible = false;
                sonuclabelp.Visible = true;
                sonucbilgi.Text = bilgi;

            }
        }

        private void musterilerikaydet()
        {
            
            if(int.Parse(yas.Text) > 18)
            {
                musteriler yetiskinmusteri = new yetiskinler(adsoyad: adsoyad.Text,12345678910,koltukAta(),int.Parse(yas.Text),fiyathesapla());
                yetiskinmusteri.musteriyikaydet();
                bilgi = yetiskinmusteri.musteribilgileridondurme();
            }
            else if(int.Parse(yas.Text) < 18 & int.Parse(yas.Text) > 6)
            {
                musteriler cocukmusteri = new cocuklar(adsoyad: adsoyad.Text, 12345678910, koltukAta(), int.Parse(yas.Text), fiyathesapla(), false);
                cocukmusteri.musteriyikaydet();
                bilgi = cocukmusteri.musteribilgileridondurme();
            }
            else if (int.Parse(yas.Text) < 6)
            {
                musteriler bebekmusteri = new bebekler(adsoyad: adsoyad.Text, 12345678910, koltukAta(), int.Parse(yas.Text), fiyathesapla(),bebekpuseti.Checked);
                bebekmusteri.musteriyikaydet();
                bilgi = bebekmusteri.musteribilgileridondurme();
            }

        }

        private int fiyathesapla()
        {
            int fiyat;
            fiyat = (sehirlersinif.Sehirler.IndexOf(kalkısyer.Text) - sehirlersinif.Sehirler.IndexOf(inisyeri.Text))*200;
            if (fiyat < 0) { 
                fiyat *= -1;
                return fiyat;
            }
            else { return fiyat; }
        }

        private int koltukAta()
        {
            var rand = new Random();
            int randomKoltuk = rand.Next(koltuklar.Count);
            koltuklar.Remove(randomKoltuk);
            return randomKoltuk;
        }
    }
}