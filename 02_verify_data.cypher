// ================================================
// FILE: 02_verify_data.cypher
// DESC: Verifikasi data yang sudah diinput
// ================================================

// Lihat semua node dan relasi (tampilan Graph)
MATCH (n) RETURN n;

// Lihat semua pembelian per user
MATCH (u:User)-[:PURCHASED]->(p:Product)
RETURN u.name AS user, collect(p.name) AS products
ORDER BY u.name;
