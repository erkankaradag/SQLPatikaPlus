# SQL Set Operasyonlarý - README

Bu dosya, verilen SQL sorgularýnýn nasýl çalýþtýðýný ve ne tür sonuçlar ürettiðini açýklamaktadýr. SQL'de **UNION**, **INTERSECT** ve **EXCEPT** gibi set operasyonlarý, farklý tablolar üzerinde veri karþýlaþtýrmasý yapmak için kullanýlýr. Aþaðýda, her bir sorgunun açýklamasý bulunmaktadýr:

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

### Açýklama:
Bu sorgu:
- **actor** tablosundaki **first_name** sütunundaki deðerlerle,
- **customer** tablosundaki **first_name** sütunundaki deðerleri birleþtirir.
- **UNION**, sonuç kümesinde yinelenen deðerleri (duplicate) otomatik olarak kaldýrýr ve yalnýzca benzersiz deðerleri döndürür.
- Sonuçlar alfabetik olarak sýralanýr (**ORDER BY first_name**).

### Kullaným:
Birden fazla tablodan benzersiz isimlerin birleþtirilmiþ listesini almak için kullanýlabilir.

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

### Açýklama:
Bu sorgu:
- **actor** tablosundaki **first_name** deðerleri ile,
- **customer** tablosundaki **first_name** deðerleri arasýnda kesiþimi bulur.
- Yalnýzca her iki tabloda da ortak olan **first_name** deðerlerini döndürür.
- Sonuçlar alfabetik olarak sýralanýr (**ORDER BY first_name**).

### Kullaným:
Her iki tabloda da ortak olan isimlerin listesini almak için kullanýlabilir.

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

### Açýklama:
Bu sorgu:
- **actor** tablosundaki **first_name** deðerlerini alýr,
- Ancak, **customer** tablosundaki **first_name** deðerlerini hariç tutar.
- Yalnýzca **actor** tablosunda bulunan ancak **customer** tablosunda bulunmayan isimleri döndürür.
- Sonuçlar alfabetik olarak sýralanýr (**ORDER BY first_name**).

### Kullaným:
Bir tabloda bulunan ancak diðerinde bulunmayan isimlerin listesini almak için kullanýlabilir.

---

## Özet:
1. **UNION**: Ýki tablodaki tüm benzersiz deðerleri birleþtirir.
2. **INTERSECT**: Ýki tabloda da ortak olan deðerleri döndürür.
3. **EXCEPT**: Bir tabloda bulunan ancak diðer tabloda bulunmayan deðerleri döndürür.

### Notlar:
- **ORDER BY** ifadesi, sonuçlarýn sýralý bir þekilde görüntülenmesini saðlar.
- Bu tür sorgular, büyük veri kümelerinde kullanýldýðýnda performansý artýrmak için indeksleme stratejileri ile desteklenmelidir.