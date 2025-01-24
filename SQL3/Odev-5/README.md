# README

Bu doküman, projede yer alan SQL sorguları ve bunların amaçları hakkında bilgiler içermektedir. Aşağıda veri setlerinin açıklamaları ve her bir sorgunun işlevselliği yer almaktadır.

---

## Veri Setleri

### Film Veri Seti
`film` tablosu, filmler hakkında başlıklar ve uzunluklar dahil olmak üzere bilgileri içerir. Bu veri seti, belirli kriterlere göre film detaylarını sorgulamak için kullanılır.

### Müşteri Veri Seti
`customer` tablosu, müşterilerin soyadları ve hangi mağaza ile ilişkili oldukları dahil olmak üzere müşteri bilgilerini içerir.

---

## Sorgular

### Data - 1: 'n' Harfi ile Biten En Uzun 5 Filmi Getir
```sql
SELECT title, length
FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;
```
**Açıklama:**
- Başlığı 'n' harfi ile biten filmlerin başlıklarını ve uzunluklarını getirir.
- Sonuçlar, film uzunluğuna göre azalan sırayla sıralanır.
- Çıktı, en uzun 5 filmle sınırlandırılmıştır.

### Data - 2: 'n' Harfi ile Biten Sonraki 5 Filmi Getir (Uzunluğa Göre Sıralı)
```sql
SELECT title, length
FROM film
WHERE title LIKE '%n'
ORDER BY length
OFFSET 5
LIMIT 5;
```
**Açıklama:**
- Başlığı 'n' harfi ile biten filmlerin başlıklarını ve uzunluklarını getirir.
- Sonuçlar, film uzunluğuna göre artan sırayla sıralanır.
- İlk 5 sonuç atlanır ve sonraki 5 film getirilir.

### Data - 3: Mağaza 1’den Son 4 Müşteriyi Getir
```sql
SELECT last_name, store_id
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
```
**Açıklama:**
- Mağaza 1 ile ilişkili müşterilerin soyadlarını ve mağaza kimliklerini getirir.
- Sonuçlar, soyadına göre azalan sırayla sıralanır.
- Çıktı, sıralamaya göre son 4 müşteriyle sınırlandırılmıştır.

---

## Kullanım
1. SQL sorgularını kopyalayarak veri tabanı sorgu editörünüzde çalıştırın.
2. Doğru sonuçlar için veri tabanında `film` ve `customer` tablolarının uygun verilerle dolu olduğundan emin olun.

---

## Notlar
- Veri tabanı şemanız farklıysa tablo ve sütun adlarını değiştirin.
- Belirli gereksinimlere göre `LIMIT` ve `OFFSET` değerlerini ayarlayın.
- Sorgular, `title` ve `last_name` alanları için büyük/küçük harf duyarsız bir sıralama varsaymaktadır.

