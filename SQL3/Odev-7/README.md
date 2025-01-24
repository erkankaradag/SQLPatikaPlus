# README

Bu doküman, projede yer alan SQL sorguları ve bunların amaçları hakkında bilgiler içermektedir. Aşağıda veri setlerinin açıklamaları ve her bir sorgunun işlevselliği yer almaktadır.

---

## Veri Setleri

### Film Veri Seti
`film` tablosu, filmler hakkında başlıklar, uzunluklar, kiralama ücretleri, değiştirme maliyetleri ve derecelendirme gibi bilgileri içerir. Bu veri seti, belirli kriterlere göre film detaylarını sorgulamak için kullanılır.

### Müşteri Veri Seti
`customer` tablosu, müşterilerin hangi mağaza ile ilişkili oldukları gibi bilgileri içerir.

### Şehir Veri Seti
`city` tablosu, şehirler ve bağlı oldukları ülkeler hakkında bilgileri içerir.

---

## Sorgular

### Data - 1: Film Derecelendirme Türlerini Getir
```sql
SELECT rating FROM film
GROUP BY rating;
```
**Açıklama:**
- `film` tablosundaki filmlerin farklı derecelendirme türlerini listeler.

### Data - 2: 50’den Fazla Filme Sahip Değiştirme Maliyetlerini Getir
```sql
SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50;
```
**Açıklama:**
- 50’den fazla filme sahip olan değiştirme maliyetlerini ve bunların sayısını getirir.

### Data - 3: Mağaza Bazında Müşteri Sayısını Getir
```sql
SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id;
```
**Açıklama:**
- Her bir mağaza için müşteri sayısını getirir.

### Data - 4: En Fazla Şehre Sahip Ülkeyi Bul
```sql
SELECT country_id, COUNT(*) FROM city
GROUP BY country_id
ORDER BY COUNT(*) DESC
LIMIT 1;
```
**Açıklama:**
- Şehir sayısına göre ülkeleri sıralar ve en fazla şehre sahip olan ülkeyi getirir.

---

## Kullanım
1. SQL sorgularını kopyalayarak veri tabanı sorgu editörünüzde çalıştırın.
2. Doğru sonuçlar için veri tabanında `film`, `customer` ve `city` tablolarının uygun verilerle dolu olduğundan emin olun.

---

## Notlar
- Veri tabanı şemanız farklıysa tablo ve sütun adlarını değiştirin.
- Belirli gereksinimlere göre sorguları düzenleyebilirsiniz.
- Sorgular, metin alanları için büyük/küçük harf duyarsız bir sıralama varsaymaktadır.

