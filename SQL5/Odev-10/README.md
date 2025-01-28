# README

Bu belge, verilen SQL sorgularýný ve amaçlarýný açýklar. Aþaðýda, her veri setinin ve oluþturulan SQL iþlemlerinin ayrýntýlý açýklamalarý yer almaktadýr.

---

## VERÝ - 1: Þehir ve Ülke Bilgileri

**Sorgu:**
```sql
SELECT city.city, country.country
FROM city
LEFT JOIN country
ON city.country_id = country.country_id;
```

**Açýklama:**
Bu sorgu, þehirlerin isimlerini ve bunlara karþýlýk gelen ülkeleri getirir. `LEFT JOIN` kullanýlarak, `city` tablosundaki tüm þehirlerin sonuçlara dahil edilmesi saðlanýr, eþleþen bir ülke olmasa bile.

**Önemli Noktalar:**
- Þehir isimlerini ve ilgili ülkeleri gösterir.
- Karþýlýk gelen bir ülke olmayan þehirler için ülke sütununda `NULL` deðeri olur.
- Hiçbir þehir verisinin dýþarýda býrakýlmamasýný saðlar.

---

## VERÝ - 2: Müþteri ve Ödeme Bilgileri

**Sorgu:**
```sql
SELECT customer.first_name, customer.last_name, payment.payment_id
FROM payment
RIGHT JOIN customer
ON payment.customer_id = customer.customer_id;
```

**Açýklama:**
Bu sorgu, müþteri ad ve soyadlarýný, ayrýca ödeme kimliklerini getirir. `RIGHT JOIN` kullanýlarak, `customer` tablosundaki tüm müþterilerin sonuçlara dahil edilmesi saðlanýr, ödeme yapmamýþ olsalar bile.

**Önemli Noktalar:**
- Müþteri adlarýný ve ilgili ödeme kimliklerini gösterir.
- Ödeme yapmamýþ müþteriler için ödeme kimliði sütununda `NULL` deðeri olur.
- Tüm müþteri kayýtlarýnýn dahil edilmesini garanti eder.

---

## VERÝ - 3: Kiralama ve Müþteri Bilgileri

**Sorgu:**
```sql
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM customer
FULL JOIN rental ON customer.customer_id = rental.customer_id;
```

**Açýklama:**
Bu sorgu, kiralama kimliklerini ve müþteri ad ile soyadlarýný getirir. `FULL JOIN` kullanýlarak, eþleþme olmasa bile tüm müþteri ve kiralama kayýtlarý dahil edilir.

**Önemli Noktalar:**
- Kiralama kimliklerini ve müþteri bilgilerini gösterir.
- Kiralamasý olmayan müþterileri ve müþterisi olmayan kiralamalarý içerir.
- Hiçbir verinin dýþarýda býrakýlmamasýný saðlar.

---

## Genel Notlar
- **Kullanýlan Join Türleri:**
  - `LEFT JOIN`: Sol tablodaki tüm kayýtlarýn dahil edilmesini saðlar.
  - `RIGHT JOIN`: Sað tablodaki tüm kayýtlarýn dahil edilmesini saðlar.
  - `FULL JOIN`: Her iki tablodaki tüm kayýtlarý içerir ve eþleþme olmayan alanlar için `NULL` deðerlerini gösterir.

- **Amaç:**
  Bu sorgular, farklý join türlerini ve iliþkisel tablo yapýlarý temelinde kapsamlý veri setlerinin nasýl getirileceðini göstermek için tasarlanmýþtýr.

- **Olasý Kullaným Alanlarý:**
  - **VERÝ - 1:** Þehirlerin ülkelerle eþleþtirilmesi ve eþleþtirilmeyen þehirlerin tespiti için kullanýþlýdýr.
  - **VERÝ - 2:** Müþteri ödeme aktivitelerini analiz etmek, özellikle aktif olmayan müþterileri belirlemek için idealdir.
  - **VERÝ - 3:** Kiralama aktivitelerini ve ilgili müþterileri anlamak ya da müþterisi olmayan kiralamalarý tespit etmek için faydalýdýr.

---

Daha fazla bilgi veya geliþtirme için lütfen iletiþime geçin!

