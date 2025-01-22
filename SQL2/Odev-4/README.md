# SQL Sorguları için README

Bu belge, sağlanan SQL sorgularının genel bir görünümünü ve açıklamasını sunar. Her sorgu aşağıda detaylı bir şekilde açıklanmıştır.

---

## DATA - 1: Film Kira Maliyetlerini Listeleme

### Sorgu:
```sql
SELECT DISTINCT replacement_cost
FROM film;
```

### Açıklama:
Bu sorgu, `film` tablosundaki `replacement_cost` sütununda bulunan benzersiz (tekrarsız) kira maliyetlerini listeler.

- `DISTINCT`: Tekrarlayan değerleri çıkarır ve yalnızca benzersiz değerleri döndürür.

### Kullanım Alanı:
Bu sorgu, mevcut kira maliyetlerini analiz etmek veya fiyat aralıklarını belirlemek için kullanılabilir.

---

## DATA - 2: Benzersiz Kira Maliyetlerinin Sayısını Bulma

### Sorgu:
```sql
SELECT COUNT(DISTINCT replacement_cost)
FROM film;
```

### Açıklama:
Bu sorgu, `film` tablosundaki `replacement_cost` sütununda bulunan benzersiz kira maliyetlerinin toplam sayısını döndürür.

- `COUNT(DISTINCT ...)`: Hem benzersiz değerleri sayar hem de toplamı verir.

### Kullanım Alanı:
Bu sorgu, kaç farklı kira maliyeti seçeneği olduğunu öğrenmek için kullanılabilir.

---

## DATA - 3: 'T' Harfiyle Başlayan ve G Derecesine Sahip Filmler

### Sorgu:
```sql
SELECT *
FROM film
WHERE title LIKE 'T%' AND rating = 'G';
```

### Açıklama:
Bu sorgu, `film` tablosundaki şu özelliklere sahip kayıtları getirir:
1. `title` sütunu 'T' harfiyle başlar.
2. `rating` sütunu 'G' değerine eşittir.

- `title LIKE 'T%'`: Başlığı 'T' ile başlayan filmleri eşleştirir.
- `rating = 'G'`: G derecesine sahip filmleri filtreler.

### Kullanım Alanı:
Bu sorgu, aile dostu (G derecesi) ve başlığı 'T' ile başlayan filmleri bulmak için kullanılabilir.

---

## DATA - 4: Beş Harfli Ülkelerin Sayısını Bulma

### Sorgu:
```sql
SELECT COUNT(*)
FROM country
WHERE country LIKE '_____';
```

### Açıklama:
Bu sorgu, `country` tablosunda tam olarak 5 harfli olan ülkelerin toplam sayısını döndürür.

- `LIKE '_____'`: Tam olarak 5 karakter uzunluğundaki metinleri eşleştirir.

### Kullanım Alanı:
Bu sorgu, belirli bir karakter uzunluğundaki ülke isimlerini analiz etmek için kullanılabilir.

---

## DATA - 5: 'R' Harfi ile Biten Şehirlerin Sayısını Bulma

### Sorgu:
```sql
SELECT COUNT(*)
FROM city
WHERE city ILIKE '%R';
```

### Açıklama:
Bu sorgu, `city` tablosunda ismi 'R' harfi ile biten şehirlerin toplam sayısını döndürür.

- `ILIKE '%R'`: 'R' harfi ile biten (büyük/küçük harf duyarsız) şehir isimlerini eşleştirir.

### Kullanım Alanı:
Bu sorgu, ismi belirli bir harf ile biten şehirlerin sayısını öğrenmek için kullanılabilir.

---

### Ek Notlar:
- Daha iyi performans için `WHERE` koşulunda kullanılan sütunlara uygun indeksler tanımlayın.
- Veritabanı destekliyorsa, büyük/küçük harf duyarsız aramalar için `ILIKE` kullanın; aksi takdirde `UPPER()` veya `LOWER()` fonksiyonlarını kullanabilirsiniz.

### Uyumluluk:
Bu sorgular standart SQL ile yazılmıştır ve çoğu ilişkisel veritabanında (ör. PostgreSQL, MySQL, SQLite) çalışmalıdır. Veritabanına özgü sözdizimi için küçük ayarlamalar gerekebilir.

