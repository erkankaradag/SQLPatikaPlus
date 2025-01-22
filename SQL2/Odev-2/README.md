# Proje: Film Veritabanı Sorguları

Bu README dosyası, verilen SQL sorgularını açıklamaktadır. Bu sorgular, bir film veritabanı üzerinde belirli kriterlere göre veri sorgulamak için kullanılmıştır.

---

## 1. Sorgu: Belirli Bir Yedekleme Maliyeti Aralığındaki Filmleri Getirme

**Sorgu:**
```sql
SELECT *
FROM film
WHERE replacement_cost BETWEEN 12.99 AND 16.99;
```

**Açıklama:**
- Bu sorgu, `film` tablosundaki `replacement_cost` (ıade maliyeti) değeri 12.99 ile 16.99 arasında olan tüm filmleri getirir.
- İçerik: Tüm film bilgilerini (`*`), belirtilen maliyet aralığına göre filtreler.

---

## 2. Sorgu: Belirli İsimlere Sahip Oyuncuları Getirme

**Sorgu:**
```sql
SELECT first_name, last_name
FROM actor
WHERE first_name IN ('Penelope', 'Nick', 'Ed');
```

**Açıklama:**
- Bu sorgu, `actor` (oyuncu) tablosundaki `first_name` (ısim) değeri "Penelope", "Nick" veya "Ed" olan oyuncuları getirir.
- İçerik: Oyuncuların sadece `first_name` (ad) ve `last_name` (soyad) bilgilerini döner.

---

## 3. Sorgu: Belirli Kiralama ve Yedekleme Maliyetlerine Sahip Filmleri Getirme

**Sorgu:**
```sql
SELECT *
FROM film
WHERE rental_rate IN (0.99,2.99,4.99) AND replacement_cost IN (12.99, 15.99, 28.99);
```

**Açıklama:**
- Bu sorgu, `film` tablosundaki `rental_rate` (kiralama oranı) değeri 0.99, 2.99 veya 4.99 olan ve aynı zamanda `replacement_cost` (ıade maliyeti) değeri 12.99, 15.99 veya 28.99 olan filmleri getirir.
- İçerik: Tüm film bilgilerini (`*`) döner ve hem `rental_rate` hem de `replacement_cost` kriterlerini karşılayan kayıtları filtreler.

---

## Notlar
- Bu sorgular, bir veritabanı içerisindeki tablolarda belirli kriterlere göre veri sorgulama örneğidir.
- Kullanılan tablolar ve sütunlar: `film` ve `actor`.
- Bu sorgular, örnek bir veritabanı yapısına göre tasarlanmıştır ve gerçek projelerde özelleştirilerek kullanılabilir.

