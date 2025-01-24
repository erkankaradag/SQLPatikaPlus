# README

Bu doküman, projede yer alan SQL sorguları ve bunların amaçları hakkında bilgiler içermektedir. Aşağıda veri setlerinin açıklamaları ve her bir sorgunun işlevselliği yer almaktadır.

---

## Veri Setleri

### Film Veri Seti
`film` tablosu, filmler hakkında başlıklar, uzunluklar, kiralama ücretleri ve değiştirme maliyetleri gibi bilgileri içerir. Bu veri seti, belirli kriterlere göre film detaylarını sorgulamak için kullanılır.

---

## Sorgular

### Data - 1: Ortalama Kiralama Ücretini Hesapla
```sql
SELECT ROUND(AVG(rental_rate), 3)
FROM film;
```
**Açıklama:**
- `film` tablosundaki tüm filmler için ortalama kiralama ücretini hesaplar.
- Sonuç, virgülden sonra 3 basamağa yuvarlanır.

### Data - 2: 'C' Harfi ile Başlayan Filmlerin Sayısını Bul
```sql
SELECT COUNT(*) title
FROM film
WHERE title LIKE 'C%';
```
**Açıklama:**
- Başlığı 'C' harfi ile başlayan filmlerin toplam sayısını getirir.

### Data - 3: 0.99 Kiralama Ücretine Sahip En Uzun Filmi Bul
```sql
SELECT MAX(length)
FROM film
WHERE rental_rate = 0.99;
```
**Açıklama:**
- Kiralama ücreti 0.99 olan filmler arasından en uzun filmi getirir.

### Data - 4: 150 Dakikadan Uzun Filmler İçin Farklı Değiştirme Maliyeti Sayısını Bul
```sql
SELECT COUNT(DISTINCT replacement_cost)
FROM film
WHERE length > 150;
```
**Açıklama:**
- Uzunluğu 150 dakikadan fazla olan filmler için farklı değiştirme maliyetlerinin toplam sayısını getirir.

---

## Kullanım
1. SQL sorgularını kopyalayarak veri tabanı sorgu editörünüzde çalıştırın.
2. Doğru sonuçlar için veri tabanında `film` tablosunun uygun verilerle dolu olduğundan emin olun.

---

## Notlar
- Veri tabanı şemanız farklıysa tablo ve sütun adlarını değiştirin.
- Belirli gereksinimlere göre sorguları düzenleyebilirsiniz.
- Sorgular, `title` ve diğer metin alanları için büyük/küçük harf duyarsız bir sıralama varsaymaktadır.

