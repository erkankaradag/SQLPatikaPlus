# README

Bu belge, verilen SQL sorgular�n� ve ama�lar�n� a��klar. A�a��da, her veri setinin ve olu�turulan SQL i�lemlerinin ayr�nt�l� a��klamalar� yer almaktad�r.

---

## VER� - 1: �ehir ve �lke Bilgileri

**Sorgu:**
```sql
SELECT city.city, country.country
FROM city
LEFT JOIN country
ON city.country_id = country.country_id;
```

**A��klama:**
Bu sorgu, �ehirlerin isimlerini ve bunlara kar��l�k gelen �lkeleri getirir. `LEFT JOIN` kullan�larak, `city` tablosundaki t�m �ehirlerin sonu�lara dahil edilmesi sa�lan�r, e�le�en bir �lke olmasa bile.

**�nemli Noktalar:**
- �ehir isimlerini ve ilgili �lkeleri g�sterir.
- Kar��l�k gelen bir �lke olmayan �ehirler i�in �lke s�tununda `NULL` de�eri olur.
- Hi�bir �ehir verisinin d��ar�da b�rak�lmamas�n� sa�lar.

---

## VER� - 2: M��teri ve �deme Bilgileri

**Sorgu:**
```sql
SELECT customer.first_name, customer.last_name, payment.payment_id
FROM payment
RIGHT JOIN customer
ON payment.customer_id = customer.customer_id;
```

**A��klama:**
Bu sorgu, m��teri ad ve soyadlar�n�, ayr�ca �deme kimliklerini getirir. `RIGHT JOIN` kullan�larak, `customer` tablosundaki t�m m��terilerin sonu�lara dahil edilmesi sa�lan�r, �deme yapmam�� olsalar bile.

**�nemli Noktalar:**
- M��teri adlar�n� ve ilgili �deme kimliklerini g�sterir.
- �deme yapmam�� m��teriler i�in �deme kimli�i s�tununda `NULL` de�eri olur.
- T�m m��teri kay�tlar�n�n dahil edilmesini garanti eder.

---

## VER� - 3: Kiralama ve M��teri Bilgileri

**Sorgu:**
```sql
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM customer
FULL JOIN rental ON customer.customer_id = rental.customer_id;
```

**A��klama:**
Bu sorgu, kiralama kimliklerini ve m��teri ad ile soyadlar�n� getirir. `FULL JOIN` kullan�larak, e�le�me olmasa bile t�m m��teri ve kiralama kay�tlar� dahil edilir.

**�nemli Noktalar:**
- Kiralama kimliklerini ve m��teri bilgilerini g�sterir.
- Kiralamas� olmayan m��terileri ve m��terisi olmayan kiralamalar� i�erir.
- Hi�bir verinin d��ar�da b�rak�lmamas�n� sa�lar.

---

## Genel Notlar
- **Kullan�lan Join T�rleri:**
  - `LEFT JOIN`: Sol tablodaki t�m kay�tlar�n dahil edilmesini sa�lar.
  - `RIGHT JOIN`: Sa� tablodaki t�m kay�tlar�n dahil edilmesini sa�lar.
  - `FULL JOIN`: Her iki tablodaki t�m kay�tlar� i�erir ve e�le�me olmayan alanlar i�in `NULL` de�erlerini g�sterir.

- **Ama�:**
  Bu sorgular, farkl� join t�rlerini ve ili�kisel tablo yap�lar� temelinde kapsaml� veri setlerinin nas�l getirilece�ini g�stermek i�in tasarlanm��t�r.

- **Olas� Kullan�m Alanlar�:**
  - **VER� - 1:** �ehirlerin �lkelerle e�le�tirilmesi ve e�le�tirilmeyen �ehirlerin tespiti i�in kullan��l�d�r.
  - **VER� - 2:** M��teri �deme aktivitelerini analiz etmek, �zellikle aktif olmayan m��terileri belirlemek i�in idealdir.
  - **VER� - 3:** Kiralama aktivitelerini ve ilgili m��terileri anlamak ya da m��terisi olmayan kiralamalar� tespit etmek i�in faydal�d�r.

---

Daha fazla bilgi veya geli�tirme i�in l�tfen ileti�ime ge�in!

