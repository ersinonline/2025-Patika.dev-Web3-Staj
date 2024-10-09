// main.mo
// Hesap Makinesi
// Bu akıllı sözleşme, basit matematiksel işlemler yapabilen bir hesap makinesidir.

// Değişkenler: let -> immutable, var -> mutable
// Operatörler, async metotlar, ve if koşul yapısı kullanılmıştır.

actor hesap_makinesi {
    // Hesap makinesi sonucu depolayan değişken
    var hucre: Int = 0;
    
    // Toplama fonksiyonu
    public func toplama(s: Int): async Int {
        hucre += s;
        hucre
    };
    
    // Çıkarma fonksiyonu
    public func cikarma(s: Int): async Int {
        hucre -= s;
        hucre
    };
    
    // Çarpma fonksiyonu
    public func carpma(s: Int): async Int {
        hucre *= s;
        hucre
    };
    
    // Bölme fonksiyonu
    public func bolme(s: Int): async ?Int {
        if (s == 0) {
            // Sıfıra bölme hatası durumunda null döner
            null
        } else {
            hucre /= s;
            ?hucre
        };
    };
    
    // Hesap makinesini sıfırlayan fonksiyon
    public func temizle(): async () {
        hucre := 0;
    };
    
    // Mevcut değeri döndüren fonksiyon
    public func degeriGoster(): async Int {
        hucre
    };
    
    // Debug amaçlı, mevcut değeri yazdırır (isteğe bağlı kullanılabilir)
    public func debugYazdir(): async () {
        Debug.print(debug_show(hucre));
    };
};
