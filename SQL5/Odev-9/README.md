# SQL Sorguları Dokümantasyonu

## DATA - 1: Şehir ve Ülke Bilgilerini Getirme
Bu sorgu, `city` ve `country` tablolarını `country_id` sütununa göre birleştirerek şehir ve ülke isimlerini getirir.

### Sorgu:
```sql
SELECT city, country FROM city
INNER JOIN country ON city.country_id = country.country_id;
```

### Açıklama:
- **Kullanılan Tablolar**:
  - `city`: Şehir bilgilerini içerir.
  - `country`: Ülke bilgilerini içerir.
- **Birleştirme Koşulu**:
  - `city.country_id = country.country_id`: Şehirleri, `country_id` üzerinden ilgili ülkelerle eşleştirir.

---

## DATA - 2: Ödeme Bilgilerini Müşteri İsimleriyle Getirme
Bu sorgu, `payment` ve `customer` tablolarını birleştirerek ödeme ID'lerini ve müşterilerin ad-soyad bilgilerini getirir.

### Sorgu:
```sql
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id;
```

### Açıklama:
- **Kullanılan Tablolar**:
  - `payment`: Ödeme işlem bilgilerini içerir.
  - `customer`: Müşteri detaylarını içerir.
- **Birleştirme Koşulu**:
  - `customer.customer_id = payment.customer_id`: Ödemeleri, ödemeyi yapan müşterilerle ilişkilendirir.

---

## DATA - 3: Kiralama Bilgilerini Müşteri İsimleriyle Getirme
Bu sorgu, `rental` ve `customer` tablolarını birleştirerek kiralama ID'lerini ve müşterilerin ad-soyad bilgilerini getirir.

### Sorgu:
```sql
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id;
```

### Açıklama:
- **Kullanılan Tablolar**:
  - `rental`: Kiralama işlem detaylarını içerir.
  - `customer`: Müşteri detaylarını içerir.
- **Birleştirme Koşulu**:
  - `customer.customer_id = rental.customer_id`: Kiralamaları, kiralama yapan müşterilerle ilişkilendirir.

---

### Notlar:
- Bu sorgular `INNER JOIN` kullanır. Bu birleştirme türü, yalnızca her iki tabloda da eşleşen kayıtların sonuç kümesine dahil edilmesini sağlar.
- Eğer bir müşteri veya ilgili kayıt tablolardan birinde mevcut değilse, bu kayıtlar sonuçlara dahil edilmez.

Daha fazla özelleştirme veya açıklama için lütfen çekinmeden sorun! 😊

