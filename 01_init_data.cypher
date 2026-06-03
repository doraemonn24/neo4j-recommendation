// ================================================
// FILE: 01_init_data.cypher
// DESC: Inisialisasi data dummy untuk sistem
//       rekomendasi produk e-commerce
// ================================================

// Bersihkan database
MATCH (n) DETACH DELETE n;

// Buat Node User
CREATE (alice:User {name: 'Alice'})
CREATE (bob:User {name: 'Bob'})
CREATE (charlie:User {name: 'Charlie'})

// Buat Node Product
CREATE (laptop:Product {name: 'Laptop'})
CREATE (mouse:Product {name: 'Mouse'})
CREATE (keyboard:Product {name: 'Keyboard'})
CREATE (monitor:Product {name: 'Monitor'})

// Buat Relasi PURCHASED
CREATE (alice)-[:PURCHASED]->(laptop)
CREATE (alice)-[:PURCHASED]->(mouse)
CREATE (bob)-[:PURCHASED]->(laptop)
CREATE (bob)-[:PURCHASED]->(mouse)
CREATE (bob)-[:PURCHASED]->(keyboard)
CREATE (charlie)-[:PURCHASED]->(monitor);
