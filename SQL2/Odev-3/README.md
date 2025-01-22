# SQL Sorguları için README

Bu belge, sağlanan SQL sorgularının genel bir görünümünü ve açıklamasını sunar. Her sorgu aşağıda detaylı bir şekilde açıklanmıştır.

---

## DATA - 1: 'A' ile Başlayıp 'a' ile Biten Ülkeler

### Sorgu:
```sql
SELECT *
FROM country
WHERE country LIKE 'A%a';
```

### Açıklama:
Bu sorgu, `country` tablosundan `country` sütununun 'A' harfi ile başlayıp 'a' harfi ile biten tüm kayıtları getirir.

- `LIKE 'A%a'`: 'A' ile başlayan, herhangi bir karakter dizisi (`%`) ve 'a' ile biten metinleri eşleştirir.

### Kullanım Alanı:
Bu sorgu, "Australia" veya "Albania" gibi ülke isimlerini filtrelemek için kullanılabilir.

---

## DATA - 2: 6 Harfli ve 'n' ile Biten Ülkeler

### Sorgu:
```sql
SELECT *
FROM country
WHERE country LIKE '%_____n';
```

### Açıklama:
Bu sorgu, `country` tablosundan `country` sütununun 'n' harfi ile biten ve tam olarak altı karakter uzunluğunda olan tüm kayıtları getirir.

- `LIKE '%_____n'`:
  - `%`: Son 6 karakterden önce herhangi bir sayıda karakter eşleşir.
  - `_____`: Tam olarak 5 karakteri eşleştirir.
  - `n`: Son harf olarak 'n' harfini eşleştirir.

### Kullanım Alanı:
Bu sorgu, "Sweden" veya "Jordan" gibi ülke isimlerini bulmak için kullanılabilir.

---

## DATA - 3: Başlığında 'T' Harfi Geçen Filmler

### Sorgu:
```sql
SELECT *
FROM film
WHERE title ILIKE '%T%';
```

### Açıklama:
Bu sorgu, `film` tablosundan `title` sütununda 'T' harfi geçen (büyük/küçük harf duyarsız) tüm kayıtları getirir.

- `ILIKE '%T%'`:
  - `%`: 'T' harfinden önce veya sonra herhangi bir sayıda karakter eşleşir.
  - `ILIKE`: Büyük/küçük harf duyarsız arama yapar.

### Kullanım Alanı:
Bu sorgu, "Titanic" veya "The Terminator" gibi film isimlerini bulmak için kullanılabilir.

---

## DATA - 4: 'C' ile Başlayan, Süresi > 90 ve Kira Ücreti = 2.99 Olan Filmler

### Sorgu:
```sql
SELECT *
FROM film
WHERE title LIKE 'C%' AND length > 90 AND (rental_rate = 2.99);
```

### Açıklama:
Bu sorgu, `film` tablosundan:
1. `title` sütunu 'C' harfi ile başlayan,
2. `length` sütunu 90 dakikadan uzun olan,
3. `rental_rate` sütunu 2.99 olan,
tüm kayıtları getirir.

- `title LIKE 'C%'`: Başlığı 'C' ile başlayan filmleri eşleştirir.
- `length > 90`: Süresi 90 dakikadan uzun olan filmleri filtreler.
- `rental_rate = 2.99`: Kira ücreti tam olarak 2.99 olan filmleri getirir.

### Kullanım Alanı:
Bu sorgu, belirli bir kira ücreti olan ve uzunluğu 90 dakikadan fazla olan, 'C' harfi ile başlayan filmleri filtrelemek için kullanılabilir.

---

### Ek Notlar:
- Daha iyi performans için `WHERE` koşulunda kullanılan sütunlara uygun indeksler tanımlayın.
- Veritabanı destekliyorsa, büyük/küçük harf duyarsız aramalar için `ILIKE` kullanın; aksi takdirde `UPPER()` veya `LOWER()` fonksiyonlarını kullanabilirsiniz.

### Uyumluluk:
Bu sorgular standart SQL ile yazılmıştır ve çoğu ilişkisel veritabanında (ör. PostgreSQL, MySQL, SQLite) çalışmalıdır. Veritabanına özgü sözdizimi için küçük ayarlamalar gerekebilir.

