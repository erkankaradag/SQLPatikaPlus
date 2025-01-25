# README: SQL ��lemleri - Employee Tablosu

Bu dok�man, `employee` tablosu �zerinde ger�ekle�tirilen iki SQL i�lemini a��klar: birden fazla kayd�n g�ncellenmesi ve birden fazla kayd�n silinmesi.

## 1. G�ncelleme ��lemleri
`UPDATE` ifadeleri, belirli `id`lere sahip �al��anlar�n bilgilerini de�i�tirmek i�in kullan�l�r. A�a��daki sorgular �rnek olarak verilmi�tir:

```sql
UPDATE employee
SET name = 'Ahmet',
    birthdate = '2021-01-01',
    email = 'ahmet@ahmet.com'
WHERE id = 1;

UPDATE employee
SET name = 'Mehmet',
    birthdate = '2022-01-01',
    email = 'mehmet@mehmet.com'
WHERE id = 2;

UPDATE employee
SET name = 'Cumali',
    birthdate = '2023-01-01',
    email = 'cumali@cumali.com'
WHERE id = 3;

UPDATE employee
SET name = 'Z�nar',
    birthdate = '2024-01-01',
    email = 'zinar@zinar.com'
WHERE id = 4;

UPDATE employee
SET name = 'Ferhat',
    birthdate = '2025-01-01',
    email = 'ferhat@ferhat.com'
WHERE id = 5;
```

### A��klama:
- **`SET` K�sm�**: Her `UPDATE` ifadesi, bir �al��an�n `name`, `birthdate` ve `email` alanlar�n� g�nceller.
- **`WHERE` K�sm�**: Her bir sorgu, `id` de�eri belirli olan bir sat�r� hedef al�r.
- **Etkisi**: Her sorgu, belirtilen `id`ye sahip �al��an�n bilgilerini verilen de�erlerle g�nceller.

## 2. Silme ��lemi
`DELETE` ifadesi, `id` de�erine g�re birden fazla kayd� `employee` tablosundan silmek i�in kullan�l�r. A�a��daki sorgu �rne�i:

```sql
DELETE FROM employee
WHERE id IN (6, 7, 8, 9, 10);
```

### A��klama:
- **`WHERE id IN (...)`**: `id` de�eri 6, 7, 8, 9 veya 10 olan t�m sat�rlar� hedef al�r.
- **Etkisi**: `id` de�erleri 6, 7, 8, 9 ve 10 olan sat�rlar� tablodan siler.

## Notlar:
1. `UPDATE` ve `DELETE` ifadelerinde uygun `WHERE` ko�ullar� kullanarak istenmeyen veri de�i�ikliklerini veya silinmelerini �nleyin.
2. Veri de�i�tirme veya silme i�lemleri yapmadan �nce veritaban�n�n bir yede�ini alman�z �nerilir.
3. De�i�iklikleri do�rulamak i�in, destekleniyorsa, `RETURNING` ifadesini kullan�n (�r. `UPDATE` veya `DELETE` sonras� `RETURNING *`).

---

Daha fazla yard�m veya sorular�n�z i�in bizimle ileti�ime ge�ebilirsiniz.

