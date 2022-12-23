using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ozkanproje
{
    public abstract class musteriler
    {
        public List<musteriler> musteribilgileri = new List<musteriler>();
        public string adsoyad;
        public long tcNo;
        public int koltukNo;
        public int yas;
        public int ucret;
        public virtual void musteriyikaydet()
        {
            musteribilgileri.Add(new yetiskinler(adsoyad,tcNo,koltukNo,yas,ucret));
            musteribilgileri.Add(new cocuklar(adsoyad, tcNo, koltukNo, yas, ucret,false));
            musteribilgileri.Add(new bebekler(adsoyad, tcNo, koltukNo, yas, ucret,false));
        }

        public musteriler(string adsoyad, long tcNo, int koltukNo, int yas, int ucret)
        {
            this.adsoyad = adsoyad;
            this.tcNo = tcNo;
            this.koltukNo = koltukNo;
            this.yas = yas;
            this.ucret = ucret;
        }
        public string musteribilgileridondurme()
        {
            string ad = musteribilgileri[0].adsoyad;
            string koltukno = musteribilgileri[0].koltukNo.ToString();
            string ucret = musteribilgileri[0].ucret.ToString();

            string bilgiler = String.Format("{0}, adlı kişisi {1} nolu koltuğu {2} fiyatına satın aldı.",ad,koltukno,ucret);
            return bilgiler;
        }
    }
    public class yetiskinler : musteriler
    {
        public yetiskinler(string adsoyad, long tcNo, int koltukNo, int yas, int ucret) : base(adsoyad, tcNo, koltukNo, yas, ucret)
        {
        }
        public virtual void musteriyikaydet()
        {
            musteribilgileri.Add(new yetiskinler(adsoyad, tcNo, koltukNo, yas, ucret));
        }

    }
    class cocuklar : yetiskinler
    {
        private bool hastalikDurum;

        public cocuklar(string adsoyad, long tcNo, int koltukNo, int yas, int ucret, bool hastalikDurum) : base(adsoyad, tcNo, koltukNo, yas, ucret)
        {
            this.hastalikDurum = hastalikDurum;
        }

        public override void musteriyikaydet(){
            musteribilgileri.Add(new cocuklar(adsoyad, tcNo, koltukNo, yas, ucret, false));

        }
    }
    class bebekler : yetiskinler
    {
        private bool pusetDurum;

        public bebekler(string adsoyad, long tcNo, int koltukNo, int yas, int ucret, bool pusetDurum) : base(adsoyad, tcNo, koltukNo, yas, ucret)
        {
            this.pusetDurum = pusetDurum;
        }
        public override void musteriyikaydet()
        {
            musteribilgileri.Add(new cocuklar(adsoyad, tcNo, koltukNo, yas, ucret, false));
        }
    }

}