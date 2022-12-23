using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ozkanproje
{
    public interface Ifaturabilgileri
    {
        string mAdi();
        string mSoyAdi();
        int mKoltukNo();
        int mFiyat();
        int uTarih();
    }
    public class Fatura : Ifaturabilgileri
    {
        public string mAdi()
        {
            return "Musteri Adi";
        }

        public int mFiyat()
        {
            return 0;

        }

        public int mKoltukNo()
        {
            return 0;
        }

        public string mSoyAdi()
        {
            return "Müsteri Soyadi";
        }

        public int uTarih()
        {
            return 0;
        }
    }
}