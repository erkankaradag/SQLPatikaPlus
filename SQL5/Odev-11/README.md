# SQL Set Operasyonlar� - README

Bu dosya, verilen SQL sorgular�n�n nas�l �al��t���n� ve ne t�r sonu�lar �retti�ini a��klamaktad�r. SQL'de **UNION**, **INTERSECT** ve **EXCEPT** gibi set operasyonlar�, farkl� tablolar �zerinde veri kar��la�t�rmas� yapmak i�in kullan�l�r. A�a��da, her bir sorgunun a��klamas� bulunmaktad�r:

---

## DATA - 1: UNION Operasyonu

```sql
SELECT first_name
FROM actor
UNION
SELECT first_name
FROM customer
ORDER BY first_name;
```

### A��klama:
Bu sorgu:
- **actor** tablosundaki **first_name** s�tunundaki de�erlerle,
- **customer** tablosundaki **first_name** s�tunundaki de�erleri birle�tirir.
- **UNION**, sonu� k�mesinde yinelenen de�erleri (duplicate) otomatik olarak kald�r�r ve yaln�zca benzersiz de�erleri d�nd�r�r.
- Sonu�lar alfabetik olarak s�ralan�r (**ORDER BY first_name**).

### Kullan�m:
Birden fazla tablodan benzersiz isimlerin birle�tirilmi� listesini almak i�in kullan�labilir.

---

## DATA - 2: INTERSECT Operasyonu

```sql
SELECT first_name
FROM actor
INTERSECT
SELECT first_name
FROM customer
ORDER BY first_name;
```

### A��klama:
Bu sorgu:
- **actor** tablosundaki **first_name** de�erleri ile,
- **customer** tablosundaki **first_name** de�erleri aras�nda kesi�imi bulur.
- Yaln�zca her iki tabloda da ortak olan **first_name** de�erlerini d�nd�r�r.
- Sonu�lar alfabetik olarak s�ralan�r (**ORDER BY first_name**).

### Kullan�m:
Her iki tabloda da ortak olan isimlerin listesini almak i�in kullan�labilir.

---

## DATA - 3: EXCEPT Operasyonu

```sql
SELECT first_name
FROM actor
EXCEPT
SELECT first_name
FROM customer
ORDER BY first_name;
```

### A��klama:
Bu sorgu:
- **actor** tablosundaki **first_name** de�erlerini al�r,
- Ancak, **customer** tablosundaki **first_name** de�erlerini hari� tutar.
- Yaln�zca **actor** tablosunda bulunan ancak **customer** tablosunda bulunmayan isimleri d�nd�r�r.
- Sonu�lar alfabetik olarak s�ralan�r (**ORDER BY first_name**).

### Kullan�m:
Bir tabloda bulunan ancak di�erinde bulunmayan isimlerin listesini almak i�in kullan�labilir.

---

## �zet:
1. **UNION**: �ki tablodaki t�m benzersiz de�erleri birle�tirir.
2. **INTERSECT**: �ki tabloda da ortak olan de�erleri d�nd�r�r.
3. **EXCEPT**: Bir tabloda bulunan ancak di�er tabloda bulunmayan de�erleri d�nd�r�r.

### Notlar:
- **ORDER BY** ifadesi, sonu�lar�n s�ral� bir �ekilde g�r�nt�lenmesini sa�lar.
- Bu t�r sorgular, b�y�k veri k�melerinde kullan�ld���nda performans� art�rmak i�in indeksleme stratejileri ile desteklenmelidir.