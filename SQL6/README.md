# SQL Sorgu Dokümantasyonu İçin Readme

Bu belge, filmler ve ödemeler hakkında bilgi içeren varsayımsal bir veritabanını analiz etmek için tasarlanmış dört SQL sorgusunun genel bir özetini sunar.

---

## Sorgu 1: Ortalama Uzunluktan Daha Uzun Filmler

### **SQL Sorgusu**
```sql
SELECT COUNT(*) AS FilmCount
FROM film
WHERE length > (SELECT AVG(length) FROM film);
```

### **Açıklama**
- **Amaç:** Uzunluğu veritabanındaki tüm filmlerin ortalama uzunluğundan fazla olan filmlerin toplam sayısını hesaplar.
- **Adımlar:**
  1. Alt sorgu `SELECT AVG(length) FROM film` tüm filmlerin ortalama uzunluğunu hesaplar.
  2. Ana sorgu, uzunluğu bu ortalamadan büyük olan filmleri sayar.

### **Çıktı:**
- Koşulu karşılayan filmlerin sayısını temsil eden `FilmCount` sütununa sahip tek bir satır.

---

## Sorgu 2: Maksimum Kiralama Ücretine Sahip Filmler

### **SQL Sorgusu**
```sql
SELECT COUNT(*) AS FilmCount
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);
```

### **Açıklama**
- **Amaç:** Veritabanında en yüksek kiralama ücretine sahip filmlerin sayısını hesaplar.
- **Adımlar:**
  1. Alt sorgu `SELECT MAX(rental_rate) FROM film` en yüksek kiralama ücretini belirler.
  2. Ana sorgu, `rental_rate` değeri bu maksimum değere eşit olan filmleri sayar.

### **Çıktı:**
- Maksimum kiralama ücretine sahip filmlerin sayısını gösteren `FilmCount` sütununa sahip tek bir satır.

---

## Sorgu 3: Minimum Kiralama veya Değiştirme Maliyetli Filmler

### **SQL Sorgusu**
```sql
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
   OR replacement_cost = (SELECT MIN(replacement_cost) FROM film)
ORDER BY rental_rate, replacement_cost;
```

### **Açıklama**
- **Amaç:** Minimum kiralama ücretine veya minimum değiştirme maliyetine sahip olan filmleri getirir ve bunları kiralama ücreti ve değiştirme maliyetine göre sıralar.
- **Adımlar:**
  1. Alt sorgular `SELECT MIN(rental_rate) FROM film` ve `SELECT MIN(replacement_cost) FROM film` sırasıyla minimum kiralama ücretini ve değiştirme maliyetini belirler.
  2. Ana sorgu, bu koşullardan herhangi birine uyan filmleri getirir.
  3. Sonuçlar önce `rental_rate`, ardından `replacement_cost` sırasına göre sıralanır.

### **Çıktı:**
- Koşulları karşılayan ve uygun şekilde sıralanmış, `film` tablosundaki tüm sütunları içeren bir film listesi.

---

## Sorgu 4: En Fazla Ödeme Yapan Müşteriler

### **SQL Sorgusu**
```sql
SELECT customer_id, COUNT(*) AS num_of_payments
FROM payment
GROUP BY customer_id
ORDER BY num_of_payments DESC;
```

### **Açıklama**
- **Amaç:** En çok ödeme yapan müşterileri, yaptıkları ödeme sayısına göre azalan sırayla listeler.
- **Adımlar:**
  1. Sorgu, tüm ödemeleri `customer_id` sütununa göre gruplandırır.
  2. `COUNT(*)` fonksiyonu her müşteri için yapılan toplam ödeme sayısını hesaplar.
  3. `ORDER BY num_of_payments DESC` ile müşteriler ödeme sayısına göre azalan sırada sıralanır.

### **Çıktı:**
- Müşteri listesi, şu sütunlarla birlikte:
  - `customer_id`: Müşterinin benzersiz kimliği.
  - `num_of_payments`: Müşterinin yaptığı toplam ödeme sayısı.
- Ödeme sayısına göre azalan sırayla sıralanmıştır.

---

### **Genel Notlar:**
- `length`, `rental_rate`, `replacement_cost` ve `customer_id` gibi sütunlarda uygun indeksleme yapıldığından emin olun, böylece sorgu performansı optimize edilir.
- Bu sorguların, uygun şema tanımlarıyla birlikte `film` ve `payment` tablolarının var olduğunu varsaydığı kabul edilir.

---
