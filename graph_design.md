# Desain Graph — Sistem Rekomendasi Produk

## Label Node

### User
| Property | Type   | Contoh  |
|----------|--------|---------|
| name     | String | "Alice" |

### Product
| Property | Type   | Contoh    |
|----------|--------|-----------|
| name     | String | "Laptop"  |

## Tipe Relasi

### PURCHASED
- **Arah:** `(User) → (Product)`
- **Makna:** User membeli Product

## Visualisasi Graph
```
(Alice) --PURCHASED--> (Laptop)
(Alice) --PURCHASED--> (Mouse)
(Bob)   --PURCHASED--> (Laptop)
(Bob)   --PURCHASED--> (Mouse)
(Bob)   --PURCHASED--> (Keyboard)  ← rekomendasi untuk Alice
(Charlie)--PURCHASED--> (Monitor)
```

## Logika Collaborative Filtering
1. Temukan user lain (Bob) yang membeli produk sama dengan Alice
2. Temukan produk yang dibeli Bob tapi belum dibeli Alice
3. Kembalikan produk tersebut sebagai rekomendasi
