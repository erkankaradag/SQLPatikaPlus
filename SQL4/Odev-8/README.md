# README: SQL Ýþlemleri - Employee Tablosu

Bu doküman, `employee` tablosu üzerinde gerçekleþtirilen iki SQL iþlemini açýklar: birden fazla kaydýn güncellenmesi ve birden fazla kaydýn silinmesi.

## 1. Güncelleme Ýþlemleri
`UPDATE` ifadeleri, belirli `id`lere sahip çalýþanlarýn bilgilerini deðiþtirmek için kullanýlýr. Aþaðýdaki sorgular örnek olarak verilmiþtir:

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
SET name = 'Zýnar',
    birthdate = '2024-01-01',
    email = 'zinar@zinar.com'
WHERE id = 4;

UPDATE employee
SET name = 'Ferhat',
    birthdate = '2025-01-01',
    email = 'ferhat@ferhat.com'
WHERE id = 5;
```

### Açýklama:
- **`SET` Kýsmý**: Her `UPDATE` ifadesi, bir çalýþanýn `name`, `birthdate` ve `email` alanlarýný günceller.
- **`WHERE` Kýsmý**: Her bir sorgu, `id` deðeri belirli olan bir satýrý hedef alýr.
- **Etkisi**: Her sorgu, belirtilen `id`ye sahip çalýþanýn bilgilerini verilen deðerlerle günceller.

## 2. Silme Ýþlemi
`DELETE` ifadesi, `id` deðerine göre birden fazla kaydý `employee` tablosundan silmek için kullanýlýr. Aþaðýdaki sorgu örneði:

```sql
DELETE FROM employee
WHERE id IN (6, 7, 8, 9, 10);
```

### Açýklama:
- **`WHERE id IN (...)`**: `id` deðeri 6, 7, 8, 9 veya 10 olan tüm satýrlarý hedef alýr.
- **Etkisi**: `id` deðerleri 6, 7, 8, 9 ve 10 olan satýrlarý tablodan siler.

## Notlar:
1. `UPDATE` ve `DELETE` ifadelerinde uygun `WHERE` koþullarý kullanarak istenmeyen veri deðiþikliklerini veya silinmelerini önleyin.
2. Veri deðiþtirme veya silme iþlemleri yapmadan önce veritabanýnýn bir yedeðini almanýz önerilir.
3. Deðiþiklikleri doðrulamak için, destekleniyorsa, `RETURNING` ifadesini kullanýn (ör. `UPDATE` veya `DELETE` sonrasý `RETURNING *`).

---

Daha fazla yardým veya sorularýnýz için bizimle iletiþime geçebilirsiniz.

