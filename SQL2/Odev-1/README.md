# README.md

## Genel Bakış
Bu belge, bir veritabanında çalıştırılan çeşitli SQL sorgularının ayrıntılarını sağlar. Sorgular, işlevlerine ve getirdikleri verilere göre kategorize edilmiştir. Aşağıda her sorgunun açıklaması ve amacı yer almaktadır.

---

### VERİ - 1
**Sorgu:**
```sql
SELECT title, description FROM film;
```

**Açıklama:**
- Bu sorgu, `film` tablosundan `title` ve `description` sütunlarını getirir.
- Tüm filmlerin başlıklarını ve açıklamalarını içeren bir liste sağlar.

---

### VERİ - 2
**Sorgu:**
```sql
SELECT *
FROM film
WHERE length BETWEEN 60 AND 75;
```

**Açıklama:**
- Bu sorgu, `film` tablosundan tüm sütunları (`*`) seçer.
- Filtreleme yaparak, uzunluğu 60 ile 75 dakika arasında (dahil) olan filmleri getirir.

---

### VERİ - 3
**Sorgu:**
```sql
SELECT *
FROM film
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99);
```

**Açıklama:**
- Bu sorgu, `film` tablosundan tüm sütunları getirir.
- `rental_rate` değeri 0.99 ve `replacement_cost` değeri 12.99 veya 28.99 olan filmleri filtreler.

---

### VERİ - 4
**Sorgu:**
```sql
SELECT first_name, last_name
FROM customer
WHERE first_name ='Mary';
```

**Açıklama:**
- Bu sorgu, `customer` tablosundan `first_name` ve `last_name` sütunlarını getirir.
- Özellikle `first_name` değeri "Mary" olan müşterileri filtreler.

---

### VERİ - 5
**Sorgu:**
```sql
SELECT *
FROM film
WHERE NOT length > 50 AND NOT (rental_rate = 2.99 OR rental_rate = 4.99);
```

**Açıklama:**
- Bu sorgu, `film` tablosundan tüm sütunları getirir.
- Filtreleme kriterleri:
  - `length` değeri 50'den büyük **olmayan** filmler, ve
  - `rental_rate` değeri 2.99 veya 4.99 **olmayan** filmler.

---

## Notlar
- `film` tablosu muhtemelen başlıklar, açıklamalar, süreler, kiralama ücretleri ve değiştirme maliyetleri gibi film detaylarını içerir.
- `customer` tablosu, müşteriler hakkında ad ve soyad gibi bilgileri içerir.
- `WHERE` ifadelerinde kullanılan sütunlara (`length`, `rental_rate`, `replacement_cost` ve `first_name`) uygun indeksleme yapılması, sorgu performansını artırabilir.

## Kullanım
- Bu sorgular, açıklanan şemaya sahip `film` ve `customer` tablolarını içeren herhangi bir SQL uyumlu veritabanında çalıştırılabilir.
- Özelleştirilmiş sonuçlar için `WHERE` koşullarındaki kriterleri ihtiyaca göre düzenleyin.

---

