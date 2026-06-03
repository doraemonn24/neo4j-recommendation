# Sistem Rekomendasi Produk dengan Neo4j
**Tugas 2 — Graph Traversal & Pattern Matching**

## Deskripsi
Sistem rekomendasi produk berbasis Collaborative Filtering menggunakan Neo4j Graph Database.

## Struktur Project
```
neo4j-recommendation/
├── README.md
├── cypher/
│   ├── 01_init_data.cypher       # Inisialisasi data dummy
│   ├── 02_verify_data.cypher     # Verifikasi data
│   ├── 03_recommendation.cypher  # Query rekomendasi utama
│   └── 04_bonus_ranking.cypher   # Query bonus dengan ranking
└── docs/
    └── graph_design.md           # Desain graph
```

## Cara Menjalankan

### 1. Jalankan Neo4j
```bash
# Windows PowerShell
$env:JAVA_HOME = "C:\Program Files\Java\jdk-21.0.11"
$env:Path = "$env:JAVA_HOME\bin;" + $env:Path
cd C:\neo4j-community-2026.05.0\bin
.\neo4j console
```

### 2. Buka Neo4j Browser
```
http://localhost:7474
```

### 3. Jalankan Query Secara Berurutan
1. `cypher/01_init_data.cypher` — buat data
2. `cypher/02_verify_data.cypher` — cek data
3. `cypher/03_recommendation.cypher` — rekomendasi
4. `cypher/04_bonus_ranking.cypher` — bonus ranking

## Desain Graph
- **Node:** `User` (name), `Product` (name)
- **Relasi:** `(User)-[:PURCHASED]->(Product)`

## Data Dummy
| User    | Produk yang Dibeli          |
|---------|-----------------------------|
| Alice   | Laptop, Mouse               |
| Bob     | Laptop, Mouse, Keyboard     |
| Charlie | Monitor                     |

## Hasil Rekomendasi
Query merekomendasikan **Keyboard** untuk Alice karena:
- Alice dan Bob sama-sama membeli Laptop & Mouse
- Bob juga membeli Keyboard
- Alice belum membeli Keyboard
